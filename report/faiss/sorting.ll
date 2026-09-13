Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/sorting?download=true
inline.NumInlined: 968
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEEvT_S8_T0_T1_:bb.a
  br i1 %i.es, label %bb.y, label %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEET_S8_S8_T0_.exit

bb.y:                                             ; preds = %bb.x
  store i64 %.114.val.i.i, ptr %.1.i.i, align 8, !tbaa !13
  store i64 %.1.val.i.i, ptr %.114.i.i, align 8, !tbaa !13
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEEvT_S8_S8_S8_T0_.exit.i, !llvm.loop !101

_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEET_S8_S8_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEEvT_S8_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02449, i64 noundef %i.dq, ptr nonnull %3)
  %i.et = ptrtoint ptr %.1.i.i to i64
  %i.eu = sub i64 %i.et, %i.a                     ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 128
  br i1 %i.ev, label %bb.b, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEEvT_S8_S8_T0_.exit, !llvm.loop !94

_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEEvT_S8_S8_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEET_S8_S8_T0_.exit, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_117ArgsortComparatorEEEEvT_S8_S8_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss21fvec_argsort_parallelEmPKfPm(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"struct.faiss::(anonymous namespace)::ArgsortComparator", align 8 ; 6 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 14 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %0, ptr %i.a, align 8, !tbaa !13
  %i.i = icmp ugt i64 %0, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %.noexc23

.noexc23:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %0, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27 ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %0 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !13
  %i.m = add nsw i64 %0, -1                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc23
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !13
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc23, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.l, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc23 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.033.0 = phi ptr [ %i.k, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc23 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.p = tail call i32 @omp_get_max_threads()     ; 6 uses
  store i32 %i.p, ptr %i.d, align 4, !tbaa !20
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %.lr.ph
  %.01239 = phi i32 [ %i.u, %.lr.ph ], [ %i.p, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 2 uses
  %i.r = phi ptr [ %i.s, %.lr.ph ], [ %2, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 2 uses
  %i.s = phi ptr [ %i.r, %.lr.ph ], [ %.sroa.033.0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 2 uses
  %i.t = add nuw nsw i32 %.01239, 1
  %i.u = lshr i32 %i.t, 1
  %i.v = icmp samesign ugt i32 %.01239, 2
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %.lcssa38 = phi ptr [ %.sroa.033.0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ %i.r, %.lr.ph ]
  %.lcssa = phi ptr [ %2, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ %i.s, %.lr.ph ]
  store ptr %.lcssa, ptr %i.c, align 8
  store ptr %.lcssa38, ptr %i.b, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN5faiss21fvec_argsort_parallelEmPKfPm.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %1, ptr %3, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.w = sext i32 %i.p to i64                     ; 5 uses
  %i.x = icmp slt i32 %i.p, 0
  br i1 %i.x, label %bb.b, label %_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
          to label %.noexc27 unwind label %bb.e

.noexc27:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %_ZNSt12_Vector_baseIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EEC2EmRKS3_.exit.thread.i, label %bb.c

_ZNSt12_Vector_baseIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc28 unwind label %bb.e   ; 9 uses

.noexc28:                                         ; preds = %bb.c
  store ptr %i.z, ptr %4, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.ad = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.noexc28
  %.idx.i.i.i.i.i.i.i25 = shl nuw nsw i64 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i.i.i25 ; 3 uses
  %i.ag = add nuw nsw i64 %i.w, 1152921504606846974
  %i.ah = and i64 %i.ag, 1152921504606846975
  %i.ai = add nuw nsw i64 %i.w, 3
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ac, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !29
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !103

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ac, %bb.d ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ak = icmp samesign ult i64 %i.ah, 3
  br i1 %i.ak, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !29
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !29
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !29
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !29
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ao, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc28, %_ZNSt12_Vector_baseIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EEC2EmRKS3_.exit.thread.i
  %.0.i.i.i.i.i26 = phi ptr [ null, %_ZNSt12_Vector_baseIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.ac, %.noexc28 ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i26, ptr %i.ap, align 8, !tbaa !31
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN5faiss21fvec_argsort_parallelEmPKfPm.omp_outlined.1, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %3, ptr nonnull %4)
  %i.aq = call i32 @omp_get_nested()
  call void @omp_set_nested(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !20  ; 3 uses
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !20
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %.loopexit, %._crit_edge44
  %i.at = phi i32 [ %i.av, %._crit_edge44 ], [ %i.ar, %.loopexit ] ; 4 uses
  %i.au = add nuw nsw i32 %i.at, 1
  %i.av = lshr i32 %i.au, 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.aw = load i32, ptr %i.d, align 4
  %i.ax = and i32 %i.at, 1
  %i.ay = sub nsw i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.az = lshr i32 %i.at, 1
  store i32 %i.az, ptr %i.g, align 4, !tbaa !20
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.av)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss21fvec_argsort_parallelEmPKfPm.omp_outlined.2, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %3)
  %i.ba = load i32, ptr %i.e, align 4, !tbaa !20  ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph43.preheader, label %._crit_edge44

.lr.ph43.preheader:                               ; preds = %.lr.ph46
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.be = lshr i64 %i.bd, 1                       ; 2 uses
  %i.bf = add nuw i64 %i.be, 1                    ; 2 uses
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %.lr.ph43.epil.preheader, label %.lr.ph43.preheader.new

.lr.ph43.preheader.new:                           ; preds = %.lr.ph43.preheader
  %unroll_iter = and i64 %i.bf, -2
  br label %.lr.ph43

._crit_edge44.loopexit.unr-lcssa:                 ; preds = %.lr.ph43
  %i.bh = and i64 %i.bd, 2
  %lcmp.mod65.not.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod65.not.not, label %.lr.ph43.epil.preheader, label %._crit_edge44

.lr.ph43.epil.preheader:                          ; preds = %._crit_edge44.loopexit.unr-lcssa, %.lr.ph43.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next.1, %._crit_edge44.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod66 = trunc i64 %i.bf to i1
  call void @llvm.assume(i1 %lcmp.mod66)
  %.val20.epil = load ptr, ptr %4, align 8, !tbaa !27 ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.val20.epil, i64 %indvars.iv.epil.init
  %i.bj = lshr exact i64 %indvars.iv.epil.init, 1
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val20.epil, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !29
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %.lr.ph43.epil.preheader, %._crit_edge44.loopexit.unr-lcssa, %.lr.ph46
  store i32 %i.av, ptr %i.e, align 4, !tbaa !20
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !33
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !33
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.bn = icmp samesign ugt i32 %i.at, 2
  br i1 %i.bn, label %.lr.ph46, label %._crit_edge47, !llvm.loop !104

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = ptrtoint ptr %.sroa.10.0 to i64
  %i.bq = ptrtoint ptr %.sroa.033.0 to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.br) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph43:                                         ; preds = %.lr.ph43, %.lr.ph43.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %indvars.iv.next.1, %.lr.ph43 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %niter.next.1, %.lr.ph43 ]
  %.val20 = load ptr, ptr %4, align 8, !tbaa !27  ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.val20, i64 %indvars.iv
  %i.bt = lshr exact i64 %indvars.iv, 1
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.val20, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %.val20.1 = load ptr, ptr %4, align 8, !tbaa !27 ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.val20.1, i64 %indvars.iv.next
  %i.bw = lshr exact i64 %indvars.iv.next, 1
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.val20.1, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge44.loopexit.unr-lcssa, label %.lr.ph43, !llvm.loop !105

._crit_edge47:                                    ; preds = %._crit_edge44, %.loopexit
  call void @omp_set_nested(i32 noundef %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %.val21 = load ptr, ptr %4, align 8             ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %.val21, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val22 = load ptr, ptr %i.by, align 8
  %i.bz = ptrtoint ptr %.val22 to i64
  %i.ca = ptrtoint ptr %.val21 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %.val21, i64 noundef %i.cb) #28
  br label %_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EED2Ev.exit: ; preds = %._crit_edge47, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not.i.i.i30 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorImSaImEED2Ev.exit31, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EED2Ev.exit
  %i.cc = ptrtoint ptr %.sroa.10.0 to i64
  %i.cd = ptrtoint ptr %.sroa.033.0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.ce) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit31

_ZNSt6vectorImSaImEED2Ev.exit31:                  ; preds = %_ZNSt6vectorIN5faiss12_GLOBAL__N_18SegmentSESaIS2_EED2Ev.exit, %bb.h
  ret void

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.bo
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss21fvec_argsort_parallelEmPKfPm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 %i.g, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 1, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.h = load i32, ptr %0, align 4, !tbaa !20     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !13
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !13
  %i.k = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not13 = icmp sgt i64 %i.k, %i.j
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.014 = phi i64 [ %i.k, %.lr.ph ], [ %i.n, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.014
  store i64 %.014, ptr %i.m, align 8, !tbaa !13
  %i.n = add nsw i64 %.014, 1
  %i.o = load i64, ptr %i.b, align 8, !tbaa !13
  %.not.not = icmp slt i64 %.014, %i.o
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !35 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss21fvec_argsort_parallelEmPKfPm.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !20     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.h = load i32, ptr %0, align 4, !tbaa !20     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !20
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !20
end_hunk_0
