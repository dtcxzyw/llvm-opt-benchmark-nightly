Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/resource_quota?download=true
inline.NumInlined: 1007
inline.NumDeleted: 679
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core17instrument_detail20InstrumentDomainImplINS_21HighContentionBackendELm1ENS_19ResourceQuotaDomainEE10GetStorageIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_13RefCountedPtrINS4_7StorageEEENSE_INS_15CollectionScopeEEEDpOT_:_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.bu = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i17: ; preds = %.lr.ph.i.i.i
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !27
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i17
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.bt
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i18 = load ptr, ptr %4, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit
  %i.ca = phi ptr [ %.pr.i18, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bs, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.m:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit23

bb.n:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.o:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ac
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.o
  %i.ck = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.n ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.ch, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit23

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cn = load ptr, ptr %7, align 8, !tbaa !61    ; 4 uses
  %.not.i22 = icmp eq ptr %i.cn, null
  br i1 %.not.i22, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit23, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = atomicrmw sub ptr %i.co, i64 1 acq_rel, align 8
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.r, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit23, !prof !34

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(96) %i.cn) #30, !inline_history !6
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit23

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit23: ; preds = %bb.r, %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.m
  %.pn7.pn = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.cm, %bb.p ], [ %i.cm, %bb.q ], [ %i.cm, %bb.r ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 3 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !193    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !23
  %i.f = icmp eq ptr %i.c, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !41
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !25
  %i.j = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.j, ptr %i.e, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !27
  store i8 %i.l, ptr %i.k, align 1, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.c, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !26
  %i.o = load ptr, ptr %0, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare i32 @gpr_cpu_num_cores() local_unnamed_addr #8

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN9grpc_core17instrument_detail20InstrumentDomainImplINS_21HighContentionBackendELm1ENS_19ResourceQuotaDomainEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_24FixedInstrumentLabelListILm1EEEm(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef align 8 %1, i8 %2, i64 noundef %3) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !23
  %i.b = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !25
  %i.i = load i64, ptr %i.c, align 8, !tbaa !27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !26
  store ptr %i.c, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %i.k, align 8, !tbaa !26
  store i8 0, ptr %i.c, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.5.0..sroa_idx, i8 -1, i64 62, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN9grpc_core17instrument_detail15QueryableDomainE, i64 16), ptr %0, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !196
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  store i64 %3, ptr %i.p, align 8, !tbaa !197
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.r = icmp ugt i64 %3, 1152921504606846975
  %i.s = shl i64 %3, 4                            ; 2 uses
  %i.t = or disjoint i64 %i.s, 8
  %i.u = select i1 %i.r, i64 -1, i64 %i.t
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #28
          to label %.noexc.i unwind label %bb.e   ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  store i64 %3, ptr %i.v, align 16, !noalias !198
  %i.w = icmp eq i64 %3, 0
  br i1 %i.w, label %.loopexit.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %.noexc.i
  %scevgep.i = getelementptr i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.s, i1 false), !noalias !198
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.preheader.i, %.noexc.i
  %.ptr5.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ptr5.i.i, ptr %i.q, align 8, !tbaa !199, !alias.scope !198
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !23
  %i.z = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.loopexit.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !26  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.i
  store ptr %i.z, ptr %i.x, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !27
  %.pre11 = load i64, ptr %i.l, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #29
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.am = phi i64 [ %.pre11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.am, ptr %i.an, align 8, !tbaa !26
  store ptr %i.a, ptr %4, align 8, !tbaa !25
  store i64 0, ptr %i.l, align 8, !tbaa !26
  store i8 0, ptr %i.a, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.ao, align 8, !tbaa !202
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN9grpc_core17instrument_detail20InstrumentDomainImplINS_21HighContentionBackendELm1ENS_19ResourceQuotaDomainEEE, i64 16), ptr %0, align 8, !tbaa !19
  invoke void @_ZN9grpc_core17instrument_detail15QueryableDomain11ConstructedEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

.body:                                            ; preds = %bb.e, %bb.f
  %i.ap = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.body
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !27
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core17instrument_detail15QueryableDomainD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.af, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i8 @_ZN9grpc_core16InstrumentDomainINS_19ResourceQuotaDomainEE10MakeLabelsIJPKcEEENS_24FixedInstrumentLabelListIXsZT_EEEDpT_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.grpc_core::FixedInstrumentLabelList", align 1 ; 3 uses
  %2 = alloca [1 x %"class.grpc_core::InstrumentLabel"], align 1 ; 4 uses
  %3 = alloca %"class.std::vector.75", align 8    ; 7 uses
  %4 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %6 = alloca %"class.grpc_core::InstrumentLabel", align 1 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30
  call void @_ZN9grpc_core15InstrumentLabelC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %i.b, ptr nonnull %0)
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30
  call void @_ZN9grpc_core15InstrumentLabelC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.c, ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !23
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !41
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc44 unwind label %bb.g   ; 2 uses

.noexc44:                                         ; preds = %.noexc.i
  store ptr %i.g, ptr %4, align 8, !tbaa !25
  %i.h = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.h, ptr %i.d, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc44, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc44 ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !27
  store i8 %i.j, ptr %i.i, align 1, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = load ptr, ptr %4, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 10 uses

.thread:                                          ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.o, ptr %3, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !71
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %4, ptr noundef nonnull %i.q, ptr noundef nonnull %i.o)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 32) #29
  br label %.body

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !69
  %i.w = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !27
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
