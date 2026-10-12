Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metadata?download=true
inline.NumInlined: 5658
inline.NumDeleted: 1671
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8LightGBM8Metadata16InsertInitScoresEPKdiii:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i64 %.0.i20 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.x = load i32, ptr %i.e, align 8, !tbaa !57
  %i.y = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.z = mul nsw i32 %i.x, %i.y
  %i.aa = add nsw i32 %i.z, %2
  %i.ab = mul nsw i64 %indvars.iv.epil.init, %i.v
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.af, i64 %i.u, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNK8LightGBM8Metadata22num_init_score_classesEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 299
  store i8 0, ptr %i.ag, align 1, !tbaa !108
  ret void

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !57
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = mul nsw i32 %i.ah, %i.ai
  %i.ak = add nsw i32 %i.aj, %2
  %i.al = mul nsw i64 %indvars.iv, %i.v
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ao, ptr align 8 %i.ap, i64 %i.u, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !57
  %i.ar = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.as = mul nsw i32 %i.aq, %i.ar
  %i.at = add nsw i32 %i.as, %2
  %i.au = mul nsw i64 %indvars.iv.next, %i.v
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ax, ptr align 8 %i.ay, i64 %i.u, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !9
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8Metadata8SetLabelEPKfi(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.split5, label %.split

.split5:                                          ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.84)
  br label %.split

.split:                                           ; preds = %bb.a, %.split5
  %.sink7 = phi ptr [ null, %.split5 ], [ %1, %bb.a ] ; 2 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.sink7, i64 %i.b
  tail call void @_ZN8LightGBM8Metadata21SetLabelsFromIteratorIPKfEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %.sink7, ptr noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM8Metadata21SetLabelsFromIteratorIPKfEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = sext i32 %i.g to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %.not = icmp eq i64 %i.l, %i.h
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.85)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %.not8 = icmp eq i32 %i.t, 0
  br i1 %.not8, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %i.t to i64
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.u)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.d

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.e
  %i.v = invoke i32 @OMP_NUM_THREADS()
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.v)
  %i.w = load i32, ptr %i.f, align 8, !tbaa !57
  %i.x = icmp sgt i32 %i.w, 1023
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN8LightGBM8Metadata21SetLabelsFromIteratorIPKfEEvT_S4_.omp_outlined, ptr nonnull %0, ptr nonnull %i.a)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.c)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !76
  call void @_ZN8LightGBM8Metadata21SetLabelsFromIteratorIPKfEEvT_S4_.omp_outlined(ptr nonnull %i.b, ptr nonnull poison, ptr nonnull %0, ptr %i.a) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM8Metadata21SetLabelsFromIteratorIPKfEEvT_S4_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.g, ptr %i.b, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.i = load i32, ptr %0, align 4, !tbaa !76     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !76
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !76   ; 2 uses
  %.not17 = icmp sgt i32 %i.k, %i.j
  br i1 %.not17, label %bb.e, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !109    ; 3 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84   ; 3 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %i.r = sext i32 %i.k to i64                     ; 2 uses
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  %i.t = sub i64 %i.m, %i.p
  %diff.check = icmp ugt i64 %i.t, -16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.u = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ap, %.loopexit ] ; 2 uses
  %4 = mul i64 %indvar, %i.s
  %5 = add i64 %4, %i.r
  %6 = sext i32 %i.u to i64                       ; 2 uses
  %7 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %6)
  %reass.sub = sub i64 %7, %5
  %i.v = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.w = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = add i64 %indvars.iv, %index              ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.x
  %wide.load = load <4 x float>, ptr %i.y, align 4, !tbaa !83 ; 3 uses
  %i.z = fcmp ord <4 x float> %wide.load, zeroinitializer ; 2 uses
  %i.aa = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.ab = fcmp oge <4 x double> %i.aa, splat (double f0x47D2CED32A16A1B1)
  %i.ac = fcmp ugt <4 x double> %i.aa, splat (double f0xC7D2CED32A16A1B1)
  %i.ad = select <4 x i1> %i.ac, <4 x float> %wide.load, <4 x float> splat (float f0xFE967699)
  %i.ae = and <4 x i1> %i.z, %i.ab
  %predphi = select <4 x i1> %i.ae, <4 x float> splat (float f0x7E967699), <4 x float> %i.ad
  %predphi33 = select <4 x i1> %i.z, <4 x float> %predphi, <4 x float> zeroinitializer
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.x
  store <4 x float> %predphi33, ptr %i.af, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %.preheader ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN8LightGBM6CommonL8AvoidInfEf.exit
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %_ZN8LightGBM6CommonL8AvoidInfEf.exit ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv22
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !83 ; 3 uses
  %i.aj = fcmp uno float %i.ai, 0.000000e+00
  br i1 %i.aj, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.ak = fpext float %i.ai to double             ; 2 uses
  %i.al = fcmp ult double %i.ak, f0x47D2CED32A16A1B1
  br i1 %i.al, label %bb.d, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

bb.d:                                             ; preds = %bb.c
  %i.am = fcmp ugt double %i.ak, f0xC7D2CED32A16A1B1
  %..i = select i1 %i.am, float %i.ai, float f0xFE967699
  br label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

_ZN8LightGBM6CommonL8AvoidInfEf.exit:             ; preds = %bb.d, %bb.c, %scalar.ph
  %.0.i = phi float [ f0x7E967699, %bb.c ], [ 0.000000e+00, %scalar.ph ], [ %..i, %bb.d ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv22
  store float %.0.i, ptr %i.an, align 4, !tbaa !83
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %6
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !616

.loopexit:                                        ; preds = %_ZN8LightGBM6CommonL8AvoidInfEf.exit, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.s    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.ao = add nsw i32 %i.q, %i.u
  %i.ap = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.ap, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ap, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !76
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8Metadata8SetLabelEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.102", align 8 ; 5 uses
  %3 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.102", align 8 ; 6 uses
  %4 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.101", align 8 ; 5 uses
  %5 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.101", align 8 ; 6 uses
  %6 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.100", align 8 ; 5 uses
  %7 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.100", align 8 ; 6 uses
  %8 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.99", align 8 ; 5 uses
  %9 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.99", align 8 ; 6 uses
  %10 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.98", align 8 ; 5 uses
  %11 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.98", align 8 ; 6 uses
  %12 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.97", align 8 ; 5 uses
  %13 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.97", align 8 ; 6 uses
  %14 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.96", align 8 ; 5 uses
  %15 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.96", align 8 ; 6 uses
  %16 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.95", align 8 ; 5 uses
  %17 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.95", align 8 ; 6 uses
  %18 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.94", align 8 ; 5 uses
  %19 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.94", align 8 ; 6 uses
  %20 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.93", align 8 ; 5 uses
  %21 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.93", align 8 ; 6 uses
  %22 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.92", align 8 ; 5 uses
  %23 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.92", align 8 ; 6 uses
  %24 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.81", align 8 ; 13 uses
  %25 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %26 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.82", align 8 ; 13 uses
  %27 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %28 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.83", align 8 ; 13 uses
  %29 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %30 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.84", align 8 ; 13 uses
  %31 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %32 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.85", align 8 ; 13 uses
  %33 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %34 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.86", align 8 ; 13 uses
  %35 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %36 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.87", align 8 ; 13 uses
  %37 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %38 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.88", align 8 ; 13 uses
  %39 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %40 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.89", align 8 ; 13 uses
  %41 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %42 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.90", align 8 ; 13 uses
  %43 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %44 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.91", align 8 ; 13 uses
  %45 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %46 = alloca %"class.LightGBM::ArrowChunkedArray", align 8 ; 11 uses
  %47 = alloca %"class.LightGBM::ArrowChunkedArray::View", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  call void @_ZN8LightGBM17ArrowChunkedArrayC2EP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(104) %46, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  invoke void @_ZNK8LightGBM17ArrowChunkedArray4viewEv(ptr dead_on_unwind nonnull writable sret(%"class.LightGBM::ArrowChunkedArray::View") align 8 %47, ptr noundef nonnull align 8 dereferenceable(104) %46)
          to label %bb.b unwind label %bb.ha

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  %i.a = load i32, ptr %47, align 8, !tbaa !151
  switch i32 %i.a, label %bb.gs [
    i32 4, label %bb.c
    i32 6, label %bb.r
    i32 8, label %bb.ag
    i32 10, label %bb.av
    i32 3, label %bb.bk
    i32 5, label %bb.bz
    i32 7, label %bb.co
    i32 9, label %bb.dd
    i32 12, label %bb.ds
    i32 13, label %bb.eh
    i32 2, label %bb.ew
    i32 1, label %_ZL15ArrowTypeString9ArrowType.exit.i
    i32 33, label %bb.gh
    i32 34, label %bb.gi
    i32 35, label %bb.gj
    i32 36, label %bb.gk
    i32 37, label %bb.gl
    i32 38, label %bb.gm
    i32 39, label %bb.gn
    i32 40, label %bb.go
    i32 41, label %bb.gp
    i32 11, label %bb.fl
    i32 45, label %bb.gr
    i32 44, label %bb.gq
    i32 14, label %bb.fm
    i32 15, label %bb.fn
    i32 16, label %bb.fo
    i32 17, label %bb.fp
    i32 18, label %bb.fq
    i32 19, label %bb.fr
    i32 20, label %bb.fs
    i32 21, label %bb.ft
    i32 22, label %bb.fu
    i32 23, label %bb.fv
    i32 42, label %bb.fw
    i32 43, label %bb.fx
    i32 24, label %bb.fy
    i32 25, label %bb.fz
    i32 26, label %bb.ga
    i32 27, label %bb.gb
    i32 28, label %bb.gc
    i32 29, label %bb.gd
    i32 30, label %bb.ge
    i32 31, label %bb.gf
    i32 32, label %bb.gg
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.b = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !144  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i161.i.invoke, label %_ZNSt15__new_allocatorIPK10ArrowArrayE8allocateEmPKv.exit.i.i.i.i.i, !prof !120

_ZNSt15__new_allocatorIPK10ArrowArrayE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36
          to label %.noexc5 unwind label %bb.hb

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIPK10ArrowArrayE8allocateEmPKv.exit.i.i.i.i.i
  %.pre20.i = load ptr, ptr %i.b, align 8, !tbaa !140 ; 2 uses
  %.pre21.i = load ptr, ptr %i.c, align 8, !tbaa !140
  %.pre22.i = ptrtoint ptr %.pre21.i to i64
  %.pre23.i = ptrtoint ptr %.pre20.i to i64
  br label %bb.e

bb.e:                                             ; preds = %.noexc5, %bb.c
  %.pre-phi24.i = phi i64 [ %.pre23.i, %.noexc5 ], [ %i.g, %bb.c ]
  %.pre-phi.i = phi i64 [ %.pre22.i, %.noexc5 ], [ %i.f, %bb.c ]
  %i.k = phi ptr [ %.pre20.i, %.noexc5 ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %i.j, %.noexc5 ], [ null, %bb.c ] ; 5 uses
  store ptr %i.l, ptr %25, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !142
  %i.p = sub i64 %.pre-phi.i, %.pre-phi24.i       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 8
  br i1 %i.q, label %bb.f, label %bb.g, !prof !115

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %i.p, 8
  br i1 %i.r, label %bb.h, label %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !157
  store ptr %i.s, ptr %i.l, align 8, !tbaa !157
  br label %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
end_hunk_0
begin_hunk_1_@_ZN8LightGBM8Metadata12InsertLabelsEPKfii:bb.a

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = sext i32 %i.k to i64
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.l)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !84
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.e
  %i.m = phi ptr [ %i.g, %bb.e ], [ %.pre, %bb.g ], [ %i.g, %bb.f ]
  %i.n = sext i32 %2 to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = sext i32 %3 to i64
  %i.q = shl nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.o, ptr align 4 %1, i64 %i.q, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8Metadata10SetWeightsEPKfi(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  tail call void @_ZN8LightGBM8Metadata22SetWeightsFromIteratorIPKfEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, ptr noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM8Metadata22SetWeightsFromIteratorIPKfEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = icmp eq ptr %2, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %.not.i.i4 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i4, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.h, ptr %i.i, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %bb.c, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !56
  br label %bb.o

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = sub i64 %i.m, %i.l
  %i.o = ashr exact i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.not = icmp eq i64 %i.o, %i.r
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.87)
          to label %._crit_edge unwind label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre9.pre = load i32, ptr %i.p, align 8, !tbaa !57
  br label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.m, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %.pre9 = phi i32 [ %.pre9.pre, %._crit_edge ], [ %i.q, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.h, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %.not17 = icmp eq i32 %.pre9, 0
  br i1 %.not17, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = sext i32 %.pre9 to i64
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.z)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge8 unwind label %bb.f

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge8:   ; preds = %bb.i
  %.pre = load i32, ptr %i.p, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.h, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge8, %bb.g
  %i.aa = phi i32 [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge8 ], [ %.pre9, %bb.g ], [ 0, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !56
  %i.ac = invoke i32 @OMP_NUM_THREADS()
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.ac)
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ae = icmp sgt i32 %i.ad, 1023
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN8LightGBM8Metadata22SetWeightsFromIteratorIPKfEEvT_S4_.omp_outlined, ptr nonnull %0, ptr nonnull %i.a)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.c)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !76
  call void @_ZN8LightGBM8Metadata22SetWeightsFromIteratorIPKfEEvT_S4_.omp_outlined(ptr nonnull %i.b, ptr nonnull poison, ptr nonnull %0, ptr %i.a) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  invoke void @_ZN8LightGBM8Metadata21CalculateQueryWeightsEv(ptr noundef nonnull align 8 dereferenceable(300) %0)
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.af, align 8, !tbaa !87
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.ag = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM8Metadata22SetWeightsFromIteratorIPKfEEvT_S4_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56   ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.g, ptr %i.b, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.i = load i32, ptr %0, align 4, !tbaa !76     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !76
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !76   ; 2 uses
  %.not17 = icmp sgt i32 %i.k, %i.j
  br i1 %.not17, label %bb.e, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !109    ; 3 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84   ; 3 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %i.r = sext i32 %i.k to i64                     ; 2 uses
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  %i.t = sub i64 %i.m, %i.p
  %diff.check = icmp ugt i64 %i.t, -16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.u = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ap, %.loopexit ] ; 2 uses
  %4 = mul i64 %indvar, %i.s
  %5 = add i64 %4, %i.r
  %6 = sext i32 %i.u to i64                       ; 2 uses
  %7 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %6)
  %reass.sub = sub i64 %7, %5
  %i.v = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.w = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = add i64 %indvars.iv, %index              ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.x
  %wide.load = load <4 x float>, ptr %i.y, align 4, !tbaa !83 ; 3 uses
  %i.z = fcmp ord <4 x float> %wide.load, zeroinitializer ; 2 uses
  %i.aa = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.ab = fcmp oge <4 x double> %i.aa, splat (double f0x47D2CED32A16A1B1)
  %i.ac = fcmp ugt <4 x double> %i.aa, splat (double f0xC7D2CED32A16A1B1)
  %i.ad = select <4 x i1> %i.ac, <4 x float> %wide.load, <4 x float> splat (float f0xFE967699)
  %i.ae = and <4 x i1> %i.z, %i.ab
  %predphi = select <4 x i1> %i.ae, <4 x float> splat (float f0x7E967699), <4 x float> %i.ad
  %predphi33 = select <4 x i1> %i.z, <4 x float> %predphi, <4 x float> zeroinitializer
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.x
  store <4 x float> %predphi33, ptr %i.af, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !749

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %.preheader ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN8LightGBM6CommonL8AvoidInfEf.exit
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %_ZN8LightGBM6CommonL8AvoidInfEf.exit ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv22
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !83 ; 3 uses
  %i.aj = fcmp uno float %i.ai, 0.000000e+00
  br i1 %i.aj, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.ak = fpext float %i.ai to double             ; 2 uses
  %i.al = fcmp ult double %i.ak, f0x47D2CED32A16A1B1
  br i1 %i.al, label %bb.d, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

bb.d:                                             ; preds = %bb.c
  %i.am = fcmp ugt double %i.ak, f0xC7D2CED32A16A1B1
  %..i = select i1 %i.am, float %i.ai, float f0xFE967699
  br label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

_ZN8LightGBM6CommonL8AvoidInfEf.exit:             ; preds = %bb.d, %bb.c, %scalar.ph
  %.0.i = phi float [ f0x7E967699, %bb.c ], [ 0.000000e+00, %scalar.ph ], [ %..i, %bb.d ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv22
  store float %.0.i, ptr %i.an, align 4, !tbaa !83
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %6
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !750

.loopexit:                                        ; preds = %_ZN8LightGBM6CommonL8AvoidInfEf.exit, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.s    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.ao = add nsw i32 %i.q, %i.u
  %i.ap = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.ap, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ap, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !76
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8Metadata10SetWeightsEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.102", align 8 ; 5 uses
  %3 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.102", align 8 ; 6 uses
  %4 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.101", align 8 ; 5 uses
  %5 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.101", align 8 ; 6 uses
  %6 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.100", align 8 ; 5 uses
  %7 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.100", align 8 ; 6 uses
  %8 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.99", align 8 ; 5 uses
  %9 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.99", align 8 ; 6 uses
  %10 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.98", align 8 ; 5 uses
  %11 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.98", align 8 ; 6 uses
  %12 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.97", align 8 ; 5 uses
  %13 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.97", align 8 ; 6 uses
  %14 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.96", align 8 ; 5 uses
  %15 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.96", align 8 ; 6 uses
  %16 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.95", align 8 ; 5 uses
  %17 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.95", align 8 ; 6 uses
  %18 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.94", align 8 ; 5 uses
  %19 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.94", align 8 ; 6 uses
  %20 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.93", align 8 ; 5 uses
  %21 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.93", align 8 ; 6 uses
  %22 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.92", align 8 ; 5 uses
  %23 = alloca %"class.LightGBM::ArrowChunkedArray::Iterator.92", align 8 ; 6 uses
  %24 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.81", align 8 ; 13 uses
  %25 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %26 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.82", align 8 ; 13 uses
  %27 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %28 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.83", align 8 ; 13 uses
  %29 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %30 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.84", align 8 ; 13 uses
  %31 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %32 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.85", align 8 ; 13 uses
  %33 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %34 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.86", align 8 ; 13 uses
  %35 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %36 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.87", align 8 ; 13 uses
  %37 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %38 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.88", align 8 ; 13 uses
  %39 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %40 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.89", align 8 ; 13 uses
  %41 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %42 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.90", align 8 ; 13 uses
  %43 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %44 = alloca %"class.LightGBM::ArrowChunkedArray::Visitor.91", align 8 ; 13 uses
  %45 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %46 = alloca %"class.LightGBM::ArrowChunkedArray", align 8 ; 11 uses
  %47 = alloca %"class.LightGBM::ArrowChunkedArray::View", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  call void @_ZN8LightGBM17ArrowChunkedArrayC2EP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(104) %46, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  invoke void @_ZNK8LightGBM17ArrowChunkedArray4viewEv(ptr dead_on_unwind nonnull writable sret(%"class.LightGBM::ArrowChunkedArray::View") align 8 %47, ptr noundef nonnull align 8 dereferenceable(104) %46)
          to label %bb.b unwind label %bb.ha

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  %i.a = load i32, ptr %47, align 8, !tbaa !151
  switch i32 %i.a, label %bb.gs [
    i32 4, label %bb.c
    i32 6, label %bb.r
    i32 8, label %bb.ag
    i32 10, label %bb.av
    i32 3, label %bb.bk
    i32 5, label %bb.bz
    i32 7, label %bb.co
    i32 9, label %bb.dd
    i32 12, label %bb.ds
    i32 13, label %bb.eh
    i32 2, label %bb.ew
    i32 1, label %_ZL15ArrowTypeString9ArrowType.exit.i
    i32 33, label %bb.gh
    i32 34, label %bb.gi
    i32 35, label %bb.gj
    i32 36, label %bb.gk
    i32 37, label %bb.gl
    i32 38, label %bb.gm
    i32 39, label %bb.gn
    i32 40, label %bb.go
    i32 41, label %bb.gp
    i32 11, label %bb.fl
    i32 45, label %bb.gr
    i32 44, label %bb.gq
    i32 14, label %bb.fm
    i32 15, label %bb.fn
    i32 16, label %bb.fo
    i32 17, label %bb.fp
    i32 18, label %bb.fq
    i32 19, label %bb.fr
    i32 20, label %bb.fs
    i32 21, label %bb.ft
    i32 22, label %bb.fu
    i32 23, label %bb.fv
    i32 42, label %bb.fw
    i32 43, label %bb.fx
    i32 24, label %bb.fy
    i32 25, label %bb.fz
    i32 26, label %bb.ga
    i32 27, label %bb.gb
    i32 28, label %bb.gc
    i32 29, label %bb.gd
    i32 30, label %bb.ge
    i32 31, label %bb.gf
    i32 32, label %bb.gg
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.b = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !144  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i161.i.invoke, label %_ZNSt15__new_allocatorIPK10ArrowArrayE8allocateEmPKv.exit.i.i.i.i.i, !prof !120

_ZNSt15__new_allocatorIPK10ArrowArrayE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36
          to label %.noexc5 unwind label %bb.hb

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIPK10ArrowArrayE8allocateEmPKv.exit.i.i.i.i.i
  %.pre20.i = load ptr, ptr %i.b, align 8, !tbaa !140 ; 2 uses
  %.pre21.i = load ptr, ptr %i.c, align 8, !tbaa !140
  %.pre22.i = ptrtoint ptr %.pre21.i to i64
  %.pre23.i = ptrtoint ptr %.pre20.i to i64
  br label %bb.e

bb.e:                                             ; preds = %.noexc5, %bb.c
  %.pre-phi24.i = phi i64 [ %.pre23.i, %.noexc5 ], [ %i.g, %bb.c ]
  %.pre-phi.i = phi i64 [ %.pre22.i, %.noexc5 ], [ %i.f, %bb.c ]
  %i.k = phi ptr [ %.pre20.i, %.noexc5 ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %i.j, %.noexc5 ], [ null, %bb.c ] ; 5 uses
  store ptr %i.l, ptr %25, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !142
  %i.p = sub i64 %.pre-phi.i, %.pre-phi24.i       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 8
  br i1 %i.q, label %bb.f, label %bb.g, !prof !115

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %i.p, 8
  br i1 %i.r, label %bb.h, label %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !157
  store ptr %i.s, ptr %i.l, align 8, !tbaa !157
  br label %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
end_hunk_1
