Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN8LightGBM10RankXENDCGD0Ev:bb.a
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !682
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM16RankingObjectiveE, i64 16), ptr %0, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN8LightGBM10RankXENDCGD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !683
  br label %_ZN8LightGBM10RankXENDCGD2Ev.exit

_ZN8LightGBM10RankXENDCGD2Ev.exit:                ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10RankXENDCG4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8LightGBM16RankingObjective4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !296  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !690
  %.pre7 = load ptr, ptr %i.g, align 8, !tbaa !314
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.i = phi ptr [ %.pre7, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 5 uses
  %i.j = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 3 uses
  %.06 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 2 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !156
  %i.l = add nsw i32 %i.k, %.06                   ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.l, ptr %i.j, align 4, !tbaa !316
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !690
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !313  ; 7 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
  unreachable

_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951)
  %i.w = select i1 %i.u, i64 2305843009213693951, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i32 %i.l, ptr %i.z, align 4, !tbaa !316
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = ptrtoaddr ptr %i.y to i64
  %i.ab = add i64 %i.o, -4
  %i.ac = sub i64 %i.ab, %i.p                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 28
  %i.af = sub i64 %i.p, %i.aa
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.aj ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.n, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.ak = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep15, align 4, !tbaa !204, !alias.scope !692
  %wide.load16 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !204, !alias.scope !692
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !204, !alias.scope !691
  store <4 x i32> %wide.load16, ptr %i.al, align 4, !tbaa !204, !alias.scope !691
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.preheader18:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.an = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !204, !alias.scope !692
  store i32 %i.an, ptr %.012.i.i.i.i.i, align 4, !tbaa !204, !alias.scope !691
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !688

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !314
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.at) #35
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  store ptr %i.y, ptr %i.d, align 8, !tbaa !313
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !690
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr %i.au, ptr %i.g, align 8, !tbaa !314
  %.pre8 = load i32, ptr %i.a, align 4, !tbaa !296
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.av = phi i32 [ %i.h, %bb.c ], [ %.pre8, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.aw = phi ptr [ %i.i, %bb.c ], [ %i.au, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ax = phi ptr [ %i.m, %bb.c ], [ %i.aq, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ay = add nuw nsw i32 %.06, 1                 ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.av
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !689
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM10RankXENDCG7GetNameEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.8
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM10RankXENDCG23GetGradientsForOneQueryEiiPKfPKdPfS5_(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %.preheader, label %.noexc

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph130.split, label %.loopexit

.lr.ph130.split:                                  ; preds = %.preheader
  store float 0.000000e+00, ptr %5, align 4, !tbaa !169
  store float 0.000000e+00, ptr %6, align 4, !tbaa !169
  br label %.loopexit

.noexc:                                           ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 10 uses
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 7 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #34 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !191
  %i.f = load double, ptr %4, align 8, !tbaa !191 ; 2 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = add nsw i32 %2, -2
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.noexc.new

.noexc.new:                                       ; preds = %.noexc
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.noexc.new
  %indvars.iv.i = phi i64 [ 1, %.noexc.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.02628.i = phi double [ %i.f, %.noexc.new ], [ %.sroa.speculated.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.noexc.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !191 ; 2 uses
  %i.l = fcmp olt double %i.k, %.02628.i
  %.sroa.speculated.i = select i1 %i.l, double %.02628.i, double %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !191 ; 2 uses
  %i.p = fcmp olt double %i.o, %.sroa.speculated.i
  %.sroa.speculated.i.1 = select i1 %i.p, double %.sroa.speculated.i, double %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !191 ; 2 uses
  %i.t = fcmp olt double %i.s, %.sroa.speculated.i.1
  %.sroa.speculated.i.2 = select i1 %i.t, double %.sroa.speculated.i.1, double %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !191 ; 2 uses
  %i.x = fcmp olt double %i.w, %.sroa.speculated.i.2
  %.sroa.speculated.i.3 = select i1 %i.x, double %.sroa.speculated.i.2, double %i.w ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph32.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !52

.lr.ph32.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph32.i.preheader.unr-lcssa, %.noexc
  %indvars.iv.i.epil.init = phi i64 [ 1, %.noexc ], [ %indvars.iv.next.i.3, %.lr.ph32.i.preheader.unr-lcssa ]
  %.02628.i.epil.init = phi double [ %i.f, %.noexc ], [ %.sroa.speculated.i.3, %.lr.ph32.i.preheader.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.02628.i.epil = phi double [ %.02628.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i.epil
  %i.z = load double, ptr %i.y, align 8, !tbaa !191 ; 2 uses
  %i.aa = fcmp olt double %i.z, %.02628.i.epil
  %.sroa.speculated.i.epil = select i1 %i.aa, double %.02628.i.epil, double %i.z ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph32.i.preheader, label %.lr.ph.i.epil, !llvm.loop !693

.lr.ph32.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph32.i.preheader.unr-lcssa
  %.sroa.speculated.i.lcssa = phi double [ %.sroa.speculated.i.3, %.lr.ph32.i.preheader.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ]
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.lr.ph32.i ], [ 0, %.lr.ph32.i.preheader ] ; 3 uses
  %.02230.i = phi double [ %i.ag, %.lr.ph32.i ], [ 0.000000e+00, %.lr.ph32.i.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv37.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !191
  %i.ad = fsub double %i.ac, %.sroa.speculated.i.lcssa
  %i.ae = tail call double @exp(double noundef %i.ad) #12 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv37.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !191
  %i.ag = fadd double %.02230.i, %i.ae            ; 3 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.c
  br i1 %exitcond41.not.i, label %vector.ph, label %.lr.ph32.i, !llvm.loop !53

vector.ph:                                        ; preds = %.lr.ph32.i
  %n.vec = and i64 %i.c, 2147483646               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !191
  %i.ai = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ai, ptr %i.ah, align 8, !tbaa !191
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %middle.block, %.lr.ph35.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.lr.ph35.i ], [ %n.vec, %middle.block ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv42.i ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !191
  %i.am = fdiv double %i.al, %i.ag
  store double %i.am, ptr %i.ak, align 8, !tbaa !191
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.c
  br i1 %exitcond46.not.i, label %_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit, label %.lr.ph35.i, !llvm.loop !695

_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit:         ; preds = %.lr.ph35.i, %middle.block
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #34
          to label %.lr.ph unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit82 ; 8 uses

.lr.ph:                                           ; preds = %_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !191
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.d, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = sext i32 %1 to i64
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !313
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %.promoted = load i32, ptr %i.as, align 4, !tbaa !316
  br label %bb.b

.lr.ph122.preheader:                              ; preds = %bb.b
  store i32 %i.ba, ptr %i.as, align 4, !tbaa !316
  %i.at = fcmp ogt double %i.bk, f0x3CD203AFA0000000
  %.sroa.speculated = select i1 %i.at, double %i.bk, double f0x3CD203AFA0000000
  %i.au = fdiv double 1.000000e+00, %.sroa.speculated
  %wide.trip.count139 = zext nneg i32 %2 to i64
  br label %.lr.ph122

_ZNSt6vectorIdSaIdEED2Ev.exit82:                  ; preds = %_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #35
  resume { ptr, i32 } %i.av

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.aw = phi i32 [ %.promoted, %.lr.ph ], [ %i.ba, %bb.b ]
  %.0111116 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bk, %bb.b ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !169
  %i.az = mul i32 %i.aw, 214013
  %i.ba = add i32 %i.az, 2531011                  ; 3 uses
  %i.bb = lshr i32 %i.ba, 16
  %i.bc = and i32 %i.bb, 32767
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x38000000
  %i.bf = fpext float %i.be to double
  %i.bg = fptosi float %i.ay to i32
  %i.bh = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef 2, i32 noundef %i.bg)
  %i.bi = fsub double %i.bh, %i.bf                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store double %i.bi, ptr %i.bj, align 8, !tbaa !191
  %i.bk = fadd double %.0111116, %i.bi            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.lr.ph122.preheader, label %bb.b, !llvm.loop !696

.lr.ph126.preheader:                              ; preds = %.lr.ph122
  %wide.trip.count145 = zext nneg i32 %2 to i64
  br label %.lr.ph126

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv136 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next137, %.lr.ph122 ] ; 4 uses
  %.066119 = phi double [ 0.000000e+00, %.lr.ph122.preheader ], [ %i.bv, %.lr.ph122 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv136 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !191
  %i.bn = fneg double %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv136
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !191 ; 2 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.au, double %i.bp) ; 2 uses
  %i.br = fptrunc double %i.bq to float
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv136
  store float %i.br, ptr %i.bs, align 4, !tbaa !169
  %i.bt = fsub double 1.000000e+00, %i.bp
  %i.bu = fdiv double %i.bq, %i.bt                ; 2 uses
  store double %i.bu, ptr %i.bl, align 8, !tbaa !191
  %i.bv = fadd double %.066119, %i.bu             ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.lr.ph126.preheader, label %.lr.ph122, !llvm.loop !697

.lr.ph129.preheader:                              ; preds = %.lr.ph126
  %wide.trip.count151 = zext nneg i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph129.preheader177, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129.preheader
  %i.bw = shl nuw nsw i64 %i.c, 2                 ; 2 uses
  %i.bx = getelementptr i8, ptr %5, i64 %i.bw
  %i.by = getelementptr i8, ptr %6, i64 %i.bw
  %bound0 = icmp ult ptr %5, %i.by
  %bound1 = icmp ult ptr %6, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph129.preheader177, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck
  %n.vec166 = and i64 %i.c, 2147483646            ; 3 uses
  %broadcast.splatinsert167 = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat168 = shufflevector <2 x double> %broadcast.splatinsert167, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph165
  %index170 = phi i64 [ 0, %vector.ph165 ], [ %index.next174, %vector.body169 ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index170
  %wide.load171.a = load <2 x double>, ptr %i.bz, align 8, !tbaa !191 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index170
  %wide.load172 = load <2 x double>, ptr %i.ca, align 8, !tbaa !191
  %i.cb = fsub <2 x double> %broadcast.splat168, %wide.load172
  %i.cc = fmul <2 x double> %wide.load171.a, %i.cb
  %i.cd = fptrunc <2 x double> %i.cc to <2 x float>
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index170 ; 2 uses
  %wide.load173 = load <2 x float>, ptr %i.ce, align 4, !tbaa !169, !alias.scope !704, !noalias !705
  %i.cf = fadd <2 x float> %wide.load173, %i.cd
  store <2 x float> %i.cf, ptr %i.ce, align 4, !tbaa !169, !alias.scope !704, !noalias !705
  %i.cg = fsub <2 x double> splat (double 1.000000e+00), %wide.load171.a
  %i.ch = fmul <2 x double> %wide.load171.a, %i.cg
  %i.ci = fptrunc <2 x double> %i.ch to <2 x float>
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index170
  store <2 x float> %i.ci, ptr %i.cj, align 4, !tbaa !169, !alias.scope !705
  %index.next174 = add nuw i64 %index170, 2       ; 2 uses
  %i.ck = icmp eq i64 %index.next174, %n.vec166
  br i1 %i.ck, label %middle.block175, label %vector.body169, !llvm.loop !701

middle.block175:                                  ; preds = %vector.body169
  %cmp.n176 = icmp eq i64 %n.vec166, %i.c
  br i1 %cmp.n176, label %_ZNSt6vectorIdSaIdEED2Ev.exit80, label %.lr.ph129.preheader177

.lr.ph129.preheader177:                           ; preds = %vector.memcheck, %.lr.ph129.preheader, %middle.block175
  %indvars.iv147.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph129.preheader ], [ %n.vec166, %middle.block175 ]
  br label %.lr.ph129

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %indvars.iv141 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next142, %.lr.ph126 ] ; 4 uses
  %.063124 = phi double [ 0.000000e+00, %.lr.ph126.preheader ], [ %i.cx, %.lr.ph126 ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv141
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !191 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv141 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !191
  %i.cp = fsub double %i.bv, %i.co
  %i.cq = fmul double %i.cm, %i.cp                ; 2 uses
  %i.cr = fptrunc double %i.cq to float
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv141 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !169
  %i.cu = fadd float %i.ct, %i.cr
  store float %i.cu, ptr %i.cs, align 4, !tbaa !169
  %i.cv = fsub double 1.000000e+00, %i.cm
  %i.cw = fdiv double %i.cq, %i.cv                ; 2 uses
  store double %i.cw, ptr %i.cn, align 8, !tbaa !191
  %i.cx = fadd double %.063124, %i.cw             ; 3 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count145
  br i1 %exitcond146.not, label %.lr.ph129.preheader, label %.lr.ph126, !llvm.loop !702

_ZNSt6vectorIdSaIdEED2Ev.exit80:                  ; preds = %.lr.ph129, %middle.block175
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.d) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #35
  br label %.loopexit

.lr.ph129:                                        ; preds = %.lr.ph129.preheader177, %.lr.ph129
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %.lr.ph129 ], [ %indvars.iv147.ph, %.lr.ph129.preheader177 ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv147
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !191 ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv147
  %i.db = load double, ptr %i.da, align 8, !tbaa !191
  %i.dc = fsub double %i.cx, %i.db
  %i.dd = fmul double %i.cz, %i.dc
  %i.de = fptrunc double %i.dd to float
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv147 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !169
  %i.dh = fadd float %i.dg, %i.de
  store float %i.dh, ptr %i.df, align 4, !tbaa !169
  %i.di = fsub double 1.000000e+00, %i.cz
  %i.dj = fmul double %i.cz, %i.di
  %i.dk = fptrunc double %i.dj to float
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv147
  store float %i.dk, ptr %i.dl, align 4, !tbaa !169
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count151
  br i1 %exitcond152.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit80, label %.lr.ph129, !llvm.loop !703

.loopexit:                                        ; preds = %.preheader, %.lr.ph130.split, %_ZNSt6vectorIdSaIdEED2Ev.exit80
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef range(i32 2, -2147483648) %0, i32 noundef %1) unnamed_addr #26 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %common.ret40, label %.lr.ph35

common.ret40:                                     ; preds = %.lr.ph.preheader, %tailrecurse.backedge, %bb.e, %tailrecurse._crit_edge
  %common.ret40.op = phi double [ %i.q, %bb.e ], [ %i.e, %tailrecurse._crit_edge ], [ 1.000000e+00, %tailrecurse.backedge ], [ 1.000000e+00, %.lr.ph.preheader ]
  ret double %common.ret40.op

tailrecurse._crit_edge:                           ; preds = %bb.a
  %i.c = sub nsw i32 0, %1
  %i.d = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef %0, i32 noundef %i.c)
  %i.e = fdiv double 1.000000e+00, %i.d
  br label %common.ret40

.lr.ph35:                                         ; preds = %.lr.ph.preheader, %tailrecurse.backedge
  %.tr2234 = phi i32 [ %.tr.be, %tailrecurse.backedge ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.tr172333 = phi i32 [ %.tr17.be, %tailrecurse.backedge ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %i.f = and i32 %.tr172333, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph35
  %i.h = lshr exact i32 %.tr172333, 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.d
  %.tr22.pn = phi i32 [ %.tr2234, %bb.b ], [ %i.m, %bb.d ]
  %.tr17.be = phi i32 [ %i.h, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %.tr.be = mul nuw nsw i32 %.tr22.pn, %.tr2234
  %i.i = icmp eq i32 %.tr17.be, 0
  br i1 %i.i, label %common.ret40, label %.lr.ph35

bb.c:                                             ; preds = %.lr.ph35
  %i.j = urem i32 %.tr172333, 3
  %i.k = udiv i32 %.tr172333, 3
  %i.l = icmp eq i32 %i.j, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = mul nuw nsw i32 %.tr2234, %.tr2234
  br label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.c
  %i.n = uitofp nneg i32 %.tr2234 to double
  %i.o = add nsw i32 %.tr172333, -1
  %i.p = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef %.tr2234, i32 noundef %i.o)
  %i.q = fmul double %i.p, %i.n
  br label %common.ret40
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM17MulticlassSoftmaxD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM17MulticlassSoftmaxE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM17MulticlassSoftmaxD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM17MulticlassSoftmaxE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !706
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8LightGBM17MulticlassSoftmaxD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !706
  br label %_ZN8LightGBM17MulticlassSoftmaxD2Ev.exit

_ZN8LightGBM17MulticlassSoftmaxD2Ev.exit:         ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MulticlassSoftmax4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 %2, ptr %i.h, align 8, !tbaa !317
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !711
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !220  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220
  %i.p = icmp eq ptr %i.m, %i.o
  %spec.select.i = select i1 %i.p, ptr null, ptr %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %spec.select.i, ptr %i.q, align 8, !tbaa !318
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.s = sext i32 %2 to i64                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !305  ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !303  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.s
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = sub nuw nsw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ab)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = icmp ugt i64 %i.z, %i.s
  br i1 %i.ac, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !305
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !163
  %i.ah = sext i32 %i.ag to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !193 ; 3 uses
end_hunk_0
