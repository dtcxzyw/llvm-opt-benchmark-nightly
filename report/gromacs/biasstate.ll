Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasstate?download=true
inline.NumInlined: 2110
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN3gmx9BiasState27setFreeEnergyToConvolvedPmfENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE:bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  invoke void @_ZNK3gmx9BiasState16calcConvolvedPmfENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridEPSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr %1, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %4)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !17   ; 8 uses
  %.not = icmp eq ptr %i.g, %i.h
  %.pre = load ptr, ptr %4, align 8, !tbaa !36    ; 6 uses
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 96                  ; 8 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [96 x i8], ptr %i.h, <4 x i64> %vec.ind
  %wide.gep15 = getelementptr inbounds nuw [96 x i8], ptr %i.h, <4 x i64> %step.add
  %wide.gep16 = getelementptr inbounds nuw [96 x i8], ptr %i.h, <4 x i64> %step.add.2
  %wide.gep17 = getelementptr inbounds nuw [96 x i8], ptr %i.h, <4 x i64> %step.add.3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %wide.load = load <4 x float>, ptr %i.n, align 4, !tbaa !24
  %wide.load18 = load <4 x float>, ptr %i.o, align 4, !tbaa !24
  %wide.load19 = load <4 x float>, ptr %i.p, align 4, !tbaa !24
  %wide.load20 = load <4 x float>, ptr %i.q, align 4, !tbaa !24
  %i.r = fpext <4 x float> %wide.load to <4 x double>
  %i.s = fpext <4 x float> %wide.load18 to <4 x double>
  %i.t = fpext <4 x float> %wide.load19 to <4 x double>
  %i.u = fpext <4 x float> %wide.load20 to <4 x double>
  %wide.gep21 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.gep22 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep15, i64 8
  %wide.gep23 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep16, i64 8
  %wide.gep24 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep17, i64 8
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.r, <4 x ptr> align 8 %wide.gep21, <4 x i1> splat (i1 true)), !tbaa !90
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.s, <4 x ptr> align 8 %wide.gep22, <4 x i1> splat (i1 true)), !tbaa !90
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.t, <4 x ptr> align 8 %wide.gep23, <4 x i1> splat (i1 true)), !tbaa !90
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.u, <4 x ptr> align 8 %wide.gep24, <4 x i1> splat (i1 true)), !tbaa !90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec25 = and i64 %i.l, -4                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind27 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next32, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep28 = getelementptr inbounds nuw [96 x i8], ptr %i.h, <4 x i64> %vec.ind27
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index26
  %wide.load29 = load <4 x float>, ptr %i.w, align 4, !tbaa !24
  %i.x = fpext <4 x float> %wide.load29 to <4 x double>
  %wide.gep30 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep28, i64 8
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.x, <4 x ptr> align 8 %wide.gep30, <4 x i1> splat (i1 true)), !tbaa !90
  %index.next31 = add nuw i64 %index26, 4         ; 2 uses
  %vec.ind.next32 = add nuw <4 x i64> %vec.ind27, splat (i64 4)
  %i.y = icmp eq i64 %index.next31, %n.vec25
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !418

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %i.l, %n.vec25
  br i1 %cmp.n33, label %._crit_edge.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ad) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIfSaIfEED2Ev.exit8, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit8

_ZNSt6vectorIfSaIfEED2Ev.exit8:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.ae

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %.011
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.011
  %i.an = load float, ptr %i.am, align 4, !tbaa !24
  %i.ao = fpext float %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store double %i.ao, ptr %i.ap, align 8, !tbaa !90
  %i.aq = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.l
  br i1 %exitcond.not, label %._crit_edge.thread, label %vec.epilog.scalar.ph, !llvm.loop !419
}

declare noundef double @_ZNK3gmx17CorrelationTensor15getTimeIntegralEid(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef) local_unnamed_addr #3

declare void @_ZNK3gmx11BiasSharing23sumOverSharingMainRanksENS_8ArrayRefIdEEi(ptr noundef nonnull align 8 dereferenceable(104), ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK3gmx9BiasState38getSharedCorrelationTensorTimeIntegralEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !21
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !74
  %i.j = fcmp ugt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.b
  %i.n = sext i32 %2 to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load double, ptr %i.p, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %i.q, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx9BiasState12normalizePmfEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 3 uses
  %.not27 = icmp eq ptr %i.b, %i.d
  br i1 %.not27, label %._crit_edge36, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load double, ptr %i.e, align 8, !tbaa !138
  %i.g = sitofp i32 %1 to double
  %i.h = fdiv double %i.f, %i.g
  %i.i = fmul double %.1, %i.h
  %i.j = fdiv double %i.i, %.118
  %i.k = tail call double @log(double noundef %i.j) #32
  br label %.lr.ph35

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.030 = phi double [ %.1, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.01729 = phi double [ %.118, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.023.028 = phi ptr [ %i.x, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !21
  %i.n = fcmp ogt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 64
  %i.p = load double, ptr %i.o, align 8, !tbaa !22
  %i.q = tail call double @exp(double noundef %i.p) #32
  %i.r = fadd double %.01729, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !90
  %i.u = fneg double %i.t
  %i.v = tail call double @exp(double noundef %i.u) #32
  %i.w = fadd double %.030, %i.v
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.118 = phi double [ %i.r, %bb.b ], [ %.01729, %.lr.ph ] ; 2 uses
  %.1 = phi double [ %i.w, %bb.b ], [ %.030, %.lr.ph ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge36:                                    ; preds = %bb.e, %bb.a
  ret void

.lr.ph35:                                         ; preds = %._crit_edge, %bb.e
  %.sroa.019.033 = phi ptr [ %i.ae, %bb.e ], [ %i.b, %._crit_edge ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.019.033, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !21
  %i.aa = fcmp ogt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph35
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.019.033, i64 64 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  %i.ad = fadd double %i.k, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph35
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.019.033, i64 96 ; 2 uses
  %.not26 = icmp eq ptr %i.ae, %i.d
  br i1 %.not26, label %._crit_edge36, label %.lr.ph35
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx9BiasState18initGridPointStateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %8) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::vector.25", align 8    ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %13 = alloca %"class.gmx::TextLineWrapper", align 4 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %15 = alloca %"class.gmx::MultiDimArray", align 8 ; 13 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %19 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %20 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %23 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %24 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %27 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %28 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %31 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %32 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %33 = alloca %"class.std::vector.30", align 8   ; 12 uses
  %34 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %35 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %36 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %39 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %40 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %43 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %44 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !443, !range !95, !noundef !96
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.dg

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 132
  %i.j = load i32, ptr %i.i, align 4, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !71
  %i.m = load ptr, ptr %7, align 8, !tbaa !52     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.o, ptr %i.a, align 8, !tbaa !73
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !52
  %i.r = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %i.r, ptr %i.l, align 8, !tbaa !53
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.s = phi ptr [ %i.q, %.noexc.i.i ], [ %i.l, %bb.b ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !53
  store i8 %i.t, ptr %i.s, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !72
  %i.w = load ptr, ptr %10, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.y = icmp sgt i32 %8, 1
  br i1 %i.y, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.z = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 noundef signext 46, i64 noundef -1) #32 ; 4 uses
  %.not.i = icmp eq i64 %i.z, -1
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EEENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 1819) #29
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.46, i32 noundef %i.j)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !72  ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i64 noundef %i.z, i64 noundef %i.aa) #29
          to label %.noexc180.i unwind label %bb.l

.noexc180.i:                                      ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.i: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !72
  %i.ae = load ptr, ptr %11, align 8, !tbaa !52
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.z, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.i unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.i
  %i.ag = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.k:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.i, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !53
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i ], [ %i.an, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.dc

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.at = load ptr, ptr %7, align 8, !tbaa !52
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.47, ptr noundef %i.at)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZN3gmx23TextLineWrapperSettingsC1Ev(ptr noundef nonnull align 4 dereferenceable(16) %13)
          to label %_ZN3gmx15TextLineWrapperC2Ev.exit.i unwind label %bb.ad

_ZN3gmx15TextLineWrapperC2Ev.exit.i:              ; preds = %bb.n
  store i32 78, ptr %13, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_ZNK3gmx15TextLineWrapper12wrapToStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %_ZN3gmx15TextLineWrapperC2Ev.exit.i
  %i.au = load ptr, ptr %12, align 8, !tbaa !52   ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %14, align 8, !tbaa !52   ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  br i1 %i.az, label %bb.p, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.o
  br i1 %i.az, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !53
  store i8 %i.bd, ptr %i.au, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !72
  %i.bg = load ptr, ptr %12, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZN3gmx9BiasState18initGridPointStateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i, %bb.ai
  %.pn171.pn.pn.i = phi { ptr, i32 } [ %i.ct, %bb.ai ], [ %.pn171.pn292.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i ], [ %.pn171.pn292.i, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.cz

bb.am:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.dc = icmp eq i32 %i.ci, 1
  br i1 %i.dc, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.dd = load ptr, ptr %7, align 8, !tbaa !52
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.49, ptr noundef %i.dd, i32 noundef 1)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.de = call ptr @__cxa_allocate_exception(i64 24) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.ap unwind label %.thread297.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(56) %23)
          to label %bb.aq unwind label %.thread302.i

bb.aq:                                            ; preds = %bb.ap
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %22, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %24, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE, ptr %i.df, align 8, !tbaa !49
  %.sroa.4278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.3, ptr %.sroa.4278.0..sroa_idx.i, align 8, !tbaa !49
  %.sroa.5279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 1860, ptr %.sroa.5279.0..sroa_idx.i, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.de, ptr noundef nonnull align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr %i.de, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.dd unwind label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

.thread297.i:                                     ; preds = %bb.ao
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split434.i

.thread302.i:                                     ; preds = %bb.ap
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #32
  br label %.sink.split434.i

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.087.i = phi i1 [ false, %bb.ar ], [ true, %bb.aq ]
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #32
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br i1 %.087.i, label %bb.au, label %bb.av

.sink.split434.i:                                 ; preds = %.thread302.i, %.thread297.i
  %.pn167.pn301.ph.i = phi { ptr, i32 } [ %i.di, %.thread302.i ], [ %i.dh, %.thread297.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.au

bb.au:                                            ; preds = %.sink.split434.i, %bb.at
  %.pn167.pn301.i = phi { ptr, i32 } [ %i.dj, %bb.at ], [ %.pn167.pn301.ph.i, %.sink.split434.i ]
  call void @__cxa_free_exception(ptr %i.de) #32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn167.pn300.i = phi { ptr, i32 } [ %.pn167.pn301.i, %bb.au ], [ %i.dj, %bb.at ] ; 2 uses
  %i.dk = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i: ; preds = %bb.av
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !53
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i, %bb.as
  %.pn167.pn.pn.i = phi { ptr, i32 } [ %i.dg, %bb.as ], [ %.pn167.pn300.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i ], [ %.pn167.pn300.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.cz

bb.aw:                                            ; preds = %bb.am
  %i.dp = sdiv exact i64 %i.g, 40                 ; 3 uses
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dr = add i32 %i.dq, 2                        ; 3 uses
  %i.ds = icmp eq i32 %i.dr, %i.cg
  %.086.v.i = select i1 %i.ds, i32 1, i32 4
  %.086.i = add nsw i32 %.086.v.i, %i.dq          ; 2 uses
  %i.dt = icmp sgt i32 %i.dr, %i.cg
  br i1 %i.dt, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.du = load ptr, ptr %7, align 8, !tbaa !52
  %i.dv = load ptr, ptr %12, align 8, !tbaa !52
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull @.str.50, ptr noundef %i.du, i32 noundef %i.dr, ptr noundef %i.dv)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.dw = call ptr @__cxa_allocate_exception(i64 24) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.az unwind label %.thread305.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(56) %27)
          to label %bb.ba unwind label %.thread310.i

bb.ba:                                            ; preds = %bb.az
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %26, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %28, align 8, !tbaa !47
  %i.dx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE, ptr %i.dx, align 8, !tbaa !49
  %.sroa.4274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr @.str.3, ptr %.sroa.4274.0..sroa_idx.i, align 8, !tbaa !49
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 1890, ptr %.sroa.5275.0..sroa_idx.i, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.dw, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr %i.dw, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.dd unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ax
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i

.thread305.i:                                     ; preds = %bb.ay
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split435.i

.thread310.i:                                     ; preds = %bb.az
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #32
  br label %.sink.split435.i

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %.083.i = phi i1 [ false, %bb.bb ], [ true, %bb.ba ]
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #32
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br i1 %.083.i, label %bb.be, label %bb.bf

.sink.split435.i:                                 ; preds = %.thread310.i, %.thread305.i
  %.pn162.pn309.ph.i = phi { ptr, i32 } [ %i.ea, %.thread310.i ], [ %i.dz, %.thread305.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.be

bb.be:                                            ; preds = %.sink.split435.i, %bb.bd
  %.pn162.pn309.i = phi { ptr, i32 } [ %i.eb, %bb.bd ], [ %.pn162.pn309.ph.i, %.sink.split435.i ]
  call void @__cxa_free_exception(ptr %i.dw) #32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn162.pn308.i = phi { ptr, i32 } [ %.pn162.pn309.i, %bb.be ], [ %i.eb, %bb.bd ] ; 2 uses
  %i.ec = load ptr, ptr %25, align 8, !tbaa !52   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i: ; preds = %bb.bf
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !53
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i, %bb.bc
  %.pn162.pn.pn.i = phi { ptr, i32 } [ %i.dy, %bb.bc ], [ %.pn162.pn308.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i ], [ %.pn162.pn308.i, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.cz

bb.bg:                                            ; preds = %bb.aw
  %.sroa.7270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  %.sroa.7270.0.copyload.i = load ptr, ptr %.sroa.7270.0..sroa_idx.i, align 8, !tbaa !83 ; 3 uses
  %i.eh = load ptr, ptr %15, align 8, !tbaa !81, !noalias !444
  %.not.not21.i.i = icmp sgt i32 %i.cg, 0
  br i1 %.not.not21.i.i, label %.preheader.us.preheader.i.i, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i

.preheader.us.preheader.i.i:                      ; preds = %bb.bg
  %i.ei = and i64 %i.ch, 2147483647
  %wide.trip.count.i.i = and i64 %i.ce, 2147483647
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv32.in.i.i = phi i64 [ %i.ei, %.preheader.us.preheader.i.i ], [ %indvars.iv32.i.i, %._crit_edge.us.i.i ]
  %.01224.us.i.i = phi i32 [ 0, %.preheader.us.preheader.i.i ], [ %i.em, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv32.i.i = add nsw i64 %indvars.iv32.in.i.i, -1 ; 2 uses
  %invariant.gep.us.i.i = getelementptr [8 x i8], ptr %i.eh, i64 %indvars.iv32.i.i
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.bi, !llvm.loop !422

bb.bi:                                            ; preds = %bb.bh, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.bh ] ; 2 uses
  %i.ej = mul nsw i64 %indvars.iv.i.i, %i.ch
  %gep.us.i.i = getelementptr [8 x i8], ptr %invariant.gep.us.i.i, i64 %i.ej
  %i.ek = load double, ptr %gep.us.i.i, align 8, !tbaa !42
  %i.el = fcmp une double %i.ek, 0.000000e+00
  br i1 %i.el, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i, label %bb.bh

._crit_edge.us.i.i:                               ; preds = %bb.bh
  %i.em = add nuw nsw i32 %.01224.us.i.i, 1       ; 2 uses
  %exitcond35.not.i.i = icmp eq i32 %i.em, %i.ci
  br i1 %exitcond35.not.i.i, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i, label %.preheader.us.i.i, !llvm.loop !423

_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i: ; preds = %._crit_edge.us.i.i, %bb.bi
  %.01220.i.i = phi i32 [ %.01224.us.i.i, %bb.bi ], [ %i.ci, %._crit_edge.us.i.i ] ; 2 uses
  %i.en = icmp sgt i32 %.01220.i.i, 1
  br i1 %i.en, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i, label %.preheader347.i

.preheader347.i:                                  ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i
  %.not362.i = icmp eq ptr %3, %2
  br i1 %.not362.i, label %._crit_edge.i, label %.lr.ph357.i

.lr.ph357.i:                                      ; preds = %.preheader347.i
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.bt

_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i: ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i, %bb.bg
  %.01220.i314.i = phi i32 [ %.01220.i.i, %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i ], [ %i.ci, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.ep = load ptr, ptr %7, align 8, !tbaa !52
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull @.str.51, i32 noundef %.01220.i314.i, ptr noundef %i.ep)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i
  %i.eq = call ptr @__cxa_allocate_exception(i64 24) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.bk unwind label %.thread315.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(56) %31)
          to label %bb.bl unwind label %.thread320.i

bb.bl:                                            ; preds = %bb.bk
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %30, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %32, align 8, !tbaa !47
  %i.er = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE, ptr %i.er, align 8, !tbaa !49
  %.sroa.4263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr @.str.3, ptr %.sroa.4263.0..sroa_idx.i, align 8, !tbaa !49
  %.sroa.5264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i32 1905, ptr %.sroa.5264.0..sroa_idx.i, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.eq, ptr noundef nonnull align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke void @__cxa_throw(ptr %i.eq, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.dd unwind label %bb.bo

bb.bn:                                            ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i

.thread315.i:                                     ; preds = %bb.bj
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split436.i

.thread320.i:                                     ; preds = %bb.bk
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %31) #32
  br label %.sink.split436.i

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %.080.i = phi i1 [ false, %bb.bm ], [ true, %bb.bl ]
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #32
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br i1 %.080.i, label %bb.bp, label %bb.bq

.sink.split436.i:                                 ; preds = %.thread320.i, %.thread315.i
  %.pn157.pn319.ph.i = phi { ptr, i32 } [ %i.eu, %.thread320.i ], [ %i.et, %.thread315.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split436.i, %bb.bo
  %.pn157.pn319.i = phi { ptr, i32 } [ %i.ev, %bb.bo ], [ %.pn157.pn319.ph.i, %.sink.split436.i ]
  call void @__cxa_free_exception(ptr %i.eq) #32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn157.pn318.i = phi { ptr, i32 } [ %.pn157.pn319.i, %bb.bp ], [ %i.ev, %bb.bo ] ; 2 uses
  %i.ew = load ptr, ptr %29, align 8, !tbaa !52   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i: ; preds = %bb.bq
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !53
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i, %bb.bn
  %.pn157.pn.pn.i = phi { ptr, i32 } [ %i.es, %bb.bn ], [ %.pn157.pn318.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %.pn157.pn318.i, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %bb.cz

._crit_edge.i:                                    ; preds = %.loopexit.i, %.preheader347.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31 ; 2 uses
  %i.fd = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 72                ; 4 uses
  %i.fi = icmp ugt i64 %i.fh, 2305843009213693951
  br i1 %i.fi, label %bb.br, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.br:                                            ; preds = %._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc211.i unwind label %bb.bu

.noexc211.i:                                      ; preds = %bb.br
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.fc, %i.fd
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fj = shl nuw nsw i64 %i.fh, 2
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #30
          to label %.noexc212.i unwind label %bb.bu ; 4 uses

.noexc212.i:                                      ; preds = %bb.bs
  store ptr %i.fk, ptr %33, align 8, !tbaa !123
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !157
  store i32 0, ptr %i.fk, align 4, !tbaa !39
  %i.fn = getelementptr i8, ptr %i.fk, i64 4      ; 3 uses
  %i.fo = add nsw i64 %i.fh, -1                   ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc212.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fo, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.fn, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !39
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph357.i
  %.079355.i = phi i64 [ 0, %.lr.ph357.i ], [ %i.gu, %.loopexit.i ] ; 3 uses
  %i.fr = getelementptr inbounds [40 x i8], ptr %2, i64 %.079355.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !452 ; 4 uses
  %i.fu = fcmp oeq double %i.ft, 1.000000e+00
  br i1 %i.fu, label %.loopexit.i, label %.preheader346.i

.preheader346.i:                                  ; preds = %bb.bt
  %i.fv = load ptr, ptr %i.eo, align 8, !tbaa !16 ; 2 uses
  %i.fw = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %.not363.i = icmp eq ptr %i.fv, %i.fw
  br i1 %.not363.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %.preheader346.i
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = sdiv exact i64 %i.fz, 96                ; 8 uses
  %i.gb = mul i64 %.079355.i, %i.ch
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7270.0.copyload.i, i64 %i.gb ; 3 uses
  %min.iters.check = icmp ult i64 %i.ga, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check133 = icmp ult i64 %i.ga, 16
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gd = and i64 %i.ga, 12
  %n.vec = and i64 %i.ga, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ft, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %index ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 64 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ge, align 8, !tbaa !42
  %wide.load134 = load <4 x double>, ptr %i.gf, align 8, !tbaa !42
  %wide.load135 = load <4 x double>, ptr %i.gg, align 8, !tbaa !42
  %wide.load136 = load <4 x double>, ptr %i.gh, align 8, !tbaa !42
  %i.gi = fmul <4 x double> %broadcast.splat, %wide.load
  %i.gj = fmul <4 x double> %broadcast.splat, %wide.load134
  %i.gk = fmul <4 x double> %broadcast.splat, %wide.load135
  %i.gl = fmul <4 x double> %broadcast.splat, %wide.load136
  store <4 x double> %i.gi, ptr %i.ge, align 8, !tbaa !42
  store <4 x double> %i.gj, ptr %i.gf, align 8, !tbaa !42
  store <4 x double> %i.gk, ptr %i.gg, align 8, !tbaa !42
  store <4 x double> %i.gl, ptr %i.gh, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !424

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec137 = and i64 %i.ga, -4                   ; 3 uses
  %broadcast.splatinsert138 = insertelement <4 x double> poison, double %i.ft, i64 0
  %broadcast.splat139 = shufflevector <4 x double> %broadcast.splatinsert138, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index140 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %index140 ; 2 uses
  %wide.load141 = load <4 x double>, ptr %i.gn, align 8, !tbaa !42
  %i.go = fmul <4 x double> %broadcast.splat139, %wide.load141
  store <4 x double> %i.go, ptr %i.gn, align 8, !tbaa !42
  %index.next142 = add nuw i64 %index140, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.gp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !425

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.ga, %n.vec137
  br i1 %cmp.n143, label %.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %storemerge354.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec137, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %storemerge354.i = phi i64 [ %i.gt, %vec.epilog.scalar.ph ], [ %storemerge354.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %storemerge354.i ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !42
  %i.gs = fmul double %i.ft, %i.gr
  store double %i.gs, ptr %i.gq, align 8, !tbaa !42
  %i.gt = add nuw i64 %storemerge354.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gt, %i.ga
  br i1 %exitcond.not.i, label %.loopexit.i, label %vec.epilog.scalar.ph, !llvm.loop !426

.loopexit.i:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader346.i, %bb.bt
  %i.gu = add nuw i64 %.079355.i, 1               ; 2 uses
  %exitcond371.not.i = icmp eq i64 %i.gu, %i.dp
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %bb.bt, !llvm.loop !427

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc212.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.fq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.fn, %.noexc212.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.gv, align 8, !tbaa !122
  invoke void @_ZN3gmx17mapGridToDataGridEPSt6vectorIiSaIiEERKNS_13MultiDimArrayIS0_IdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8BiasGridESK_(ptr noundef nonnull %33, ptr noundef nonnull align 8 dereferenceable(64) %15, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.preheader.i unwind label %bb.bv

.preheader.i:                                     ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !16 ; 2 uses
  %i.gy = load ptr, ptr %i.k, align 8, !tbaa !17  ; 3 uses
  %.not364.i = icmp eq ptr %i.gx, %i.gy
  br i1 %.not364.i, label %.critedge.i, label %.lr.ph360.i

.lr.ph360.i:                                      ; preds = %.preheader.i
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = sdiv exact i64 %i.hb, 96
  %sext.i = shl i64 %i.dp, 32
  %i.hd = ashr exact i64 %sext.i, 32
  %i.he = mul nsw i64 %i.ch, %i.hd
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sroa.7270.0.copyload.i, i64 %i.he
  %i.hg = load ptr, ptr %33, align 8, !tbaa !123  ; 3 uses
  %i.hh = sext i32 %.086.i to i64
  %i.hi = mul nsw i64 %i.ch, %i.hh
  %i.hj = getelementptr inbounds [8 x i8], ptr %.sroa.7270.0.copyload.i, i64 %i.hi
  br label %bb.bw

._crit_edge361.i:                                 ; preds = %bb.cn
  br i1 %spec.select.i, label %.critedge.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit236.i

bb.bv:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bw:                                            ; preds = %bb.cn, %.lr.ph360.i
  %.076359.i = phi i64 [ 0, %.lr.ph360.i ], [ %i.ir, %bb.cn ] ; 4 uses
  %.077358.i = phi i1 [ true, %.lr.ph360.i ], [ %spec.select.i, %bb.cn ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.076359.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !39
  %i.ho = sext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !42 ; 2 uses
  %i.hr = call double @llvm.fabs.f64(double %i.hq)
  %or.cond.i = fcmp ogt double %i.hr, 7.000000e+02
  br i1 %or.cond.i, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.hs = call ptr @__cxa_allocate_exception(i64 24) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull @.str.52)
          to label %bb.by unwind label %.thread323.i

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(56) %35)
          to label %bb.bz unwind label %.thread327.i

bb.bz:                                            ; preds = %bb.by
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %34, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %36, align 8, !tbaa !47
  %i.ht = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE, ptr %i.ht, align 8, !tbaa !49
  %.sroa.4251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr @.str.3, ptr %.sroa.4251.0..sroa_idx.i, align 8, !tbaa !49
  %.sroa.5252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %36, i64 24
  store i32 1939, ptr %.sroa.5252.0..sroa_idx.i, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.hs, ptr noundef nonnull align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_throw(ptr %i.hs, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.dd unwind label %bb.cb

.thread323.i:                                     ; preds = %bb.bx
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split437.i

.thread327.i:                                     ; preds = %bb.by
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %35) #32
  br label %.sink.split437.i

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.073.i = phi i1 [ false, %bb.ca ], [ true, %bb.bz ]
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %36) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #32
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %35) #32
end_hunk_1
begin_hunk_2_@_ZN3gmx9BiasState18initGridPointStateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.i: ; preds = %bb.dc
  %i.kq = load i64, ptr %i.l, align 8, !tbaa !53
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i

common.resume:                                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i
  %common.resume.op = phi { ptr, i32 } [ %.pn171.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i ], [ %i.lq, %_ZNSt6vectorIfSaIfEED2Ev.exit8.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume

bb.dd:                                            ; preds = %bb.cr, %bb.ci, %bb.ca, %bb.bm, %bb.bb, %bb.ar, %bb.ab
  unreachable

_ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZNK3gmx9BiasState16calcConvolvedPmfENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridEPSt6vectorIfSaIfEE(ptr noundef nonnull readonly align 8 dereferenceable(248) %0, ptr %2, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %9)
          to label %.preheader.i19 unwind label %bb.de

.preheader.i19:                                   ; preds = %_ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE.exit
  %i.ks = load ptr, ptr %i.gw, align 8, !tbaa !16 ; 2 uses
  %i.kt = load ptr, ptr %i.k, align 8, !tbaa !17  ; 8 uses
  %.not.i20 = icmp eq ptr %i.ks, %i.kt
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !36  ; 6 uses
  br i1 %.not.i20, label %._crit_edge.i23, label %iter.check165

iter.check165:                                    ; preds = %.preheader.i19
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = sdiv exact i64 %i.kw, 96                ; 8 uses
  %min.iters.check144 = icmp ult i64 %i.kx, 4
  br i1 %min.iters.check144, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %iter.check165
  %min.iters.check146 = icmp ult i64 %i.kx, 16
  br i1 %min.iters.check146, label %vec.epilog.ph169, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %i.ky = and i64 %i.kx, 12
  %n.vec148 = and i64 %i.kx, -16                  ; 4 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.ph147, %vector.body149
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next162, %vector.body149 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph147 ], [ %vec.ind.next, %vector.body149 ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [96 x i8], ptr %i.kt, <4 x i64> %vec.ind
  %wide.gep151 = getelementptr inbounds nuw [96 x i8], ptr %i.kt, <4 x i64> %step.add
  %wide.gep152 = getelementptr inbounds nuw [96 x i8], ptr %i.kt, <4 x i64> %step.add.2
  %wide.gep153 = getelementptr inbounds nuw [96 x i8], ptr %i.kt, <4 x i64> %step.add.3
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index150 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %wide.load154 = load <4 x float>, ptr %i.kz, align 4, !tbaa !24
  %wide.load155 = load <4 x float>, ptr %i.la, align 4, !tbaa !24
  %wide.load156 = load <4 x float>, ptr %i.lb, align 4, !tbaa !24
  %wide.load157 = load <4 x float>, ptr %i.lc, align 4, !tbaa !24
  %i.ld = fpext <4 x float> %wide.load154 to <4 x double>
  %i.le = fpext <4 x float> %wide.load155 to <4 x double>
  %i.lf = fpext <4 x float> %wide.load156 to <4 x double>
  %i.lg = fpext <4 x float> %wide.load157 to <4 x double>
  %wide.gep158 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.gep159 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep151, i64 8
  %wide.gep160 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep152, i64 8
  %wide.gep161 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep153, i64 8
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ld, <4 x ptr> align 8 %wide.gep158, <4 x i1> splat (i1 true)), !tbaa !90
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.le, <4 x ptr> align 8 %wide.gep159, <4 x i1> splat (i1 true)), !tbaa !90
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.lf, <4 x ptr> align 8 %wide.gep160, <4 x i1> splat (i1 true)), !tbaa !90
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.lg, <4 x ptr> align 8 %wide.gep161, <4 x i1> splat (i1 true)), !tbaa !90
  %index.next162 = add nuw i64 %index150, 16      ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.lh = icmp eq i64 %index.next162, %n.vec148
  br i1 %i.lh, label %middle.block163, label %vector.body149, !llvm.loop !429

middle.block163:                                  ; preds = %vector.body149
  %cmp.n164 = icmp eq i64 %i.kx, %n.vec148
  br i1 %cmp.n164, label %._crit_edge.thread.i, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block163
  %min.epilog.iters.check168 = icmp eq i64 %i.ky, 0
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph169, !prof !99

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check166
  %vec.epilog.resume.val170 = phi i64 [ %n.vec148, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check145 ] ; 2 uses
  %n.vec171 = and i64 %i.kx, -4                   ; 3 uses
  %broadcast.splatinsert172 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val170, i64 0
  %broadcast.splat173 = shufflevector <4 x i64> %broadcast.splatinsert172, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat173, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body174

vec.epilog.vector.body174:                        ; preds = %vec.epilog.vector.body174, %vec.epilog.ph169
  %index175 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph169 ], [ %index.next180, %vec.epilog.vector.body174 ] ; 2 uses
  %vec.ind176 = phi <4 x i64> [ %induction, %vec.epilog.ph169 ], [ %vec.ind.next181, %vec.epilog.vector.body174 ] ; 2 uses
  %wide.gep177 = getelementptr inbounds nuw [96 x i8], ptr %i.kt, <4 x i64> %vec.ind176
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index175
  %wide.load178 = load <4 x float>, ptr %i.li, align 4, !tbaa !24
  %i.lj = fpext <4 x float> %wide.load178 to <4 x double>
  %wide.gep179 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep177, i64 8
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.lj, <4 x ptr> align 8 %wide.gep179, <4 x i1> splat (i1 true)), !tbaa !90
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %vec.ind.next181 = add nuw <4 x i64> %vec.ind176, splat (i64 4)
  %i.lk = icmp eq i64 %index.next180, %n.vec171
  br i1 %i.lk, label %vec.epilog.middle.block182, label %vec.epilog.vector.body174, !llvm.loop !430

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body174
  %cmp.n183 = icmp eq i64 %i.kx, %n.vec171
  br i1 %cmp.n183, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %iter.check165, %vec.epilog.iter.check166, %vec.epilog.middle.block182
  %.011.i.ph = phi i64 [ 0, %iter.check165 ], [ %n.vec148, %vec.epilog.iter.check166 ], [ %n.vec171, %vec.epilog.middle.block182 ]
  br label %vec.epilog.scalar.ph167

._crit_edge.i23:                                  ; preds = %.preheader.i19
  %.not.i.i.i.i24 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i24, label %_ZN3gmx9BiasState27setFreeEnergyToConvolvedPmfENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %vec.epilog.scalar.ph167, %middle.block163, %vec.epilog.middle.block182, %._crit_edge.i23
  %i.ll = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !57
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %.pre.i to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i, i64 noundef %i.lp) #31
  br label %_ZN3gmx9BiasState27setFreeEnergyToConvolvedPmfENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE.exit

bb.de:                                            ; preds = %_ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE.exit
  %i.lq = landingpad { ptr, i32 }
          cleanup
  %i.lr = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit8.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !57
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lw) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit8.i

_ZNSt6vectorIfSaIfEED2Ev.exit8.i:                 ; preds = %bb.df, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %common.resume

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.preheader, %vec.epilog.scalar.ph167
  %.011.i = phi i64 [ %i.mc, %vec.epilog.scalar.ph167 ], [ %.011.i.ph, %vec.epilog.scalar.ph167.preheader ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [96 x i8], ptr %i.kt, i64 %.011.i
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.011.i
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !24
  %i.ma = fpext float %i.lz to double
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store double %i.ma, ptr %i.mb, align 8, !tbaa !90
  %i.mc = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i22 = icmp eq i64 %i.mc, %i.kx
  br i1 %exitcond.not.i22, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph167, !llvm.loop !431

_ZN3gmx9BiasState27setFreeEnergyToConvolvedPmfENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE.exit: ; preds = %._crit_edge.i23, %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN3gmx9BiasState27setFreeEnergyToConvolvedPmfENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE.exit, %bb.a
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.me = load i32, ptr %i.md, align 8, !tbaa !88
  %.not = icmp eq i32 %i.me, 3
  br i1 %.not, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !93
  %i.mj = fcmp une double %i.mi, 0.000000e+00
  br i1 %i.mj, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx9BiasState18initGridPointStateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 2022) #29
  unreachable

bb.dj:                                            ; preds = %bb.dg, %bb.dh
  call void @_ZN3gmx9BiasState24updateTargetDistributionERKNS_10BiasParamsERKNS_15CorrelationGridE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(137) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !89 ; 11 uses
  %i.mm = ptrtoaddr ptr %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !89 ; 6 uses
  %i.mp = ptrtoaddr ptr %i.mo to i64
  %.not3946 = icmp eq ptr %i.ml, %i.mo
  br i1 %.not3946, label %_ZN3gmx9BiasState12normalizePmfEi.exit, label %.lr.ph

iter.check211:                                    ; preds = %bb.dm
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !138 ; 4 uses
  %i.ms = add i64 %i.mp, -96
  %i.mt = sub i64 %i.ms, %i.mm                    ; 4 uses
  %i.mu = udiv i64 %i.mt, 96
  %i.mv = add nuw nsw i64 %i.mu, 1                ; 6 uses
  %min.iters.check185 = icmp ult i64 %i.mt, 288
  br i1 %min.iters.check185, label %.lr.ph51.preheader, label %vector.main.loop.iter.check186

vector.main.loop.iter.check186:                   ; preds = %iter.check211
  %min.iters.check187 = icmp ult i64 %i.mt, 1440
  br i1 %min.iters.check187, label %vec.epilog.ph215, label %vector.ph188

vector.ph188:                                     ; preds = %vector.main.loop.iter.check186
  %i.mw = and i64 %i.mv, 12
  %n.vec189 = and i64 %i.mv, 576460752303423472   ; 4 uses
  %i.mx = mul i64 %n.vec189, 96
  %i.my = getelementptr i8, ptr %i.ml, i64 %i.mx  ; 2 uses
  %broadcast.splatinsert190 = insertelement <4 x double> poison, double %i.mr, i64 0
  %broadcast.splat191 = shufflevector <4 x double> %broadcast.splatinsert190, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.ph188, %vector.body192
  %index193 = phi i64 [ 0, %vector.ph188 ], [ %index.next208, %vector.body192 ]
  %pointer.phi = phi ptr [ %i.ml, %vector.ph188 ], [ %ptr.ind, %vector.body192 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 96, i64 192, i64 288> ; 8 uses
  %wide.gep197 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 16
  %wide.gep198 = getelementptr i8, <4 x ptr> %vector.gep, i64 400
  %wide.gep199 = getelementptr i8, <4 x ptr> %vector.gep, i64 784
  %wide.gep200 = getelementptr i8, <4 x ptr> %vector.gep, i64 1168
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep197, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !21
  %wide.masked.gather201 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep198, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !21
  %wide.masked.gather202 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep199, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !21
  %wide.masked.gather203 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep200, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !21
  %i.mz = fmul <4 x double> %broadcast.splat191, %wide.masked.gather
  %i.na = fmul <4 x double> %broadcast.splat191, %wide.masked.gather201
  %i.nb = fmul <4 x double> %broadcast.splat191, %wide.masked.gather202
  %i.nc = fmul <4 x double> %broadcast.splat191, %wide.masked.gather203
  %wide.gep204 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 48
  %wide.gep205 = getelementptr i8, <4 x ptr> %vector.gep, i64 432
  %wide.gep206 = getelementptr i8, <4 x ptr> %vector.gep, i64 816
  %wide.gep207 = getelementptr i8, <4 x ptr> %vector.gep, i64 1200
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.mz, <4 x ptr> align 8 %wide.gep204, <4 x i1> splat (i1 true)), !tbaa !93
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.na, <4 x ptr> align 8 %wide.gep205, <4 x i1> splat (i1 true)), !tbaa !93
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.nb, <4 x ptr> align 8 %wide.gep206, <4 x i1> splat (i1 true)), !tbaa !93
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.nc, <4 x ptr> align 8 %wide.gep207, <4 x i1> splat (i1 true)), !tbaa !93
  %index.next208 = add nuw i64 %index193, 16      ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1536
  %i.nd = icmp eq i64 %index.next208, %n.vec189
  br i1 %i.nd, label %middle.block209, label %vector.body192, !llvm.loop !432

middle.block209:                                  ; preds = %vector.body192
  %cmp.n210 = icmp eq i64 %i.mv, %n.vec189
  br i1 %cmp.n210, label %.lr.ph.i25.preheader, label %vec.epilog.iter.check212

vec.epilog.iter.check212:                         ; preds = %middle.block209
  %min.epilog.iters.check214 = icmp eq i64 %i.mw, 0
  br i1 %min.epilog.iters.check214, label %.lr.ph51.preheader, label %vec.epilog.ph215, !prof !99

vec.epilog.ph215:                                 ; preds = %vector.main.loop.iter.check186, %vec.epilog.iter.check212
  %vec.epilog.resume.val216 = phi i64 [ %n.vec189, %vec.epilog.iter.check212 ], [ 0, %vector.main.loop.iter.check186 ]
  %bc.resume.val217 = phi ptr [ %i.my, %vec.epilog.iter.check212 ], [ %i.ml, %vector.main.loop.iter.check186 ]
  %n.vec218 = and i64 %i.mv, 576460752303423484   ; 3 uses
  %i.ne = mul i64 %n.vec218, 96
  %i.nf = getelementptr i8, ptr %i.ml, i64 %i.ne
  %broadcast.splatinsert219 = insertelement <4 x double> poison, double %i.mr, i64 0
  %broadcast.splat220 = shufflevector <4 x double> %broadcast.splatinsert219, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body221

vec.epilog.vector.body221:                        ; preds = %vec.epilog.vector.body221, %vec.epilog.ph215
  %index222 = phi i64 [ %vec.epilog.resume.val216, %vec.epilog.ph215 ], [ %index.next228, %vec.epilog.vector.body221 ]
  %pointer.phi223 = phi ptr [ %bc.resume.val217, %vec.epilog.ph215 ], [ %ptr.ind229, %vec.epilog.vector.body221 ] ; 2 uses
  %vector.gep224 = getelementptr i8, ptr %pointer.phi223, <4 x i64> <i64 0, i64 96, i64 192, i64 288> ; 2 uses
  %wide.gep225 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep224, i64 16
  %wide.masked.gather226 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep225, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !21
  %i.ng = fmul <4 x double> %broadcast.splat220, %wide.masked.gather226
  %wide.gep227 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep224, i64 48
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ng, <4 x ptr> align 8 %wide.gep227, <4 x i1> splat (i1 true)), !tbaa !93
  %index.next228 = add nuw i64 %index222, 4       ; 2 uses
  %ptr.ind229 = getelementptr i8, ptr %pointer.phi223, i64 384
  %i.nh = icmp eq i64 %index.next228, %n.vec218
  br i1 %i.nh, label %vec.epilog.middle.block230, label %vec.epilog.vector.body221, !llvm.loop !433

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body221
  %cmp.n231 = icmp eq i64 %i.mv, %n.vec218
  br i1 %cmp.n231, label %.lr.ph.i25.preheader, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %iter.check211, %vec.epilog.iter.check212, %vec.epilog.middle.block230
  %.sroa.025.049.ph = phi ptr [ %i.ml, %iter.check211 ], [ %i.my, %vec.epilog.iter.check212 ], [ %i.nf, %vec.epilog.middle.block230 ]
  br label %.lr.ph51

.lr.ph:                                           ; preds = %bb.dj, %bb.dm
  %.sroa.029.047 = phi ptr [ %i.np, %bb.dm ], [ %i.ml, %bb.dj ] ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.029.047, i64 16 ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !21 ; 2 uses
  %i.nk = fcmp ogt double %i.nj, 0.000000e+00
  br i1 %i.nk, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.lr.ph
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.029.047, i64 8
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !90
  %i.nn = call double @llvm.log.f64(double %i.nj)
  %i.no = fadd double %i.nn, %i.nm
  br label %bb.dm

bb.dl:                                            ; preds = %.lr.ph
  store double 0.000000e+00, ptr %i.ni, align 8, !tbaa !21
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %storemerge = phi double [ -1.000000e+04, %bb.dl ], [ %i.no, %bb.dk ]
  store double %storemerge, ptr %.sroa.029.047, align 8, !tbaa !144
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.029.047, i64 96 ; 2 uses
  %.not39 = icmp eq ptr %i.np, %i.mo
  br i1 %.not39, label %iter.check211, label %.lr.ph

.lr.ph.i25.preheader:                             ; preds = %.lr.ph51, %vec.epilog.middle.block230, %middle.block209
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 76
  %46 = load i32, ptr %45, align 4, !tbaa !100
  br label %.lr.ph.i25

._crit_edge.i27:                                  ; preds = %75
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %i.mr, %47
  %49 = fmul double %.1.i, %48
  %50 = fdiv double %49, %.118.i
  %51 = call double @log(double noundef %50) #32  ; 5 uses
  %xtraiter = and i64 %i.mv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol

.lr.ph35.i.prol:                                  ; preds = %._crit_edge.i27, %59
  %.sroa.019.033.i.prol = phi ptr [ %60, %59 ], [ %i.ml, %._crit_edge.i27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %59 ], [ 0, %._crit_edge.i27 ]
  %52 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i.prol, i64 16
  %53 = load double, ptr %52, align 8, !tbaa !21
  %54 = fcmp ogt double %53, 0.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %.lr.ph35.i.prol
  %56 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i.prol, i64 64 ; 2 uses
  %57 = load double, ptr %56, align 8, !tbaa !22
  %58 = fadd double %51, %57
  store double %58, ptr %56, align 8, !tbaa !22
  br label %59

59:                                               ; preds = %55, %.lr.ph35.i.prol
  %60 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i.prol, i64 96 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol, !llvm.loop !434

.lr.ph35.i.prol.loopexit:                         ; preds = %59, %._crit_edge.i27
  %.sroa.019.033.i.unr = phi ptr [ %i.ml, %._crit_edge.i27 ], [ %60, %59 ]
  %61 = icmp ult i64 %i.mt, 288
  br i1 %61, label %_ZN3gmx9BiasState12normalizePmfEi.exit, label %.lr.ph35.i

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader, %75
  %.030.i = phi double [ %.1.i, %75 ], [ 0.000000e+00, %.lr.ph.i25.preheader ] ; 2 uses
  %.01729.i = phi double [ %.118.i, %75 ], [ 0.000000e+00, %.lr.ph.i25.preheader ] ; 2 uses
  %.sroa.023.028.i = phi ptr [ %76, %75 ], [ %i.ml, %.lr.ph.i25.preheader ] ; 4 uses
  %62 = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i, i64 16
  %63 = load double, ptr %62, align 8, !tbaa !21
  %64 = fcmp ogt double %63, 0.000000e+00
  br i1 %64, label %65, label %75

65:                                               ; preds = %.lr.ph.i25
  %66 = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i, i64 64
  %67 = load double, ptr %66, align 8, !tbaa !22
  %68 = call double @exp(double noundef %67) #32
  %69 = fadd double %.01729.i, %68
  %70 = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i, i64 8
  %71 = load double, ptr %70, align 8, !tbaa !90
  %72 = fneg double %71
  %73 = call double @exp(double noundef %72) #32
  %74 = fadd double %.030.i, %73
  br label %75

75:                                               ; preds = %65, %.lr.ph.i25
  %.118.i = phi double [ %69, %65 ], [ %.01729.i, %.lr.ph.i25 ] ; 2 uses
  %.1.i = phi double [ %74, %65 ], [ %.030.i, %.lr.ph.i25 ] ; 2 uses
  %76 = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i, i64 96 ; 2 uses
  %.not.i26 = icmp eq ptr %76, %i.mo
  br i1 %.not.i26, label %._crit_edge.i27, label %.lr.ph.i25

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.prol.loopexit, %103
  %.sroa.019.033.i = phi ptr [ %104, %103 ], [ %.sroa.019.033.i.unr, %.lr.ph35.i.prol.loopexit ] ; 9 uses
  %77 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 16
  %78 = load double, ptr %77, align 8, !tbaa !21
  %79 = fcmp ogt double %78, 0.000000e+00
  br i1 %79, label %80, label %.lr.ph35.i.1

80:                                               ; preds = %.lr.ph35.i
  %81 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 64 ; 2 uses
  %82 = load double, ptr %81, align 8, !tbaa !22
  %83 = fadd double %51, %82
  store double %83, ptr %81, align 8, !tbaa !22
  br label %.lr.ph35.i.1

.lr.ph35.i.1:                                     ; preds = %80, %.lr.ph35.i
  %84 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 112
  %85 = load double, ptr %84, align 8, !tbaa !21
  %86 = fcmp ogt double %85, 0.000000e+00
  br i1 %86, label %87, label %.lr.ph35.i.2

87:                                               ; preds = %.lr.ph35.i.1
  %88 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 160 ; 2 uses
  %89 = load double, ptr %88, align 8, !tbaa !22
  %90 = fadd double %51, %89
  store double %90, ptr %88, align 8, !tbaa !22
  br label %.lr.ph35.i.2

.lr.ph35.i.2:                                     ; preds = %87, %.lr.ph35.i.1
  %91 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 208
  %92 = load double, ptr %91, align 8, !tbaa !21
  %93 = fcmp ogt double %92, 0.000000e+00
  br i1 %93, label %94, label %.lr.ph35.i.3

94:                                               ; preds = %.lr.ph35.i.2
  %95 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 256 ; 2 uses
  %96 = load double, ptr %95, align 8, !tbaa !22
  %97 = fadd double %51, %96
  store double %97, ptr %95, align 8, !tbaa !22
  br label %.lr.ph35.i.3

.lr.ph35.i.3:                                     ; preds = %94, %.lr.ph35.i.2
  %98 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 304
  %99 = load double, ptr %98, align 8, !tbaa !21
  %100 = fcmp ogt double %99, 0.000000e+00
  br i1 %100, label %._crit_edge52, label %103

._crit_edge52:                                    ; preds = %.lr.ph35.i.3
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 352 ; 2 uses
  %101 = load double, ptr %i.nq, align 8, !tbaa !22
  %102 = fadd double %51, %101
  store double %102, ptr %i.nq, align 8, !tbaa !22
  br label %103

103:                                              ; preds = %._crit_edge52, %.lr.ph35.i.3
  %104 = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 384 ; 2 uses
  %.not26.i.3 = icmp eq ptr %104, %i.mo
  br i1 %.not26.i.3, label %_ZN3gmx9BiasState12normalizePmfEi.exit, label %.lr.ph35.i

_ZN3gmx9BiasState12normalizePmfEi.exit:           ; preds = %.lr.ph35.i.prol.loopexit, %103, %bb.dj
  ret void

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %.sroa.025.049 = phi ptr [ %i.nv, %.lr.ph51 ], [ %.sroa.025.049.ph, %.lr.ph51.preheader ] ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.025.049, i64 16
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !21
  %i.nt = fmul double %i.mr, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.025.049, i64 48
  store double %i.nt, ptr %i.nu, align 8, !tbaa !93
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.025.049, i64 96 ; 2 uses
  %.not40 = icmp eq ptr %i.nv, %i.mo
  br i1 %.not40, label %.lr.ph.i25.preheader, label %.lr.ph51, !llvm.loop !435
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #12

declare void @_Z11readXvgDataRKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind writable sret(%"class.gmx::MultiDimArray") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !71
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.d, ptr %i.a, align 8, !tbaa !73
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !52
  %i.j = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %i.j, ptr %i.e, align 8, !tbaa !53
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !53
  store i8 %i.l, ptr %i.k, align 1, !tbaa !53
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !72
  %i.o = load ptr, ptr %0, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.t) #32
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #32
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !53
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN3gmx17mapGridToDataGridEPSt6vectorIiSaIiEERKNS_13MultiDimArrayIS0_IdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8BiasGridESK_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx9BiasStateC2ERKNS_13AwhBiasParamsEdNS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridEPKNS_11BiasSharingE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, double noundef %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.0", align 8     ; 12 uses
  %i.a = ptrtoint ptr %4 to i64
  %i.b = ptrtoint ptr %3 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %i.c
  tail call void @_ZN3gmx10CoordStateC1ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr %3, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !32     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 72                  ; 7 uses
  %i.m = icmp ugt i64 %i.l, 96076792050570581
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIN3gmx10PointStateESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

_ZNSt6vectorIN3gmx10PointStateESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.loopexit56, label %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN3gmx10PointStateESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.n = mul nuw nsw i64 %i.l, 96
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 4 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !461
  %xtraiter = and i64 %i.l, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i ] ; 6 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.013.i.i.i.i.i.prol, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.r, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !93
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %i.v = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 96 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !453

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.l, %_ZNSt12_Vector_baseIN3gmx10PointStateESaIS1_EEC2EmRKS2_.exit.i ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.l, 8
  br i1 %i.x, label %.loopexit56, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 41 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.013.i.i.i.i.i, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !93
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.af, align 8, !tbaa !93
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 224
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, i8 0, i64 40, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 288
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.am, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !93
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 384
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.as, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 416
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.au, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, i8 0, i64 40, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 480
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.ax, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 512
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.az, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i8 0, i64 40, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 576
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bb, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.bc, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 608
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.be, align 8, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i8 0, i64 40, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 672
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bg, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.bh, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 704
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 720
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.bj, align 8, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i8 0, i64 40, i1 false)
  %i.bl = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit56, label %.lr.ph.i.i.i.i.i, !llvm.loop !454

.loopexit56:                                      ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIN3gmx10PointStateESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN3gmx10PointStateESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bn, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !31  ; 2 uses
  %i.bq = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 72                ; 4 uses
  %i.bv = icmp ugt i64 %i.bu, 1152921504606846975
  br i1 %i.bv, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %.loopexit56
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc29 unwind label %bb.l

.noexc29:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i28 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.i.i28, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bw = shl nuw nsw i64 %i.bu, 3
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #30
          to label %.noexc30 unwind label %bb.l   ; 4 uses

.noexc30:                                         ; preds = %bb.c
  store ptr %i.bx, ptr %i.bo, align 8, !tbaa !81
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !182
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !42
  %i.ca = getelementptr i8, ptr %i.bx, i64 8      ; 3 uses
  %i.cb = add nsw i64 %i.bu, -1                   ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc30
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cb, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !42
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc30
  %.0.i.i.i.i.i = phi ptr [ %i.cd, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ca, %.noexc30 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.0.i.i.i.i.i, ptr %i.ce, align 8, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN3gmx13HistogramSizeC1ERKNS_13AwhBiasParamsEd(ptr noundef nonnull align 8 dereferenceable(65) %i.cf, ptr noundef nonnull align 8 dereferenceable(104) %1, double noundef %2)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %6, ptr %i.cg, align 8, !tbaa !118
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !31  ; 2 uses
  %i.cj = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 72                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.co = sdiv exact i64 %i.c, 40                 ; 9 uses
  %i.cp = add nsw i64 %i.co, 1
  %i.cq = mul i64 %i.cp, %i.co                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 1                       ; 3 uses
  %i.cs = icmp ugt i64 %i.cq, 2305843009213693951
  br i1 %i.cs, label %bb.e, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i32

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc35 unwind label %bb.n

.noexc35:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i32: ; preds = %bb.d
  %.not.i.i.i.i33 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i.i33, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34, label %bb.f

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i32
  %i.ct = shl nuw nsw i64 %i.cr, 3                ; 3 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #30
          to label %.noexc36 unwind label %bb.n   ; 4 uses

.noexc36:                                         ; preds = %bb.f
  store ptr %i.cu, ptr %7, align 8, !tbaa !81
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !182
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %i.ct, i1 false), !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc36, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i34 ], [ %i.cx, %.noexc36 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cy, align 8, !tbaa !80
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.da = icmp ugt i64 %i.cn, 384307168202282325
  br i1 %i.da, label %bb.g, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.g:                                             ; preds = %.loopexit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc38 unwind label %bb.o

.noexc38:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i37 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i.i.i37, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.db = mul nuw nsw i64 %i.cn, 24
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #30
          to label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.o

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.dd = phi ptr [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.dc, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !77
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !462
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.cn
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !463
  %i.dh = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.dd, i64 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !463
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dn) #31
  br label %.body

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !462
  %i.do = load ptr, ptr %7, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !182
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.not = icmp eq ptr %4, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !132
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.dy = getelementptr inbounds nuw [72 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 11 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 11 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  %min.iters.check = icmp ult i64 %i.co, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ec = shl nsw i64 %i.co, 2                    ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 176
  %i.ef = mul nuw nsw i64 %i.dw, 72
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.ec
  %i.ei = getelementptr i8, ptr %i.eh, i64 32
  %bound0 = icmp ult ptr %i.ea, %i.ei
  %bound1 = icmp ult ptr %i.dz, %i.ee
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index
  %wide.load = load <4 x i32>, ptr %i.ej, align 4, !tbaa !39, !alias.scope !464 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index
  store <4 x i32> %wide.load, ptr %i.ek, align 8, !tbaa !39, !alias.scope !465, !noalias !464
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index
  store <4 x i32> %wide.load, ptr %i.el, align 8, !tbaa !39, !alias.scope !465, !noalias !464
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !458

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.01857.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.en = sub nsw i64 %i.co, %.01857.ph
  %xtraiter69 = and i64 %i.en, 7                  ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01857.prol = phi i64 [ %i.es, %scalar.ph.prol ], [ %.01857.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter71 = phi i64 [ %prol.iter71.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.01857.prol
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !39 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01857.prol
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !39
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.01857.prol
  store i32 %i.ep, ptr %i.er, align 4, !tbaa !39
  %i.es = add nuw i64 %.01857.prol, 1             ; 2 uses
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !459

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01857.unr = phi i64 [ %.01857.ph, %scalar.ph.preheader ], [ %i.es, %scalar.ph.prol ]
  %i.et = sub nsw i64 %.01857.ph, %i.co
  %i.eu = icmp ugt i64 %i.et, -8
  br i1 %i.eu, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEED2Ev.exit
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit46

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEED2Ev.exit

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit43

bb.o:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %bb.g
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ey, %bb.o ], [ %i.di, %bb.i ], [ %i.di, %bb.h ] ; 2 uses
  %i.ez = load ptr, ptr %7, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIdSaIdEED2Ev.exit43, label %bb.p

bb.p:                                             ; preds = %.body
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !182
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit43

_ZNSt6vectorIdSaIdEED2Ev.exit43:                  ; preds = %bb.p, %.body, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.n ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ff = load ptr, ptr %i.ch, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit43
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !164
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #31
  br label %_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEED2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01857 = phi i64 [ %i.gy, %scalar.ph ], [ %.01857.unr, %scalar.ph.prol.loopexit ] ; 11 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.01857
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !39 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01857
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !39
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.01857
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !39
  %i.fp = add nuw i64 %.01857, 1                  ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !39 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fp
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !39
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.fp
  store i32 %i.fr, ptr %i.ft, align 4, !tbaa !39
  %i.fu = add nuw i64 %.01857, 2                  ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !39 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fu
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !39
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.fu
  store i32 %i.fw, ptr %i.fy, align 4, !tbaa !39
  %i.fz = add nuw i64 %.01857, 3                  ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !39 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fz
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !39
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.fz
  store i32 %i.gb, ptr %i.gd, align 4, !tbaa !39
  %i.ge = add nuw i64 %.01857, 4                  ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !39 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ge
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !39
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ge
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !39
  %i.gj = add nuw i64 %.01857, 5                  ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !39 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gj
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !39
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.gj
  store i32 %i.gl, ptr %i.gn, align 4, !tbaa !39
  %i.go = add nuw i64 %.01857, 6                  ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !39 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.go
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !39
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.go
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !39
  %i.gt = add nuw i64 %.01857, 7                  ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !39 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gt
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !39
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.gt
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !39
  %i.gy = add nuw i64 %.01857, 8                  ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gy, %i.co
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !460

_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEED2Ev.exit: ; preds = %bb.q, %_ZNSt6vectorIdSaIdEED2Ev.exit43, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.m ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit43 ], [ %.pn, %bb.q ] ; 2 uses
  %i.gz = load ptr, ptr %i.bo, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIdSaIdEED2Ev.exit46, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEED2Ev.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !182
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit46

_ZNSt6vectorIdSaIdEED2Ev.exit46:                  ; preds = %bb.r, %_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEED2Ev.exit, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.l ], [ %.pn.pn, %_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEED2Ev.exit ], [ %.pn.pn, %bb.r ]
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN3gmx10PointStateESaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit46
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !461
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #31
  br label %_ZNSt6vectorIN3gmx10PointStateESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx10PointStateESaIS1_EED2Ev.exit: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEED2Ev.exit46
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN3gmx10CoordStateC1ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(104), ptr, ptr, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN3gmx13HistogramSizeC1ERKNS_13AwhBiasParamsEd(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(104), double noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !81
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %bb.g ] ; 2 uses
  %.018 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.g ] ; 6 uses
  %.01117 = phi i64 [ %1, %.lr.ph ], [ %i.v, %bb.g ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !82

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !182
  %i.m = load ptr, ptr %2, align 8, !tbaa !83     ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !84

bb.d:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load double, ptr %i.m, align 8, !tbaa !42
  store double %i.t, ptr %i.i, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !80
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !466

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %lpad.loopexit.split-lp31, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #29
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #33
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #31
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i:      ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !467

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { cold noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN3gmx10PointStateE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN3gmx10PointStateESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"_ZTSN3gmx10PointStateE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88}
!21 = !{!20, !18, i64 16}
!22 = !{!20, !18, i64 64}
!23 = !{!"float", !9, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"p1 _ZTSN3gmx9GridPointE", !13, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN3gmx9GridPointESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 8}
!32 = !{!30, !29, i64 0}
!33 = !{!"p1 float", !13, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 8}
!36 = !{!34, !33, i64 0}
!37 = !{!"p1 int", !13, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!10, !10, i64 0}
!40 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !9, i64 0, !9, i64 24}
!41 = !{!40, !9, i64 24}
!42 = !{!18, !18, i64 0}
!43 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!44 = !{!"_ZTSN3gmx9DimParams13PullDimParamsE", !18, i64 0, !18, i64 8, !18, i64 16}
!45 = !{!44, !18, i64 8}
!46 = !{!"vtable pointer", !8, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p1 omnipotent char", !13, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !19, i64 8, !9, i64 16}
!52 = !{!51, !48, i64 0}
!53 = !{!9, !9, i64 0}
!54 = !{!"_ZTSSt9exception"}
!55 = !{!"_ZTSSt18bad_variant_access", !54, i64 0, !48, i64 8}
!56 = !{!55, !48, i64 8}
!57 = !{!34, !33, i64 16}
!58 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 4, !39}
!59 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !13, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!62 = !{!"_ZTSSt10type_index", !61, i64 0}
!63 = !{!62, !61, i64 0}
!64 = !{!13, !13, i64 0}
!65 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!66 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0}
!67 = !{!66, !65, i64 0}
!68 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !13, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0, !66, i64 8}
!70 = !{!69, !68, i64 0}
!71 = !{!50, !48, i64 0}
!72 = !{!51, !19, i64 8}
!73 = !{!19, !19, i64 0}
!74 = !{!20, !18, i64 40}
!75 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !13, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!76, !75, i64 0}
!78 = !{!"p1 double", !13, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!79, !78, i64 8}
!81 = !{!79, !78, i64 0}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{!78, !78, i64 0}
!84 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!85 = !{!"_ZTSN3gmx13AwhTargetTypeE", !9, i64 0}
!86 = !{!"bool", !9, i64 0}
!87 = !{!"_ZTSN3gmx10BiasParamsE", !18, i64 0, !19, i64 8, !10, i64 16, !19, i64 24, !19, i64 32, !85, i64 40, !86, i64 44, !18, i64 48, !18, i64 56, !18, i64 64, !86, i64 72, !10, i64 76, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !9, i64 112, !86, i64 128, !10, i64 132, !86, i64 136}
!88 = !{!87, !85, i64 40}
!89 = !{!14, !14, i64 0}
!90 = !{!20, !18, i64 8}
!91 = !{!87, !18, i64 56}
!92 = !{!20, !18, i64 24}
!93 = !{!20, !18, i64 48}
!94 = !{!87, !86, i64 44}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!"_ZTSN3gmx13HistogramSizeE", !19, i64 0, !18, i64 8, !86, i64 16, !18, i64 24, !86, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !86, i64 64}
!98 = !{!97, !86, i64 16}
!99 = !{!"branch_weights", i32 4, i32 12}
!100 = !{!87, !10, i64 76}
!101 = !{!20, !18, i64 88}
end_hunk_2
begin_hunk_3_@llvm.smax.v4i32
!234 = !{!"_ZTSSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EE", !233, i64 0}
!235 = !{!"_ZTSSt6vectorIN3gmx17CorrelationTensorESaIS1_EE", !234, i64 0}
!236 = !{!"_ZTSN3gmx15CorrelationGridE", !18, i64 0, !232, i64 8, !235, i64 16}
!237 = !{!236, !18, i64 0}
!238 = distinct !{!238, !25}
!239 = distinct !{!239, !25}
!240 = distinct !{!240, i1 true, !"_ZN3gmx12_GLOBAL__N_120gridPointValueStringB5cxx11ERKNS_8BiasGridEi"}
!241 = distinct !{!241, !240, !"_ZN3gmx12_GLOBAL__N_120gridPointValueStringB5cxx11ERKNS_8BiasGridEi: argument 0"}
!242 = distinct !{!242, !25}
!243 = distinct !{!243, !25}
!244 = !{!241}
!245 = distinct !{!245, !25}
!246 = !{!44, !18, i64 0}
!247 = distinct !{!247, i1 false, !"LVerDomain"}
!248 = distinct !{!248, !247}
!249 = distinct !{!249, !247}
!250 = distinct !{!250, !25, !26, !27}
!251 = distinct !{!251, !25, !26, !27}
!252 = distinct !{!252, !28}
!253 = distinct !{!253, !25, !26}
!254 = distinct !{!254, !25}
!255 = !{!248}
!256 = !{!249}
!257 = distinct !{!257, i1 false, !"LVerDomain"}
!258 = distinct !{!258, !257}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !25, !26, !27}
!261 = distinct !{!261, !25, !26, !27}
!262 = distinct !{!262, !28}
!263 = distinct !{!263, !25, !26}
!264 = !{!258}
!265 = !{!259}
!266 = distinct !{null, null, null}
!267 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!268 = !{!267, !10, i64 8}
!269 = !{!267, !10, i64 12}
!270 = distinct !{!270, i1 false, !"LVerDomain"}
!271 = distinct !{!271, !270}
!272 = distinct !{!272, !270}
!273 = distinct !{!273, !25, !26, !27}
!274 = distinct !{!274, !28}
!275 = distinct !{!275, !25, !26}
!276 = !{!271}
!277 = !{!272}
!278 = distinct !{!278, !25}
!279 = distinct !{!279, !25}
!280 = distinct !{!280, !25}
!281 = distinct !{!281, !25}
!282 = distinct !{!282, !25, !26, !27}
!283 = distinct !{!283, !25, !26, !27}
!284 = distinct !{!284, !25, !26, !27}
!285 = distinct !{!285, !25, !26, !27}
!286 = distinct !{!286, !25, !27, !26}
!287 = distinct !{!287, !25}
!288 = distinct !{!288, !25, !27, !26}
!289 = distinct !{!289, !25, !26, !27}
!290 = distinct !{!290, !25, !26, !27}
!291 = distinct !{!291, !25, !26, !27}
!292 = distinct !{!292, !25, !26, !27}
!293 = distinct !{!293, !25, !27, !26}
!294 = distinct !{!294, !25, !27, !26}
!295 = distinct !{!295, !25}
!296 = distinct !{!296, !25}
!297 = distinct !{!297, !25}
!298 = distinct !{!298, !25}
!299 = !{!128, !18, i64 24}
!300 = !{!"branch_weights", i32 4, i32 28}
!301 = distinct !{!301, !25}
!302 = distinct !{!302, !25}
!303 = distinct !{!303, !25}
!304 = distinct !{!304, !25}
!305 = distinct !{!305, !25, !26, !27}
!306 = distinct !{!306, !25, !26, !27}
!307 = distinct !{!307, !25, !27, !26}
!308 = distinct !{!308, !25, !26, !27}
!309 = distinct !{!309, !25, !26, !27}
!310 = distinct !{!310, !25, !27, !26}
!311 = distinct !{!311, !25, !26, !27}
!312 = distinct !{!312, !25, !26, !27}
!313 = distinct !{!313, !25, !27, !26}
!314 = distinct !{!314, !25, !26, !27}
!315 = distinct !{!315, !25, !26, !27}
!316 = distinct !{!316, !25, !27, !26}
!317 = distinct !{!317, !25, !26, !27}
!318 = distinct !{!318, !25, !27, !26}
!319 = distinct !{!319, !25}
!320 = distinct !{!320, i1 false, !"LVerDomain"}
!321 = distinct !{!321, !320}
!322 = distinct !{!322, !320}
!323 = distinct !{!323, !25, !26, !27}
!324 = distinct !{!324, !28}
!325 = distinct !{!325, !25, !26}
!326 = distinct !{!326, !25}
!327 = distinct !{!327, !25}
!328 = distinct !{!328, !25}
!329 = distinct !{!329, !25}
!330 = distinct !{!330, !25}
!331 = !{!321}
!332 = !{!322}
!333 = !{!20, !18, i64 72}
!334 = !{!87, !19, i64 24}
!335 = !{!87, !19, i64 32}
!336 = !{!87, !86, i64 136}
!337 = distinct !{!337, !25, !26, !27}
!338 = distinct !{!338, !25, !26, !27}
!339 = distinct !{!339, !25, !27, !26}
!340 = distinct !{!340, !25}
!341 = distinct !{!341, !25}
!342 = distinct !{!342, !25}
!343 = distinct !{!343, !26, !27}
!344 = distinct !{!344, !26, !27}
!345 = distinct !{!345, !27, !26}
!346 = !{!124, !124, i64 0}
!347 = distinct !{!347, i1 true, !"_ZSt19__relocate_object_aIddN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!348 = distinct !{!348, !347, !"_ZSt19__relocate_object_aIddN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!349 = distinct !{!349, !347, !"_ZSt19__relocate_object_aIddN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!350 = distinct !{!350, !25, !26, !27}
!351 = distinct !{!351, !25, !26, !27}
!352 = distinct !{!352, !25, !26}
!353 = !{!165, !78, i64 16}
!354 = !{!348}
!355 = !{!349}
!356 = distinct !{!356, !28}
!357 = distinct !{!357, i1 false, !"LVerDomain"}
!358 = distinct !{!358, !357}
!359 = distinct !{!359, !357}
!360 = distinct !{!360, !357}
!361 = distinct !{!361, !357}
!362 = distinct !{!362, !25, !26, !27}
!363 = distinct !{!363, !25, !26}
!364 = !{!358}
!365 = !{!359}
!366 = !{!360}
!367 = !{!361}
!368 = !{!359, !358, !360}
!369 = distinct !{!369, i1 true, !"_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE"}
!370 = distinct !{!370, !369, !"_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE: argument 0"}
!371 = distinct !{!371, !25}
!372 = distinct !{!372, !28}
!373 = distinct !{!373, !25}
!374 = distinct !{!374, !28}
!375 = distinct !{!375, i1 false, !"LVerDomain"}
!376 = distinct !{!376, !375}
!377 = distinct !{!377, !375}
!378 = distinct !{!378, !375}
!379 = distinct !{!379, !375}
!380 = distinct !{!380, !25, !26, !27}
!381 = distinct !{!381, !25, !26}
!382 = !{!370}
!383 = !{!"p1 _ZTSN3gmx9DimParamsE", !13, i64 0}
!384 = !{!"_ZTSNSt12_Vector_baseIN3gmx9DimParamsESaIS1_EE17_Vector_impl_dataE", !383, i64 0, !383, i64 8, !383, i64 16}
!385 = !{!384, !383, i64 0}
!386 = !{!384, !383, i64 8}
!387 = !{!376}
!388 = !{!377}
!389 = !{!378}
!390 = !{!379}
!391 = !{!377, !376, !378}
!392 = distinct !{!392, !25}
!393 = !{!169, !168, i64 16}
!394 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !42, i64 24, i64 8, !42, i64 32, i64 8, !42, i64 40, i64 8, !42, i64 48, i64 8, !42, i64 56, i64 8, !73, i64 64, i64 8, !42, i64 72, i64 8, !42, i64 80, i64 8, !42, i64 88, i64 8, !42}
!395 = distinct !{!395, !25}
!396 = !{!172, !10, i64 0}
!397 = distinct !{!397, i1 false, !"LVerDomain"}
!398 = distinct !{!398, !397}
!399 = distinct !{!399, !397}
!400 = distinct !{!400, !25, !26, !27}
!401 = distinct !{!401, !25, !26, !27}
!402 = distinct !{!402, !28}
!403 = distinct !{!403, !25}
!404 = distinct !{!404, !25, !26}
!405 = !{!398}
!406 = !{!399}
!407 = !{!"p1 _ZTS10tmpi_comm_", !13, i64 0}
!408 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !13, i64 0}
!409 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !408, i64 0}
!410 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !409, i64 0}
!411 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !410, i64 0}
!412 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !411, i64 0}
!413 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !412, i64 0}
!414 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !413, i64 0}
!415 = !{!"_ZTSN3gmx7MpiCommE", !407, i64 0, !10, i64 8, !10, i64 12, !414, i64 16}
!416 = !{!415, !407, i64 0}
!417 = distinct !{!417, !25, !26, !27}
!418 = distinct !{!418, !25, !26, !27}
!419 = distinct !{!419, !25, !27, !26}
!420 = distinct !{!420, i1 true, !"_ZNK3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE11asConstViewEv"}
!421 = distinct !{!421, !420, !"_ZNK3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE11asConstViewEv: argument 0"}
!422 = distinct !{!422, !25}
!423 = distinct !{!423, !25}
!424 = distinct !{!424, !25, !26, !27}
!425 = distinct !{!425, !25, !26, !27}
!426 = distinct !{!426, !25, !27, !26}
!427 = distinct !{!427, !25}
!428 = distinct !{!428, !25}
!429 = distinct !{!429, !25, !26, !27}
!430 = distinct !{!430, !25, !26, !27}
!431 = distinct !{!431, !25, !27, !26}
!432 = distinct !{!432, !26, !27}
!433 = distinct !{!433, !26, !27}
!434 = distinct !{!434, !28}
!435 = distinct !{!435, !27, !26}
!436 = !{!"p1 _ZTSN3gmx12AwhDimParamsE", !13, i64 0}
!437 = !{!"_ZTSNSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE17_Vector_impl_dataE", !436, i64 0, !436, i64 8, !436, i64 16}
!438 = !{!"_ZTSNSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE12_Vector_implE", !437, i64 0}
!439 = !{!"_ZTSSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE", !438, i64 0}
!440 = !{!"_ZTSSt6vectorIN3gmx12AwhDimParamsESaIS1_EE", !439, i64 0}
!441 = !{!"_ZTSN3gmx22AwhHistogramGrowthTypeE", !9, i64 0}
!442 = !{!"_ZTSN3gmx13AwhBiasParamsE", !440, i64 0, !85, i64 24, !18, i64 32, !18, i64 40, !441, i64 48, !18, i64 56, !86, i64 64, !86, i64 65, !18, i64 72, !18, i64 80, !10, i64 88, !86, i64 92, !18, i64 96}
!443 = !{!442, !86, i64 64}
!444 = !{!421}
!445 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb1EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !40, i64 0}
!446 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb1EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !445, i64 0}
!447 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !446, i64 0}
!448 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !447, i64 0}
!449 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !448, i64 0}
!450 = !{!"_ZTSSt7variantIJN3gmx9DimParams13PullDimParamsENS1_12FepDimParamsEEE", !449, i64 0}
!451 = !{!"_ZTSN3gmx9DimParamsE", !450, i64 0, !18, i64 32}
!452 = !{!451, !18, i64 32}
!453 = distinct !{!453, !28}
!454 = distinct !{!454, !25}
!455 = distinct !{!455, i1 false, !"LVerDomain"}
!456 = distinct !{!456, !455}
!457 = distinct !{!457, !455}
!458 = distinct !{!458, !25, !26, !27}
!459 = distinct !{!459, !28}
!460 = distinct !{!460, !25, !26}
!461 = !{!15, !14, i64 16}
!462 = !{!76, !75, i64 8}
!463 = !{!76, !75, i64 16}
!464 = !{!456}
!465 = !{!457}
!466 = distinct !{!466, !25}
!467 = distinct !{!467, !25}
end_hunk_3
