Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/PolysemousTraining?download=true
inline.NumInlined: 769
inline.NumDeleted: 383
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK5faiss18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !43
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !83
  %i.al = trunc i64 %i.ak to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.al) ; 2 uses
  %i.am = sext i32 %.sroa.speculated to i64
  %i.an = mul i64 %i.n, %i.am
  %i.ao = icmp ugt i64 %i.an, %i.q
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = udiv i64 %i.q, %i.n
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !54
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.16, i32 noundef %i.aq) #33 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.020 = phi i32 [ %i.aq, %bb.k ], [ %.sroa.speculated, %bb.j ]
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %.020)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK5faiss18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerE.omp_outlined, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.m:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5faiss18PolysemousTraining23memory_usage_per_threadERKNS_16ProductQuantizerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65
  switch i32 %i.d, label %bb.d [
    i32 0, label %bb.j
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = mul i64 %i.b, %i.b
  %i.f = mul i64 %i.e, 24
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = mul i64 %i.b, %i.b
  %i.h = shl i64 %i.g, 2
  %i.i = mul i64 %i.h, %i.b
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss18PolysemousTraining23memory_usage_per_threadERKNS_16ProductQuantizerE, ptr noundef nonnull @.str.3, i32 noundef 1081)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !43
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %.pn17, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.012 = phi i64 [ %i.i, %bb.c ], [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.012

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr noundef %6) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"struct.faiss::(anonymous namespace)::ReproduceWithHammingObjective", align 8 ; 14 uses
  %9 = alloca %"struct.faiss::SimulatedAnnealingOptimizer", align 8 ; 7 uses
  %i.e = alloca [256 x i8], align 16              ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !83
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.k = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !18
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !18
  %i.n = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not114 = icmp sgt i32 %i.n, %i.m
  br i1 %.not114, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %.phi.trans.insert26.i = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 5 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ae = sext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %indvars.iv130 = phi i64 [ %i.ae, %.lr.ph117 ], [ %indvars.iv.next131, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 5 uses
  %i.af = load i64, ptr %i.p, align 8, !tbaa !81
  %i.ag = mul i64 %i.af, %indvars.iv130
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !80
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 4 uses
  %i.al = load i32, ptr %3, align 4, !tbaa !18    ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.i.i.i.i, label %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit"

.preheader.i.i.i.i:                               ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.sroa.0.071 = phi ptr [ %.sroa.0.172, %._crit_edge.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %._crit_edge.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %._crit_edge.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  %11 = phi i32 [ %13, %._crit_edge.i.i.i.i ], [ %i.al, %bb.c ] ; 2 uses
  %.069.i.i.i.i = phi i32 [ %i.an, %._crit_edge.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.0.172 = phi ptr [ %.sroa.0.071, %.preheader.i.i.i.i ], [ %.sroa.0.3.a, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %.preheader.i.i.i.i ], [ %.sroa.8.3.a, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %.preheader.i.i.i.i ], [ %.sroa.12.3.a, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ] ; 2 uses
  %13 = phi i32 [ %11, %.preheader.i.i.i.i ], [ %i.bo, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ] ; 3 uses
  %i.an = add nuw nsw i32 %.069.i.i.i.i, 1        ; 2 uses
  %i.ao = icmp slt i32 %i.an, %13
  br i1 %i.ao, label %.preheader.i.i.i.i, label %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit.loopexit", !llvm.loop !122

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i
  %.sroa.0.2.a = phi ptr [ %.sroa.0.3.a, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ], [ %.sroa.0.071, %.preheader.i.i.i.i ] ; 5 uses
  %.sroa.8.2.a = phi ptr [ %.sroa.8.3.a, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ], [ %.sroa.8.0, %.preheader.i.i.i.i ] ; 4 uses
  %.sroa.12.2.a = phi ptr [ %.sroa.12.3.a, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ], [ %.sroa.12.0, %.preheader.i.i.i.i ] ; 2 uses
  %.08.i.i.i.i = phi i32 [ %i.bn, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  %i.ap = load i32, ptr %4, align 4, !tbaa !18    ; 3 uses
  %i.aq = mul nsw i32 %i.ap, %.069.i.i.i.i
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ar
  %i.at = mul nsw i32 %i.ap, %.08.i.i.i.i
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.au
  %i.aw = sext i32 %i.ap to i64
  %i.ax = invoke noundef float @_ZN5faiss10fvec_L2sqrILNS_9SIMDLevelE0EEEfPKfS3_m(ptr noundef %i.as, ptr noundef %i.av, i64 noundef %i.aw)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  %i.ay = fpext float %i.ax to double             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.8.2.a, %.sroa.12.2.a
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  store double %i.ay, ptr %.sroa.8.2.a, align 8, !tbaa !20
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.az = ptrtoint ptr %.sroa.8.2.a to i64
  %i.ba = ptrtoint ptr %.sroa.0.2.a to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %.invoke, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #30
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store double %i.ay, ptr %i.bk, align 8, !tbaa !20
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.noexc37
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %.sroa.0.2.a, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.f, %.noexc37
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.2.a, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2.a, i64 noundef %i.bb) #31
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i

_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i.i.i.i:   ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.d
  %.sroa.0.3.a = phi ptr [ %i.bj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.0.2.a, %bb.d ] ; 2 uses
  %.pn = phi ptr [ %i.bk, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.8.2.a, %bb.d ]
  %.sroa.12.3.a = phi ptr [ %i.bm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.12.2.a, %bb.d ] ; 2 uses
  %.sroa.8.3.a = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.bn = add nuw nsw i32 %.08.i.i.i.i, 1         ; 2 uses
  %i.bo = load i32, ptr %3, align 4, !tbaa !18    ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !123

"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit.loopexit": ; preds = %._crit_edge.i.i.i.i
  %i.bq = ptrtoint ptr %.sroa.8.1 to i64
  %i.br = ptrtoint ptr %.sroa.12.1 to i64
  br label %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit"

"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit": ; preds = %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit.loopexit", %bb.c
  %i.bs = phi i32 [ %i.al, %bb.c ], [ %13, %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit.loopexit" ] ; 3 uses
  %.sroa.0.4 = phi ptr [ null, %bb.c ], [ %.sroa.0.172, %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit.loopexit" ] ; 9 uses
  %.sroa.8.4 = phi i64 [ 0, %bb.c ], [ %i.bq, %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit.loopexit" ]
  %.sroa.12.4 = phi i64 [ 0, %bb.c ], [ %i.br, %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit.loopexit" ]
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = icmp slt i32 %i.bs, 0
  br i1 %i.bu, label %.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %"_ZN5faiss15with_simd_levelIRZNKS_18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerEE3$_0EEDaOT_.exit"
  %.not.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bv = shl nuw nsw i64 %i.bt, 2
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc39:                                         ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bt ; 2 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !18
  %i.by = add nsw i64 %i.bt, -1                   ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc39
  %i.ca = getelementptr i8, ptr %i.bw, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.by, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ca, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc39, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.056.0 = phi ptr [ %i.bw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bw, %.noexc39 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.bx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bx, %.noexc39 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.cb = load i32, ptr %5, align 4, !tbaa !18    ; 3 uses
  %i.cc = load double, ptr %i.r, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_129ReproduceWithHammingObjectiveE, i64 16), ptr %8, align 8, !tbaa !15
  store i32 %i.cb, ptr %i.s, align 4, !tbaa !131
  store double %i.cc, ptr %i.t, align 8, !tbaa !132
  %i.cd = shl nuw i32 1, %i.cb                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  store i32 %i.cd, ptr %i.w, align 8, !tbaa !17
  %i.ce = ptrtoint ptr %.sroa.0.4 to i64          ; 2 uses
  %i.cf = sub i64 %.sroa.8.4, %i.ce               ; 4 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 6 uses
  %i.ch = shl i32 %i.cd, %i.cb                    ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = icmp eq i64 %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i.preheader, label %bb.i

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ck = add nsw i64 %i.cg, -1
  %xtraiter = and i64 %i.cg, 3                    ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 3
  br i1 %i.cl, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.cg, -4
  br label %.lr.ph.i.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cm, ptr %7, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.cn, align 8, !tbaa !42
  store i8 0, ptr %i.cm, align 8, !tbaa !43
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #22 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cq = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cr)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %7, align 8, !tbaa !44
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !42
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cs, i64 noundef %i.ct, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.j
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.cw = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_129ReproduceWithHammingObjectiveC2EiRKSt6vectorIdSaIdEEd, ptr noundef nonnull @.str.3, i32 noundef 302)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.y unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.cw) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.cv, %bb.l ], [ %i.cx, %bb.o ]
  %i.cy = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cm
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.da = load i64, ptr %i.cm, align 8, !tbaa !43
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit.split-lp.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.3, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa ]
  %.038.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.ej, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa ]
  %.03236.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.ek, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa ]
  %lcmp.mod205 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod205)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.038.i.i.epil = phi double [ %i.de, %.lr.ph.i.i.epil ], [ %.038.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.03236.i.i.epil = phi double [ %i.df, %.lr.ph.i.i.epil ], [ %.03236.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4, i64 %indvars.iv.i.i.epil
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !20 ; 3 uses
  %i.de = fadd double %.038.i.i.epil, %i.dd       ; 2 uses
  %i.df = call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %.03236.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !124

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %.lr.ph.i.i.epil, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa
  %.lcssa201 = phi double [ %i.ej, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa ], [ %i.de, %.lr.ph.i.i.epil ]
  %.lcssa200 = phi double [ %i.ek, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.unr-lcssa ], [ %i.df, %.lr.ph.i.i.epil ]
  %i.dg = uitofp nneg i32 %i.ch to double         ; 2 uses
  %i.dh = fdiv double %.lcssa201, %i.dg           ; 3 uses
  %i.di = fdiv double %.lcssa200, %i.dg
  %i.dj = fneg double %i.dh
  %i.dk = call double @llvm.fmuladd.f64(double %i.dj, double %i.dh, double %i.di)
  %i.dl = call double @sqrt(double noundef %i.dk) #22
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #30
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !20
  %i.dn = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph41.i.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc50
  %i.dp = getelementptr i8, ptr %i.dm, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dp, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !20
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.noexc50, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store ptr %i.dm, ptr %i.u, align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.cf
  store ptr %i.dq, ptr %i.x, align 8, !tbaa !62
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.cf
  store ptr %i.dr, ptr %i.y, align 8, !tbaa !26
  %.pre.i.pre.i.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  %.pre52.i.pre.i.pre = load ptr, ptr %.phi.trans.insert26.i, align 8, !tbaa !26
  br label %bb.q

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.038.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i ]
  %.03236.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader.new ], [ %i.ek, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4, i64 %indvars.iv.i.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !20 ; 3 uses
  %i.du = fadd double %.038.i.i, %i.dt
  %i.dv = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %.03236.i.i)
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4, i64 %indvars.iv.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !20 ; 3 uses
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.dv)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4, i64 %indvars.iv.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !20 ; 3 uses
  %i.ee = fadd double %i.dz, %i.ed
  %i.ef = call double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double %i.ea)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4, i64 %indvars.iv.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !20 ; 3 uses
end_hunk_0
