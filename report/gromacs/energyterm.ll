Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/energyterm?download=true
inline.NumInlined: 325
inline.NumDeleted: 194
begin_hunk_0_@_ZN3gmx10EnergyTerm8addFrameEdliddd:bb.a
  %i.ae = add nsw i64 %.sroa.speculated.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 192153584101141162)
  %i.ah = select i1 %i.af, i64 192153584101141162, i64 %i.ag ; 3 uses
  %.not.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ai = mul nuw nsw i64 %i.ah, 48
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #17 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab ; 6 uses
  store double %1, ptr %i.ak, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %2, ptr %i.al, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store double %6, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %spec.select, ptr %i.an, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store double %.033, ptr %i.ao, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store double %5, ptr %i.ap, align 8, !tbaa !62
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !65, !alias.scope !66
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48
  %.not.i38.i = icmp eq ptr %i.y, null
  br i1 %.not.i38.i, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.av) #16
  br label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i, %bb.i
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !26
  store ptr %i.as, ptr %i.o, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.aw, ptr %i.q, align 8, !tbaa !27
  br label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit

_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.f, %bb.d
  %.134 = phi double [ %4, %bb.d ], [ %.033, %bb.f ], [ %.033, %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ] ; 2 uses
  %.1 = phi i32 [ %3, %bb.d ], [ %spec.select, %bb.f ], [ %spec.select, %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !68
  %i.bb = fadd double %5, %i.ba                   ; 3 uses
  store double %i.bb, ptr %i.az, align 8, !tbaa !68
  %i.bc = icmp sgt i64 %i.ay, 0
  br i1 %i.bc, label %bb.j, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit._crit_edge

_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit._crit_edge: ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !69
  %.pre35 = fadd double %.134, %.pre
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit
  %i.bd = uitofp nneg i64 %i.ay to double         ; 3 uses
  %i.be = sitofp i32 %.1 to double                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !69 ; 2 uses
  %i.bh = fdiv double %i.bg, %i.bd
  %i.bi = fadd double %.134, %i.bg                ; 2 uses
  %i.bj = fadd double %i.be, %i.bd                ; 2 uses
  %i.bk = fdiv double %i.bi, %i.bj
  %i.bl = fsub double %i.bh, %i.bk                ; 2 uses
  %i.bm = fmul double %i.bl, %i.bl
  %i.bn = fmul double %i.bj, %i.bd
  %i.bo = fdiv double %i.bn, %i.be
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double %i.bb) ; 2 uses
  store double %i.bp, ptr %i.az, align 8, !tbaa !68
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit._crit_edge, %bb.j
  %.pre-phi = phi double [ %.pre35, %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit._crit_edge ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bq = phi double [ %i.bb, %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit._crit_edge ], [ %i.bp, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %.pre-phi, ptr %i.br, align 8, !tbaa !69
  %i.bs = sext i32 %.1 to i64
  %i.bt = add nsw i64 %i.ay, %i.bs                ; 3 uses
  store i64 %i.bt, ptr %i.ax, align 8, !tbaa !67
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = uitofp nneg i64 %i.bt to double
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %.pre-phi, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fdiv <2 x double> %i.by, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 1
  store double %i.cc, ptr %i.bw, align 8, !tbaa !70
  %i.cd = extractelement <2 x double> %i.cb, i64 0
  %i.ce = tail call double @sqrt(double noundef %i.cd) #14
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.ce, ptr %i.cf, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define ptr @_ZNK3gmx10EnergyTerm9findFrameEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(177) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 48                  ; 2 uses
  %i.n = icmp slt i64 %1, %i.m
  %i.o = icmp sgt i64 %1, -1
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i64 %1, %i.m
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !73
  %i.r = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %1, ptr noundef nonnull %i.a)
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48
  %i.y = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %i.x, ptr noundef nonnull %i.b)
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef %i.r, ptr noundef %i.y) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !73
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %i.aa) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.0 = phi ptr [ %i.p, %bb.c ], [ %i.ac, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare noundef ptr @_Z12gmx_step_strlPc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZNK3gmx10EnergyTerm16slopeOfLinearFitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(177) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %1 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %2 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 96
  br i1 %i.n, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.o = udiv exact i64 %i.m, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !36
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr null, i64 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.d

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !28   ; 3 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !26   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !36
  %.not46 = icmp eq ptr %i.p, %i.q
  br i1 %.not46, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 48
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr null, i64 noundef %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19_crit_edge36 unwind label %bb.e

._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19_crit_edge36: ; preds = %bb.c
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !34
  %.pre37 = load ptr, ptr %i.h, align 8, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19:          ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19_crit_edge36
  %3 = phi ptr [ %.pre37, %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19_crit_edge36 ], [ %i.p, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit ] ; 4 uses
  %4 = phi ptr [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19_crit_edge36 ], [ %i.q, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %.not32 = icmp eq ptr %4, %3
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19
  %i.v = ptrtoaddr ptr %3 to i64
  %i.w = ptrtoaddr ptr %4 to i64
  %i.x = load ptr, ptr %1, align 8, !tbaa !39     ; 3 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !39     ; 3 uses
  %i.z = add i64 %i.v, -48
  %i.aa = sub i64 %i.z, %i.w                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 384
  %i.ab = ptrtoaddr ptr %i.y to i64
  %i.ac = ptrtoaddr ptr %i.x to i64
  %i.ad = sub i64 %i.ac, %i.ab
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %.sroa.028.033.ph = phi ptr [ %4, %.lr.ph ], [ %i.ak, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ae = udiv i64 %i.aa, 48
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 8, i64 %i.ag
  %n.vec = sub nsw i64 %i.af, %i.ai               ; 3 uses
  %i.aj = mul i64 %n.vec, 48
  %i.ak = getelementptr i8, ptr %4, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %pointer.phi = phi ptr [ %4, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 48, i64 96, i64 144> ; 4 uses
  %step.add52 = getelementptr i8, <4 x ptr> %vector.gep, i64 192
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %vector.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !30
  %wide.masked.gather47 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %step.add52, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !30
  %i.al = fptrunc <4 x double> %wide.masked.gather to <4 x float>
  %i.am = fptrunc <4 x double> %wide.masked.gather47 to <4 x float>
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <4 x float> %i.al, ptr %i.an, align 4, !tbaa !36
  store <4 x float> %i.am, ptr %i.ao, align 4, !tbaa !36
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 16
  %wide.gep48 = getelementptr i8, <4 x ptr> %vector.gep, i64 208
  %wide.masked.gather49 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !31
  %wide.masked.gather50 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep48, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !31
  %i.ap = fptrunc <4 x double> %wide.masked.gather49 to <4 x float>
  %i.aq = fptrunc <4 x double> %wide.masked.gather50 to <4 x float>
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x float> %i.ap, ptr %i.ar, align 4, !tbaa !36
  store <4 x float> %i.aq, ptr %i.as, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 384
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %scalar.ph.preheader, label %vector.body, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %scalar.ph
  %i.au = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19
  %.011.lcssa = phi i32 [ 0, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit19 ], [ %i.au, %._crit_edge.loopexit ] ; 2 uses
  %i.av = zext nneg i32 %.011.lcssa to i64
  %i.aw = ptrtoint ptr %3 to i64
  %i.ax = ptrtoint ptr %4 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48
  %i.ba = icmp eq i64 %i.az, %i.av
  br i1 %i.ba, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.m

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.028.033 = phi ptr [ %i.bk, %scalar.ph ], [ %.sroa.028.033.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bd = load double, ptr %.sroa.028.033, align 8, !tbaa !30
  %i.be = fptrunc double %i.bd to float
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store float %i.be, ptr %i.bf, align 4, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.028.033, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !31
  %i.bi = fptrunc double %i.bh to float
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store float %i.bi, ptr %i.bj, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.028.033, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.bk, %3
  br i1 %.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !75

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx10EnergyTerm16slopeOfLinearFitEvENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 178) #15
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.bl = load ptr, ptr %1, align 8, !tbaa !39
  %i.bm = load ptr, ptr %2, align 8, !tbaa !39
  invoke void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef %.011.lcssa, ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.bo = load ptr, ptr %2, align 8, !tbaa !39    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.bu = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIfSaIfEED2Ev.exit22, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit22

_ZNSt6vectorIfSaIfEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ca = zext i32 %i.bn to i64
  %i.cb = or disjoint i64 %i.ca, 4294967296
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.d ], [ %i.bc, %bb.e ], [ %i.cd, %bb.l ], [ %i.cc, %bb.k ]
  %i.ce = load ptr, ptr %2, align 8, !tbaa !39    ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIfSaIfEED2Ev.exit24, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit24

_ZNSt6vectorIfSaIfEED2Ev.exit24:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ck = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIfSaIfEED2Ev.exit26, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit24
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit26

_ZNSt6vectorIfSaIfEED2Ev.exit26:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit24, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %bb.a, %_ZNSt6vectorIfSaIfEED2Ev.exit22
  %.sroa.2.0 = phi i64 [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit22 ], [ 0, %bb.a ]
  ret i64 %.sroa.2.0
}

declare void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZNK3gmx10EnergyTerm13errorEstimateEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(177) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  %.not49 = icmp ne i32 %1, 0
  %or.cond.not = and i1 %.not49, %i.c
  br i1 %or.cond.not, label %.lr.ph45, label %_ZNSt8optionalIfEC2IdTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIfT_EESt16is_constructibleIfJS5_EESt14is_convertibleIS5_fES3_ISt5__or_IJS8_IfJRKS_IS5_EEES8_IfJRSD_EES8_IfJOSE_EES8_IfJOSD_EESA_ISF_fESA_ISH_fESA_ISJ_fESA_ISL_fEEEEEEbE4typeELb1EEESL_.exit

.lr.ph45:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.02443 = phi double [ 0.000000e+00, %.lr.ph45 ], [ %.1, %._crit_edge ] ; 2 uses
  %.02542 = phi double [ 0.000000e+00, %.lr.ph45 ], [ %.126, %._crit_edge ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 48
  %i.m = mul nsw i64 %i.l, %indvars.iv
  %i.n = sdiv i64 %i.m, %i.f
  %i.o = tail call ptr @_ZNK3gmx10EnergyTerm9findFrameEl(ptr noundef nonnull align 8 dereferenceable(177) %0, i64 noundef %i.n) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 48
  %i.v = mul nsw i64 %i.u, %indvars.iv.next
  %i.w = sdiv i64 %i.v, %i.f
  %i.x = tail call ptr @_ZNK3gmx10EnergyTerm9findFrameEl(ptr noundef nonnull align 8 dereferenceable(177) %0, i64 noundef %i.w) ; 2 uses
  %i.y = icmp ult ptr %i.o, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.022.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %i.ag, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.z = icmp sgt i64 %.0.lcssa, 0                ; 2 uses
  %i.aa = uitofp nneg i64 %.0.lcssa to double
  %i.ab = fdiv double %.022.lcssa, %i.aa          ; 3 uses
  %i.ac = fadd double %.02542, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %.02443)
  %.126 = select i1 %i.z, double %i.ac, double %.02542 ; 2 uses
  %.1 = select i1 %i.z, double %i.ad, double %.02443 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge46, label %bb.b, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.040 = phi i64 [ %i.ak, %.lr.ph ], [ 0, %bb.b ]
  %.02239 = phi double [ %i.ag, %.lr.ph ], [ 0.000000e+00, %bb.b ]
  %.sroa.029.038 = phi ptr [ %i.al, %.lr.ph ], [ %i.o, %bb.b ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.029.038, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !33
  %i.ag = fadd double %.02239, %i.af              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.029.038, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %.040, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.029.038, i64 48 ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.x
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge46:                                    ; preds = %._crit_edge
  %i.an = uitofp i32 %1 to double                 ; 2 uses
  %i.ao = fdiv double %.1, %i.an
  %i.ap = fdiv double %.126, %i.an                ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = fsub double %i.ao, %i.aq
  %i.as = tail call double @sqrt(double noundef %i.ar) #14
  %i.at = fptrunc double %i.as to float
  %i.au = bitcast float %i.at to i32
  %i.av = zext i32 %i.au to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  br label %_ZNSt8optionalIfEC2IdTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIfT_EESt16is_constructibleIfJS5_EESt14is_convertibleIS5_fES3_ISt5__or_IJS8_IfJRKS_IS5_EEES8_IfJRSD_EES8_IfJOSE_EES8_IfJOSD_EESA_ISF_fESA_ISH_fESA_ISJ_fESA_ISL_fEEEEEEbE4typeELb1EEESL_.exit

_ZNSt8optionalIfEC2IdTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIfT_EESt16is_constructibleIfJS5_EESt14is_convertibleIS5_fES3_ISt5__or_IJS8_IfJRKS_IS5_EEES8_IfJRSD_EES8_IfJOSE_EES8_IfJOSD_EESA_ISF_fESA_ISH_fESA_ISJ_fESA_ISL_fEEEEEEbE4typeELb1EEESL_.exit: ; preds = %._crit_edge46, %bb.a
  %.sroa.2.0 = phi i64 [ 0, %bb.a ], [ %i.aw, %._crit_edge46 ]
  ret i64 %.sroa.2.0
}
end_hunk_0
