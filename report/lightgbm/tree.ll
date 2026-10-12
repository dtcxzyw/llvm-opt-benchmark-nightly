Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN8LightGBM4Tree16SplitCategoricalEiiiPKjiS2_iddiiddfNS_11MissingTypeE:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !88
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !88
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  store ptr %i.cs, ptr %i.bg, align 8, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.n:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.bf, align 8, !tbaa !84 ; 4 uses
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775804
  br i1 %i.cx, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #42
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.cy = ashr exact i64 %i.cw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 2305843009213693951)
  %i.dc = select i1 %i.da, i64 2305843009213693951, i64 %i.db ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #43 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  %i.dg = load i32, ptr %i.cq, align 4, !tbaa !88
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !88
  %i.dh = icmp sgt i64 %i.cw, 0
  br i1 %i.dh, label %bb.p, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.dj = load ptr, ptr %i.bh, align 8, !tbaa !85
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dl) #41
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.de, ptr %i.bf, align 8, !tbaa !84
  store ptr %i.di, ptr %i.bg, align 8, !tbaa !119
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dc ; 2 uses
  store ptr %i.dm, ptr %i.bh, align 8, !tbaa !85
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.dn = phi ptr [ %i.co, %bb.m ], [ %i.dm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.do = phi ptr [ %i.cs, %bb.m ], [ %i.di, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !471

._crit_edge51:                                    ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit44, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit36
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !117 ; 2 uses
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.a, align 4, !tbaa !117
  ret i32 %i.dp

bb.r:                                             ; preds = %.lr.ph50, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit44
  %i.dr = phi ptr [ %.pre60, %.lr.ph50 ], [ %i.eq, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit44 ] ; 3 uses
  %i.ds = phi ptr [ %.pre59, %.lr.ph50 ], [ %i.er, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit44 ] ; 3 uses
  %indvars.iv53 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next54, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit44 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv53 ; 2 uses
  %.not.i37 = icmp eq ptr %i.ds, %i.dr
  br i1 %.not.i37, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !88
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  store ptr %i.dv, ptr %i.cm, align 8, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit44

bb.t:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %i.cl, align 8, !tbaa !84 ; 4 uses
  %i.dx = ptrtoint ptr %i.dr to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 5 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775804
  br i1 %i.ea, label %bb.u, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i38

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #42
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i38: ; preds = %bb.t
  %i.eb = ashr exact i64 %i.dz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i39, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 2305843009213693951)
  %i.ef = select i1 %i.ed, i64 2305843009213693951, i64 %i.ee ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.ef, 0
  tail call void @llvm.assume(i1 %.not.i.i.i40)
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #43 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.dz ; 2 uses
  %i.ej = load i32, ptr %i.dt, align 4, !tbaa !88
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !88
  %i.ek = icmp sgt i64 %i.dz, 0
  br i1 %i.ek, label %bb.v, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i41

bb.v:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i38
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr align 4 %i.dw, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i41

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i41: ; preds = %bb.v, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  %.not.i17.i.i42 = icmp eq ptr %i.dw, null
  br i1 %.not.i17.i.i42, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i43, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i41
  %i.em = load ptr, ptr %i.cn, align 8, !tbaa !85
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.en, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eo) #41
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i43

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i43: ; preds = %bb.w, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i41
  store ptr %i.eh, ptr %i.cl, align 8, !tbaa !84
  store ptr %i.el, ptr %i.cm, align 8, !tbaa !119
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ef ; 2 uses
  store ptr %i.ep, ptr %i.cn, align 8, !tbaa !85
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit44

_ZNSt6vectorIjSaIjEE9push_backERKj.exit44:        ; preds = %bb.s, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i43
  %i.eq = phi ptr [ %i.dr, %bb.s ], [ %i.ep, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i43 ]
  %i.er = phi ptr [ %i.dv, %bb.s ], [ %i.el, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i43 ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge51, label %bb.r, !llvm.loop !472
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM4Tree20AddPredictionToScoreEPKNS_7DatasetEiPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readonly captures(none) %4) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !88     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.f, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !88
  %i.h = load i32, ptr %0, align 4, !tbaa !88     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !88
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !88 ; 2 uses
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.i
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 4 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !89     ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.n = sext i32 %.promoted17 to i64             ; 4 uses
  %i.o = sext i32 %i.m to i64                     ; 4 uses
  %i.p = shl nsw i64 %i.n, 3                      ; 2 uses
  %i.q = shl nsw i64 %i.o, 3
  %scevgep32 = getelementptr i8, ptr %i.k, i64 8
  %i.r = getelementptr i8, ptr %i.l, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %i.l, i64 %i.p
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.n, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.u = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.ao, %.loopexit ] ; 2 uses
  %5 = sext i32 %i.u to i64                       ; 3 uses
  %6 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %5)
  %7 = mul i64 %indvar, %i.o
  %8 = add i64 %7, %i.n
  %reass.sub = sub i64 %6, %8
  %i.v = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.w = mul i64 %indvar, %i.o
  %i.x = add i64 %i.w, %i.n
  %i.y = mul i64 %i.q, %indvar                    ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.s, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.y
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %5)
  %i.z = sub i64 %smax, %i.x
  %i.aa = shl i64 %i.z, 3
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.aa
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %i.k, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.ab = add i64 %indvars.iv, %n.vec
  %i.ac = load double, ptr %i.k, align 8, !tbaa !118, !alias.scope !478
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !118, !alias.scope !479, !noalias !478
  %wide.load33 = load <2 x double>, ptr %i.af, align 8, !tbaa !118, !alias.scope !479, !noalias !478
  %i.ag = fadd <2 x double> %broadcast.splat, %wide.load
  %i.ah = fadd <2 x double> %broadcast.splat, %wide.load33
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !118, !alias.scope !479, !noalias !478
  store <2 x double> %i.ah, ptr %i.af, align 8, !tbaa !118, !alias.scope !479, !noalias !478
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !476

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aj = load double, ptr %i.k, align 8, !tbaa !118
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv22 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !118
  %i.am = fadd double %i.aj, %i.al
  store double %i.am, ptr %i.ak, align 8, !tbaa !118
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %5
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !477

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.o    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.an = add nsw i32 %i.m, %i.u
  %i.ao = call i32 @llvm.smin.i32(i32 %i.an, i32 %i.f) ; 3 uses
  %.not = icmp slt i32 %i.ao, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ao, %._crit_edge ], [ %i.i, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !210 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %0, ptr %i.a, align 4, !tbaa !88
  store i32 %1, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.f = sub nsw i32 %1, %0                       ; 2 uses
  %i.g = tail call i32 @OMP_NUM_THREADS()
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = add i32 %i.h, %2
  %i.j = sdiv i32 %i.i, %2
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !88
  %i.k = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.k, label %bb.b, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sroa.speculated.i.i, %i.h
  %i.m = sdiv i32 %i.l, %.sroa.speculated.i.i
  %i.n = add nsw i32 %i.m, 31
  %i.o = sdiv i32 %i.n, 32
  %i.p = shl nsw i32 %i.o, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i32 [ %i.p, %bb.b ], [ %i.f, %bb.a ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.q = invoke i32 @OMP_NUM_THREADS()
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.q)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %3, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.r = load ptr, ptr %5, align 8, !tbaa !212    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN21ThreadExceptionHelperD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.c
  store ptr %i.r, ptr %4, align 8, !tbaa !212
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %4) #42
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !212
  %.not.i3.i = icmp eq ptr %i.t, null
  br i1 %.not.i3.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %.body

_ZN21ThreadExceptionHelperD2Ev.exit:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = load i32, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i32 %i.u

bb.g:                                             ; preds = %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %bb.e ]
  call void @_ZN21ThreadExceptionHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IPKfSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPKfSaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIPKfSaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKfSaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #41
  br label %_ZSt8_DestroyISt6vectorIPKfSaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIPKfSaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIPKfSaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !146
  br label %_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIPKfSaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #41
  br label %_ZNSt12_Vector_baseISt6vectorIPKfSaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIPKfSaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKfSaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(48) %7) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM4Tree9ShrinkageEd.omp_outlined:bb.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.g = add nsw i32 %i.f, -2                     ; 4 uses
  %i.h = icmp sgt i32 %i.f, 1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !88
  %i.i = load i32, ptr %0, align 4, !tbaa !88     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1024)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !88
  %.promoted30 = load i32, ptr %i.a, align 4, !tbaa !88 ; 3 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 4 uses
  %.not31 = icmp sgt i32 %.promoted30, %i.j
  br i1 %.not31, label %bb.d, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 548
  %i.p = load i8, ptr %i.o, align 4, !tbaa !114, !range !115, !noundef !116
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i32, ptr %i.c, align 4, !tbaa !88   ; 4 uses
  br i1 %i.q, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = sext i32 %.promoted30 to i64             ; 4 uses
  %i.t = sext i32 %i.r to i64                     ; 4 uses
  %i.u = shl nsw i64 %i.s, 3                      ; 2 uses
  %i.v = shl nsw i64 %i.t, 3
  %i.w = add nsw i64 %i.u, 8
  %scevgep68 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.ab = sext i32 %.promoted30 to i64
  %i.ac = sext i32 %i.r to i64
  %scevgep81 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader.us

.preheader.us:                                    ; preds = %.split.us.us, %.preheader.lr.ph.split.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.split.us.us ], [ %i.ab, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.ad = phi i32 [ %i.cv, %.split.us.us ], [ %i.j, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.us.us, %.preheader.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.loopexit.us.us ], [ %indvars.iv44, %.preheader.us ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv46 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !118
  %i.ah = load double, ptr %3, align 8, !tbaa !118
  %i.ai = fmul double %i.ag, %i.ah                ; 2 uses
  %i.aj = call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp ole double %i.aj, f0x38AA95A5C0000000
  %i.al = select i1 %i.ak, double 0.000000e+00, double %i.ai
  store double %i.al, ptr %i.af, align 8, !tbaa !118
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv46 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !118
  %i.ao = load double, ptr %3, align 8, !tbaa !118
  %i.ap = fmul double %i.an, %i.ao                ; 2 uses
  %i.aq = call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp ole double %i.aq, f0x38AA95A5C0000000
  %i.as = select i1 %i.ar, double 0.000000e+00, double %i.ap
  store double %i.as, ptr %i.am, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv46 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !118
  %i.av = load double, ptr %3, align 8, !tbaa !118
  %i.aw = fmul double %i.au, %i.av                ; 2 uses
  %i.ax = call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ole double %i.ax, f0x38AA95A5C0000000
  %i.az = select i1 %i.ay, double 0.000000e+00, double %i.aw
  store double %i.az, ptr %i.at, align 8, !tbaa !118
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv46 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !196 ; 3 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 7 uses
  %.not34 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not34, label %.loopexit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.c
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = ashr exact i64 %i.bg, 3                 ; 5 uses
  %min.iters.check86 = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check86, label %.lr.ph.us.us.preheader99, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.us.us.preheader
  %bound082 = icmp ult ptr %i.bd, %scevgep81
  %bound183 = icmp ult ptr %3, %i.bc
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %.lr.ph.us.us.preheader99, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck79
  %n.vec88 = and i64 %i.bh, -4                    ; 3 uses
  %i.bi = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1396
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index90 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load91 = load <2 x double>, ptr %i.bj, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  %wide.load92 = load <2 x double>, ptr %i.bk, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  %i.bl = fmul <2 x double> %wide.load91, %broadcast.splat94 ; 2 uses
  %i.bm = fmul <2 x double> %wide.load92, %broadcast.splat94 ; 2 uses
  %i.bn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bl)
  %i.bo = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bm)
  %i.bp = fcmp ole <2 x double> %i.bn, splat (double f0x38AA95A5C0000000)
  %i.bq = fcmp ole <2 x double> %i.bo, splat (double f0x38AA95A5C0000000)
  %i.br = select <2 x i1> %i.bp, <2 x double> zeroinitializer, <2 x double> %i.bl
  %i.bs = select <2 x i1> %i.bq, <2 x double> zeroinitializer, <2 x double> %i.bm
  store <2 x double> %i.br, ptr %i.bj, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  store <2 x double> %i.bs, ptr %i.bk, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bt, label %middle.block96, label %vector.body89, !llvm.loop !1388

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.bh, %n.vec88
  br i1 %cmp.n97, label %.loopexit.us.us, label %.lr.ph.us.us.preheader99

.lr.ph.us.us.preheader99:                         ; preds = %vector.memcheck79, %.lr.ph.us.us.preheader, %middle.block96
  %.028.us.us.ph = phi i64 [ 0, %vector.memcheck79 ], [ 0, %.lr.ph.us.us.preheader ], [ %n.vec88, %middle.block96 ] ; 4 uses
  %.neg = or disjoint i64 %.028.us.us.ph, 1
  %i.bu = and i64 %i.bg, 8
  %lcmp.mod.not = icmp eq i64 %i.bu, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader99
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.028.us.us.ph ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !118
  %i.bx = load double, ptr %3, align 8, !tbaa !118
  %i.by = fmul double %i.bw, %i.bx                ; 2 uses
  %i.bz = call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ole double %i.bz, f0x38AA95A5C0000000
  %i.cb = select i1 %i.ca, double 0.000000e+00, double %i.by
  store double %i.cb, ptr %i.bv, align 8, !tbaa !118
  %i.cc = or disjoint i64 %.028.us.us.ph, 1
  br label %.lr.ph.us.us.prol.loopexit

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader99
  %.028.us.us.unr = phi i64 [ %.028.us.us.ph, %.lr.ph.us.us.preheader99 ], [ %i.cc, %.lr.ph.us.us.prol ]
  %i.cd = icmp eq i64 %i.bh, %.neg
  br i1 %i.cd, label %.loopexit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.028.us.us = phi i64 [ %i.ct, %.lr.ph.us.us ], [ %.028.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.028.us.us ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !118
  %i.cg = load double, ptr %3, align 8, !tbaa !118
  %i.ch = fmul double %i.cf, %i.cg                ; 2 uses
  %i.ci = call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ole double %i.ci, f0x38AA95A5C0000000
  %i.ck = select i1 %i.cj, double 0.000000e+00, double %i.ch
  store double %i.ck, ptr %i.ce, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.028.us.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !118
  %i.co = load double, ptr %3, align 8, !tbaa !118
  %i.cp = fmul double %i.cn, %i.co                ; 2 uses
  %i.cq = call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ole double %i.cq, f0x38AA95A5C0000000
  %i.cs = select i1 %i.cr, double 0.000000e+00, double %i.cp
  store double %i.cs, ptr %i.cm, align 8, !tbaa !118
  %i.ct = add nuw i64 %.028.us.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ct, %i.bh
  br i1 %exitcond.not.1, label %.loopexit.us.us, label %.lr.ph.us.us, !llvm.loop !1389

.loopexit.us.us:                                  ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block96, %bb.c
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1
  %.not27.us.us.not = icmp slt i64 %indvars.iv46, %i.ae
  br i1 %.not27.us.us.not, label %bb.c, label %.split.us.us

.split.us.us:                                     ; preds = %.loopexit.us.us
  %indvars.iv.next45 = add i64 %indvars.iv44, %i.ac ; 2 uses
  %indvars50 = trunc i64 %indvars.iv.next45 to i32 ; 2 uses
  %i.cu = add nsw i32 %i.r, %i.ad
  %i.cv = call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.g) ; 3 uses
  %.not.us = icmp slt i32 %i.cv, %indvars50
  br i1 %.not.us, label %._crit_edge, label %.preheader.us

.preheader:                                       ; preds = %.preheader.preheader, %.split
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.split ] ; 4 uses
  %indvars.iv = phi i64 [ %i.s, %.preheader.preheader ], [ %indvars.iv.next, %.split ] ; 7 uses
  %i.cw = phi i32 [ %i.j, %.preheader.preheader ], [ %i.ei, %.split ] ; 2 uses
  %4 = sext i32 %i.cw to i64                      ; 3 uses
  %5 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %4)
  %6 = mul i64 %indvar, %i.t
  %7 = add i64 %6, %i.s
  %reass.sub = sub i64 %5, %7
  %i.cx = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.cx, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.cy = mul i64 %i.v, %indvar                   ; 2 uses
  %i.cz = add i64 %i.w, %i.cy                     ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.n, i64 %i.cz
  %i.da = add i64 %i.u, %i.cy                     ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.n, i64 %i.da ; 2 uses
  %i.db = mul i64 %indvar, %i.t
  %i.dc = add i64 %i.db, %i.s
  %scevgep63 = getelementptr i8, ptr %i.l, i64 %i.cz
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.da ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %4)
  %i.dd = sub i64 %smax, %i.dc
  %i.de = shl i64 %i.dd, 3                        ; 2 uses
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.de ; 2 uses
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.de ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %scevgep65, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  %bound069 = icmp ult ptr %scevgep, %scevgep68
  %bound170 = icmp ult ptr %3, %scevgep64
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict, %found.conflict71
  %bound072 = icmp ult ptr %scevgep65, %scevgep68
  %bound173 = icmp ult ptr %3, %scevgep67
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %conflict.rdx, %found.conflict74
  br i1 %conflict.rdx75, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, -2                      ; 3 uses
  %i.df = add i64 %indvars.iv, %n.vec
  %i.dg = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1398 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = add i64 %indvars.iv, %index             ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dh ; 2 uses
  %wide.load = load <2 x double>, ptr %i.di, align 8, !tbaa !118, !alias.scope !1399, !noalias !1400
  %i.dj = fmul <2 x double> %wide.load, %broadcast.splat ; 2 uses
  %i.dk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dj)
  %i.dl = fcmp ole <2 x double> %i.dk, splat (double f0x38AA95A5C0000000)
  %i.dm = select <2 x i1> %i.dl, <2 x double> zeroinitializer, <2 x double> %i.dj
  store <2 x double> %i.dm, ptr %i.di, align 8, !tbaa !118, !alias.scope !1399, !noalias !1400
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dh ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.dn, align 8, !tbaa !118, !alias.scope !1401, !noalias !1398
  %i.do = fmul <2 x double> %wide.load76, %broadcast.splat78 ; 2 uses
  %i.dp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.do)
  %i.dq = fcmp ole <2 x double> %i.dp, splat (double f0x38AA95A5C0000000)
  %i.dr = select <2 x i1> %i.dq, <2 x double> zeroinitializer, <2 x double> %i.do
  store <2 x double> %i.dr, ptr %i.dn, align 8, !tbaa !118, !alias.scope !1401, !noalias !1398
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !1394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.df, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %scalar.ph ], [ %indvars.iv40.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv40 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !118
  %i.dv = load double, ptr %3, align 8, !tbaa !118
  %i.dw = fmul double %i.du, %i.dv                ; 2 uses
  %i.dx = call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp ole double %i.dx, f0x38AA95A5C0000000
  %i.dz = select i1 %i.dy, double 0.000000e+00, double %i.dw
  store double %i.dz, ptr %i.dt, align 8, !tbaa !118
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !118
  %i.ec = load double, ptr %3, align 8, !tbaa !118
  %i.ed = fmul double %i.eb, %i.ec                ; 2 uses
  %i.ee = call double @llvm.fabs.f64(double %i.ed)
  %i.ef = fcmp ole double %i.ee, f0x38AA95A5C0000000
  %i.eg = select i1 %i.ef, double 0.000000e+00, double %i.ed
  store double %i.eg, ptr %i.ea, align 8, !tbaa !118
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1
  %.not27.not = icmp slt i64 %indvars.iv40, %4
  br i1 %.not27.not, label %scalar.ph, label %.split, !llvm.loop !1395

.split:                                           ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.t    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.eh = add nsw i32 %i.r, %i.cw
  %i.ei = call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.ei, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.split, %.split.us.us
  %.us-phi = phi i32 [ %indvars50, %.split.us.us ], [ %indvars, %.split ]
  %.us-phi33 = phi i32 [ %i.cv, %.split.us.us ], [ %i.ei, %.split ]
  store i32 %.us-phi, ptr %i.a, align 4, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %.us-phi33, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM4Tree7AddBiasEd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.g = add nsw i32 %i.f, -2                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !88
  %i.i = load i32, ptr %0, align 4, !tbaa !88     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1024)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !88
  %.promoted19 = load i32, ptr %i.a, align 4, !tbaa !88 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not20 = icmp sgt i32 %.promoted19, %i.j
  br i1 %.not20, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 4 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.p = sext i32 %.promoted19 to i64             ; 4 uses
  %i.q = sext i32 %i.o to i64                     ; 4 uses
  %i.r = shl nsw i64 %i.p, 3                      ; 2 uses
  %i.s = shl nsw i64 %i.q, 3
  %i.t = add nsw i64 %i.r, 8
  %scevgep37 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.p, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.u = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bg, %.loopexit ] ; 2 uses
  %4 = sext i32 %i.u to i64                       ; 3 uses
  %5 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %4)
  %6 = mul i64 %indvar, %i.q
  %7 = add i64 %6, %i.p
  %reass.sub = sub i64 %5, %7
  %i.v = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.w = mul i64 %i.s, %indvar                    ; 2 uses
  %i.x = add i64 %i.t, %i.w                       ; 2 uses
  %scevgep35 = getelementptr i8, ptr %i.n, i64 %i.x
  %i.y = add i64 %i.r, %i.w                       ; 2 uses
  %scevgep34 = getelementptr i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.z = mul i64 %indvar, %i.q
  %i.aa = add i64 %i.z, %i.p
  %scevgep32 = getelementptr i8, ptr %i.l, i64 %i.x
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.y ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %4)
  %i.ab = sub i64 %smax, %i.aa
  %i.ac = shl i64 %i.ab, 3                        ; 2 uses
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.ac ; 2 uses
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.ac ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep36
  %bound1 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %scevgep, %scevgep37
  %bound139 = icmp ult ptr %3, %scevgep33
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %scevgep34, %scevgep37
  %bound142 = icmp ult ptr %3, %scevgep36
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -2                       ; 3 uses
  %i.ad = add i64 %indvars.iv, %n.vec
  %i.ae = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1408 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat47 = shufflevector <2 x double> %broadcast.splatinsert46, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %indvars.iv, %index             ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.af ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !118, !alias.scope !1409, !noalias !1410
  %i.ah = fadd <2 x double> %wide.load, %broadcast.splat ; 2 uses
  %i.ai = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ah)
  %i.aj = fcmp ole <2 x double> %i.ai, splat (double f0x38AA95A5C0000000)
  %i.ak = select <2 x i1> %i.aj, <2 x double> zeroinitializer, <2 x double> %i.ah
  store <2 x double> %i.ak, ptr %i.ag, align 8, !tbaa !118, !alias.scope !1409, !noalias !1410
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.af ; 2 uses
  %wide.load45 = load <2 x double>, ptr %i.al, align 8, !tbaa !118, !alias.scope !1411, !noalias !1408
  %i.am = fadd <2 x double> %wide.load45, %broadcast.splat47 ; 2 uses
  %i.an = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.am)
  %i.ao = fcmp ole <2 x double> %i.an, splat (double f0x38AA95A5C0000000)
  %i.ap = select <2 x i1> %i.ao, <2 x double> zeroinitializer, <2 x double> %i.am
  store <2 x double> %i.ap, ptr %i.al, align 8, !tbaa !118, !alias.scope !1411, !noalias !1408
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv24.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %scalar.ph ], [ %indvars.iv24.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv24 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !118
  %i.at = load double, ptr %3, align 8, !tbaa !118
  %i.au = fadd double %i.as, %i.at                ; 2 uses
  %i.av = call double @llvm.fabs.f64(double %i.au)
  %i.aw = fcmp ole double %i.av, f0x38AA95A5C0000000
  %i.ax = select i1 %i.aw, double 0.000000e+00, double %i.au
  store double %i.ax, ptr %i.ar, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv24 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !118
  %i.ba = load double, ptr %3, align 8, !tbaa !118
  %i.bb = fadd double %i.az, %i.ba                ; 2 uses
  %i.bc = call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp ole double %i.bc, f0x38AA95A5C0000000
  %i.be = select i1 %i.bd, double 0.000000e+00, double %i.bb
  store double %i.be, ptr %i.ay, align 8, !tbaa !118
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1
  %.not17.not = icmp slt i64 %indvars.iv24, %4
  br i1 %.not17.not, label %scalar.ph, label %.loopexit, !llvm.loop !1407

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.q    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.bf = add nsw i32 %i.o, %i.u
  %i.bg = call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.bg, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.bg, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM4Tree7AddBiasEd.omp_outlined.190(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.g = add nsw i32 %i.f, -2                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !88
  %i.i = load i32, ptr %0, align 4, !tbaa !88     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1024)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !88
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !88 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.j
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.n = sext i32 %.promoted17 to i64             ; 4 uses
  %i.o = sext i32 %i.m to i64                     ; 4 uses
  %i.p = shl nsw i64 %i.n, 3                      ; 2 uses
  %i.q = shl nsw i64 %i.o, 3
  %scevgep32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr i8, ptr %i.l, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %i.l, i64 %i.p
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.n, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.u = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ax, %.loopexit ] ; 2 uses
  %4 = sext i32 %i.u to i64                       ; 3 uses
  %5 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %4)
  %6 = mul i64 %indvar, %i.o
  %7 = add i64 %6, %i.n
  %reass.sub = sub i64 %5, %7
  %i.v = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.w = mul i64 %indvar, %i.o
  %i.x = add i64 %i.w, %i.n
  %i.y = mul i64 %i.q, %indvar                    ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.s, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.y
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %4)
  %i.z = sub i64 %smax, %i.x
  %i.aa = shl i64 %i.z, 3
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.aa
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %3, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.ab = add i64 %indvars.iv, %n.vec
  %i.ac = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1417
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  %wide.load33 = load <2 x double>, ptr %i.af, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  %i.ag = fadd <2 x double> %wide.load, %broadcast.splat ; 2 uses
  %i.ah = fadd <2 x double> %wide.load33, %broadcast.splat ; 2 uses
  %i.ai = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ag)
  %i.aj = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ah)
  %i.ak = fcmp ole <2 x double> %i.ai, splat (double f0x38AA95A5C0000000)
  %i.al = fcmp ole <2 x double> %i.aj, splat (double f0x38AA95A5C0000000)
  %i.am = select <2 x i1> %i.ak, <2 x double> zeroinitializer, <2 x double> %i.ag
  %i.an = select <2 x i1> %i.al, <2 x double> zeroinitializer, <2 x double> %i.ah
  store <2 x double> %i.am, ptr %i.ae, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  store <2 x double> %i.an, ptr %i.af, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv22 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !118
  %i.ar = load double, ptr %3, align 8, !tbaa !118
  %i.as = fadd double %i.aq, %i.ar                ; 2 uses
  %i.at = call double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp ole double %i.at, f0x38AA95A5C0000000
  %i.av = select i1 %i.au, double 0.000000e+00, double %i.as
  store double %i.av, ptr %i.ap, align 8, !tbaa !118
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %4
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !1416

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.o    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.aw = add nsw i32 %i.m, %i.u
  %i.ax = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.ax, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ax, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #38 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind }
attributes #33 = { inlinehint mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { builtin nounwind }
attributes #42 = { noreturn }
attributes #43 = { builtin allocsize(0) }
attributes #44 = { noreturn nounwind }
attributes #45 = { cold nounwind }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind willreturn memory(read) }
attributes #48 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!43, !44, !45, !46}
!llvm.ident = !{!47}
!llvm.errno.tbaa = !{!52}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{null}
!4 = distinct !{!4, !64}
!5 = distinct !{!5, !64}
!6 = distinct !{!6, !64}
!7 = distinct !{!7, !64}
!8 = distinct !{null, null}
!9 = distinct !{null, null, null}
!10 = distinct !{null, null, null}
!11 = distinct !{!11, !64}
!12 = distinct !{!12, !64}
!13 = distinct !{!13, !64}
!14 = distinct !{!14, !64}
!15 = distinct !{null, null}
!16 = distinct !{null, null, null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{!19, !64}
!20 = distinct !{!20, !64}
!21 = distinct !{!21, !64}
!22 = distinct !{null}
!23 = distinct !{!23, !64}
!24 = distinct !{null, null, null, null}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{null, null}
!28 = distinct !{null, null}
!29 = distinct !{!29, !64}
end_hunk_1
