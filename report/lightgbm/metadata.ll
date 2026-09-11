Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metadata?download=true
inline.NumInlined: 5658
inline.NumDeleted: 1671
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8LightGBM8Metadata16CheckOrPartitionEiRKSt6vectorIiSaIiEE.omp_outlined.23:bb.a
  %.025.epil = phi i64 [ %.025.epil.init, %.epil.preheader ], [ %i.an, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.025.epil
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !76
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !104
  %i.am = getelementptr [8 x i8], ptr %i.ag, i64 %.025.epil
  store double %i.al, ptr %i.am, align 8, !tbaa !104
  %i.an = add nuw i64 %.025.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !446

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond33.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond33.not, label %._crit_edge30.split, label %.lr.ph

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.025 = phi i64 [ %i.bp, %.lr.ph.new ], [ 0, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.025
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !76
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.af, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !104
  %i.at = getelementptr [8 x i8], ptr %i.ag, i64 %.025
  store double %i.as, ptr %i.at, align 8, !tbaa !104
  %i.au = or disjoint i64 %.025, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !76
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.af, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !104
  %i.ba = getelementptr [8 x i8], ptr %i.ag, i64 %i.au
  store double %i.az, ptr %i.ba, align 8, !tbaa !104
  %i.bb = or disjoint i64 %.025, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !76
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %i.af, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !104
  %i.bh = getelementptr [8 x i8], ptr %i.ag, i64 %i.bb
  store double %i.bg, ptr %i.bh, align 8, !tbaa !104
  %i.bi = or disjoint i64 %.025, 3                ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !76
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %i.af, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !104
  %i.bo = getelementptr [8 x i8], ptr %i.ag, i64 %i.bi
  store double %i.bn, ptr %i.bo, align 8, !tbaa !104
  %i.bp = add nuw i64 %.025, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !447

._crit_edge30.split:                              ; preds = %._crit_edge, %.lr.ph29, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge30.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef %0, ...) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8Metadata12SetInitScoreEPKdi(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  tail call void @_ZN8LightGBM8Metadata25SetInitScoresFromIteratorIPKdEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, ptr noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM8Metadata25SetInitScoresFromIteratorIPKdEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !114
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %.not.i.i6 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i6, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.h, ptr %i.i, align 8, !tbaa !107
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.c, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.k, align 8, !tbaa !102
  br label %bb.m

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !57
  %i.r = sext i32 %i.q to i64
  %i.s = srem i64 %i.o, %i.r
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.20)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.o)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit unwind label %bb.f

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.h, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i64 %i.o, ptr %i.aa, align 8, !tbaa !102
  %i.ab = invoke i32 @OMP_NUM_THREADS()
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.ab)
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !102
  %i.ad = icmp sgt i64 %i.ac, 1023
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN8LightGBM8Metadata25SetInitScoresFromIteratorIPKdEEvT_S4_.omp_outlined, ptr nonnull %0, ptr nonnull %i.a)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.c)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !76
  call void @_ZN8LightGBM8Metadata25SetInitScoresFromIteratorIPKdEEvT_S4_.omp_outlined(ptr nonnull %i.b, ptr nonnull poison, ptr nonnull %0, ptr %i.a) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 299
  store i8 0, ptr %i.ae, align 1, !tbaa !108
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18 ; 0 uses
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM8Metadata25SetInitScoresFromIteratorIPKdEEvT_S4_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.g = add nsw i64 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.i = load i32, ptr %0, align 4, !tbaa !76     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 512)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !61
  %i.k = call i64 @llvm.smin.i64(i64 %i.j, i64 %i.g) ; 3 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !61
  %i.l = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %.not17 = icmp sgt i64 %i.l, %i.k
  br i1 %.not17, label %bb.g, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105
  %i.p = load i64, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %i.q = phi i64 [ %i.l, %.preheader.lr.ph ], [ %i.y, %bb.f ] ; 2 uses
  %i.r = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.aa, %bb.f ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZN8LightGBM6CommonL8AvoidInfEd.exit
  %.016 = phi i64 [ %i.q, %.preheader ], [ %i.x, %_ZN8LightGBM6CommonL8AvoidInfEd.exit ] ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.016
  %i.t = load double, ptr %i.s, align 8, !tbaa !104 ; 4 uses
  %i.u = fcmp uno double %i.t, 0.000000e+00
  br i1 %i.u, label %_ZN8LightGBM6CommonL8AvoidInfEd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = fcmp ult double %i.t, 1.000000e+300
  br i1 %i.v, label %bb.e, label %_ZN8LightGBM6CommonL8AvoidInfEd.exit

bb.e:                                             ; preds = %bb.d
  %.inv.i = fcmp ole double %i.t, -1.000000e+300
  %..i = select i1 %.inv.i, double -1.000000e+300, double %i.t
  br label %_ZN8LightGBM6CommonL8AvoidInfEd.exit

_ZN8LightGBM6CommonL8AvoidInfEd.exit:             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi double [ 1.000000e+300, %bb.d ], [ 0.000000e+00, %bb.c ], [ %..i, %bb.e ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.016
  store double %.0.i, ptr %i.w, align 8, !tbaa !104
  %i.x = add nsw i64 %.016, 1
  %.not15.not = icmp slt i64 %.016, %i.r
  br i1 %.not15.not, label %bb.c, label %bb.f

bb.f:                                             ; preds = %_ZN8LightGBM6CommonL8AvoidInfEd.exit
  %i.y = add nsw i64 %i.p, %i.q                   ; 3 uses
  %i.z = add nsw i64 %i.p, %i.r
  %i.aa = call i64 @llvm.smin.i64(i64 %i.z, i64 %i.g) ; 3 uses
  %.not = icmp sgt i64 %i.y, %i.aa
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.f
  store i64 %i.y, ptr %i.a, align 8, !tbaa !61
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !105    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !104
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !107
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #35
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !104
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !104
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #37
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !107
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13InitScoreViewERKNS_17ArrowChunkedArrayE(ptr dead_on_unwind noalias writable sret(%"class.LightGBM::ArrowChunkedArray::View") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.36", align 8    ; 16 uses
  %3 = alloca %"class.LightGBM::ArrowChunkedArray::View", align 8 ; 8 uses
  %4 = alloca %"class.LightGBM::ArrowChunkedArray::View", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.36", align 8    ; 8 uses
  tail call void @_ZNK8LightGBM17ArrowChunkedArray4viewEv(ptr dead_on_unwind writable sret(%"class.LightGBM::ArrowChunkedArray::View") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !133
  %i.b = icmp eq i32 %i.a, 27
  br i1 %i.b, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = invoke noundef i64 @_ZNK8LightGBM17ArrowChunkedArray14get_num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.c unwind label %bb.m       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %i.c, 230584300921369395
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = load ptr, ptr %2, align 8, !tbaa !137
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40
  %i.l = icmp ult i64 %i.k, %i.c
  br i1 %i.l, label %_ZNSt12_Vector_baseIN8LightGBM17ArrowChunkedArray4ViewESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN8LightGBM17ArrowChunkedArray4ViewESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN8LightGBM17ArrowChunkedArray4ViewESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !138
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.i
  %i.q = mul nuw nsw i64 %i.c, 40
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
          to label %.noexc19 unwind label %bb.m   ; 4 uses

.noexc19:                                         ; preds = %_ZNSt12_Vector_baseIN8LightGBM17ArrowChunkedArray4ViewESaIS2_EE11_M_allocateEm.exit.i
  %i.s = load ptr, ptr %2, align 8, !tbaa !137    ; 5 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !138  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8LightGBM17ArrowChunkedArray4ViewESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc19, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.r, %.noexc19 ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.s, %.noexc19 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !454
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !140, !alias.scope !453, !noalias !452
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !140, !alias.scope !452, !noalias !453
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !142, !alias.scope !453, !noalias !452
  store ptr %i.z, ptr %i.x, align 8, !tbaa !142, !alias.scope !452, !noalias !453
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !alias.scope !453, !noalias !452
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8LightGBM17ArrowChunkedArray4ViewESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

end_hunk_0
begin_hunk_1_@_ZN8LightGBM8Metadata16InsertInitScoresEPKdiii:bb.a
  br i1 %i.l, label %bb.f, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.m)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.e
  %i.n = load i32, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %.lr.ph, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.o = load i64, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not3.i = icmp eq i64 %i.o, 0
  br i1 %.not3.i, label %.lr.ph, label %_ZNK8LightGBM8Metadata22num_init_score_classesEv.exit

_ZNK8LightGBM8Metadata22num_init_score_classesEv.exit: ; preds = %bb.h
  %i.p = sext i32 %i.n to i64
  %i.q = sdiv i64 %i.o, %i.p                      ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %bb.h, %_ZNK8LightGBM8Metadata22num_init_score_classesEv.exit
  %.0.i20 = phi i64 [ %i.q, %_ZNK8LightGBM8Metadata22num_init_score_classesEv.exit ], [ 1, %bb.h ], [ 1, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ] ; 4 uses
  %i.t = sext i32 %3 to i64
  %i.u = shl nsw i64 %i.t, 3                      ; 3 uses
  %i.v = sext i32 %4 to i64                       ; 3 uses
  %wide.trip.count = and i64 %.0.i20, 4294967295
  %xtraiter = and i64 %.0.i20, 1
  %i.w = icmp eq i64 %wide.trip.count, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.0.i20, 4294967294
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
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
  %i.b = alloca i32, align 4                      ; 7 uses
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
  %i.j = load i32, ptr %i.b, align 4, !tbaa !76
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !76
  %i.l = load i32, ptr %i.a, align 4, !tbaa !76   ; 2 uses
  %.not17 = icmp sgt i32 %i.l, %i.k
  br i1 %.not17, label %bb.e, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !109    ; 3 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84   ; 3 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %i.s = sext i32 %i.l to i64                     ; 2 uses
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = sub i64 %i.n, %i.q
  %diff.check = icmp ugt i64 %i.u, -16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.s, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.v = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.au, %.loopexit ] ; 2 uses
  %i.w = mul i64 %indvar, %i.t
  %i.x = add i64 %i.w, %i.s
  %i.y = sext i32 %i.v to i64                     ; 2 uses
  %i.z = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.y)
  %reass.sub = sub i64 %i.z, %i.x
  %i.aa = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ab = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %indvars.iv, %index             ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ac
  %wide.load = load <4 x float>, ptr %i.ad, align 4, !tbaa !83 ; 3 uses
  %i.ae = fcmp ord <4 x float> %wide.load, zeroinitializer ; 2 uses
  %i.af = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.ag = fcmp oge <4 x double> %i.af, splat (double f0x47D2CED32A16A1B1)
  %i.ah = fcmp ugt <4 x double> %i.af, splat (double f0xC7D2CED32A16A1B1)
  %i.ai = select <4 x i1> %i.ah, <4 x float> %wide.load, <4 x float> splat (float f0xFE967699)
  %i.aj = and <4 x i1> %i.ae, %i.ag
  %predphi = select <4 x i1> %i.aj, <4 x float> splat (float f0x7E967699), <4 x float> %i.ai
  %predphi28 = select <4 x i1> %i.ae, <4 x float> %predphi, <4 x float> zeroinitializer
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac
  store <4 x float> %predphi28, ptr %i.ak, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv20.ph = phi i64 [ %indvars.iv, %.preheader ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN8LightGBM6CommonL8AvoidInfEf.exit
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %_ZN8LightGBM6CommonL8AvoidInfEf.exit ], [ %indvars.iv20.ph, %scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv20
  %i.an = load float, ptr %i.am, align 4, !tbaa !83 ; 3 uses
  %i.ao = fcmp uno float %i.an, 0.000000e+00
  br i1 %i.ao, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.ap = fpext float %i.an to double             ; 2 uses
  %i.aq = fcmp ult double %i.ap, f0x47D2CED32A16A1B1
  br i1 %i.aq, label %bb.d, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = fcmp ugt double %i.ap, f0xC7D2CED32A16A1B1
  %..i = select i1 %i.ar, float %i.an, float f0xFE967699
  br label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

_ZN8LightGBM6CommonL8AvoidInfEf.exit:             ; preds = %bb.d, %bb.c, %scalar.ph
  %.0.i = phi float [ f0x7E967699, %bb.c ], [ 0.000000e+00, %scalar.ph ], [ %..i, %bb.d ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv20
  store float %.0.i, ptr %i.as, align 4, !tbaa !83
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1
  %.not15.not = icmp slt i64 %indvars.iv20, %i.y
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !616

.loopexit:                                        ; preds = %_ZN8LightGBM6CommonL8AvoidInfEf.exit, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.t    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.at = add nsw i32 %i.r, %i.v
  %i.au = call i32 @llvm.smin.i32(i32 %i.at, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.au, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !76
  store i32 %i.au, ptr %i.b, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
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
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !153
  invoke void @_ZN8LightGBM17ArrowChunkedArray7VisitorIafEC2ESt6vectorIPK10ArrowArraySaIS6_EE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr nofree noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %24, ptr %22, align 8, !tbaa !246, !alias.scope !661
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !661
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.v = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153, !noalias !662
  %i.x = load ptr, ptr %24, align 8, !tbaa !144, !noalias !662
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
end_hunk_1
begin_hunk_2_@_ZN8LightGBM8Metadata8SetLabelElP10ArrowArrayP11ArrowSchema:bb.a
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !142
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = ptrtoint ptr %i.xb to i64
  %i.xg = sub i64 %i.xe, %i.xf
  call void @_ZdlPvm(ptr noundef nonnull %i.xb, i64 noundef %i.xg) #37
  br label %_ZN8LightGBM17ArrowChunkedArray4ViewD2Ev.exit34

_ZN8LightGBM17ArrowChunkedArray4ViewD2Ev.exit34:  ; preds = %bb.hc, %.body, %bb.ha
  %.pn = phi { ptr, i32 } [ %i.wy, %bb.ha ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @_ZN8LightGBM17ArrowChunkedArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8Metadata12InsertLabelsEPKfii(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.84)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = add nsw i32 %3, %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.86)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.f, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

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
  %i.b = alloca i32, align 4                      ; 7 uses
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
  %i.j = load i32, ptr %i.b, align 4, !tbaa !76
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !76
  %i.l = load i32, ptr %i.a, align 4, !tbaa !76   ; 2 uses
  %.not17 = icmp sgt i32 %i.l, %i.k
  br i1 %.not17, label %bb.e, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !109    ; 3 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84   ; 3 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %i.s = sext i32 %i.l to i64                     ; 2 uses
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = sub i64 %i.n, %i.q
  %diff.check = icmp ugt i64 %i.u, -16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.s, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.v = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.au, %.loopexit ] ; 2 uses
  %i.w = mul i64 %indvar, %i.t
  %i.x = add i64 %i.w, %i.s
  %i.y = sext i32 %i.v to i64                     ; 2 uses
  %i.z = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.y)
  %reass.sub = sub i64 %i.z, %i.x
  %i.aa = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ab = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %indvars.iv, %index             ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ac
  %wide.load = load <4 x float>, ptr %i.ad, align 4, !tbaa !83 ; 3 uses
  %i.ae = fcmp ord <4 x float> %wide.load, zeroinitializer ; 2 uses
  %i.af = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.ag = fcmp oge <4 x double> %i.af, splat (double f0x47D2CED32A16A1B1)
  %i.ah = fcmp ugt <4 x double> %i.af, splat (double f0xC7D2CED32A16A1B1)
  %i.ai = select <4 x i1> %i.ah, <4 x float> %wide.load, <4 x float> splat (float f0xFE967699)
  %i.aj = and <4 x i1> %i.ae, %i.ag
  %predphi = select <4 x i1> %i.aj, <4 x float> splat (float f0x7E967699), <4 x float> %i.ai
  %predphi28 = select <4 x i1> %i.ae, <4 x float> %predphi, <4 x float> zeroinitializer
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac
  store <4 x float> %predphi28, ptr %i.ak, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !749

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv20.ph = phi i64 [ %indvars.iv, %.preheader ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN8LightGBM6CommonL8AvoidInfEf.exit
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %_ZN8LightGBM6CommonL8AvoidInfEf.exit ], [ %indvars.iv20.ph, %scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv20
  %i.an = load float, ptr %i.am, align 4, !tbaa !83 ; 3 uses
  %i.ao = fcmp uno float %i.an, 0.000000e+00
  br i1 %i.ao, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.ap = fpext float %i.an to double             ; 2 uses
  %i.aq = fcmp ult double %i.ap, f0x47D2CED32A16A1B1
  br i1 %i.aq, label %bb.d, label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = fcmp ugt double %i.ap, f0xC7D2CED32A16A1B1
  %..i = select i1 %i.ar, float %i.an, float f0xFE967699
  br label %_ZN8LightGBM6CommonL8AvoidInfEf.exit

_ZN8LightGBM6CommonL8AvoidInfEf.exit:             ; preds = %bb.d, %bb.c, %scalar.ph
  %.0.i = phi float [ f0x7E967699, %bb.c ], [ 0.000000e+00, %scalar.ph ], [ %..i, %bb.d ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv20
  store float %.0.i, ptr %i.as, align 4, !tbaa !83
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1
  %.not15.not = icmp slt i64 %indvars.iv20, %i.y
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !750

.loopexit:                                        ; preds = %_ZN8LightGBM6CommonL8AvoidInfEf.exit, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.t    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.at = add nsw i32 %i.r, %i.v
  %i.au = call i32 @llvm.smin.i32(i32 %i.at, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.au, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !76
  store i32 %i.au, ptr %i.b, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
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
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !153
  invoke void @_ZN8LightGBM17ArrowChunkedArray7VisitorIafEC2ESt6vectorIPK10ArrowArraySaIS6_EE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr nofree noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNSt6vectorIPK10ArrowArraySaIS2_EEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %24, ptr %22, align 8, !tbaa !246, !alias.scope !795
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !795
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.v = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153, !noalias !796
  %i.x = load ptr, ptr %24, align 8, !tbaa !144, !noalias !796
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
end_hunk_2
