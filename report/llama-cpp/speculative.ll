Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/speculative?download=true
inline.NumInlined: 5176
inline.NumDeleted: 2391
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z14common_log_addP10common_log14ggml_log_levelPKcz
declare void @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare noundef ptr @_Z15common_log_mainv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN20gguf_context_deleterclEP12gguf_context.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @gguf_free(ptr noundef nonnull %i.a)
          to label %_ZN20gguf_context_deleterclEP12gguf_context.exit unwind label %bb.c

_ZN20gguf_context_deleterclEP12gguf_context.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, -2147483648) i32 @_Z24common_speculative_n_maxPK25common_params_speculative(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not62 = icmp eq ptr %i.a, %i.c
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1410
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1398
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.i ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.064 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]  ; 7 uses
  %.sroa.032.063 = phi ptr [ %i.a, %.lr.ph ], [ %i.t, %bb.i ] ; 2 uses
  %i.i = load i32, ptr %.sroa.032.063, align 4, !tbaa !42
  switch i32 %i.i, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 7, label %bb.e
    i32 8, label %bb.f
    i32 9, label %bb.g
    i32 10, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.j = load i32, ptr %i.h, align 8, !tbaa !58
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %.064)
  %.sroa.speculated46 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.g, align 2, !tbaa !92
  %i.m = zext i16 %i.l to i32
  %.sroa.speculated28 = tail call i32 @llvm.smax.i32(i32 %.064, i32 %i.m)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.n = load i16, ptr %i.f, align 4, !tbaa !93
  %i.o = zext i16 %i.n to i32
  %.sroa.speculated23 = tail call i32 @llvm.smax.i32(i32 %.064, i32 %i.o)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.p = load i16, ptr %i.e, align 2, !tbaa !94
  %i.q = zext i16 %i.p to i32
  %.sroa.speculated18 = tail call i32 @llvm.smax.i32(i32 %.064, i32 %i.q)
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.d, align 4, !tbaa !58
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.064)
  %.sroa.speculated43 = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.064, i32 8)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %.064, %bb.b ], [ %.sroa.speculated46, %bb.c ], [ %.sroa.speculated28, %bb.d ], [ %.sroa.speculated23, %bb.e ], [ %.sroa.speculated18, %bb.f ], [ %.sroa.speculated43, %bb.g ], [ %.sroa.speculated, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.063, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, -2147483648) i32 @_Z24common_speculative_n_maxPK18common_speculative(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %.not16 = icmp eq ptr %i.c, %i.e
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.07.018 = phi ptr [ %i.j, %.lr.ph ], [ %i.c, %bb.b ] ; 2 uses
  %.01417 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ 0, %bb.b ]
  %i.f = load ptr, ptr %.sroa.07.018, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.01417, i32 %i.i) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.speculated, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_Z38common_speculative_synth_rates_resolvePK25common_params_speculativei(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.18") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !99 ; 7 uses
  %i.c = fcmp une double %i.b, -1.000000e+00      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.h = icmp ne ptr %i.e, %i.g                   ; 3 uses
  %or.cond = or i1 %i.c, %i.h
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %or.cond3 = and i1 %i.c, %i.h
  br i1 %or.cond3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.21)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %2, 1
  br i1 %i.k, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.22)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.k:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.l, label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = ashr exact i64 %i.p, 3
  %i.r = zext nneg i32 %2 to i64                  ; 2 uses
  %.not = icmp eq i64 %i.q, %i.r
  br i1 %.not, label %.lr.ph157.preheader, label %bb.n

.lr.ph157.preheader:                              ; preds = %bb.l
  %i.s = load double, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %or.cond125.peel = tail call i1 @llvm.is.fpclass.f64(double %i.s, /* (nan inf nsub nnorm) */ i32 543)
  %i.t = fcmp ogt double %i.s, 1.000000e+00
  %or.cond126.peel = or i1 %or.cond125.peel, %i.t
  br i1 %or.cond126.peel, label %.loopexit173, label %bb.m

bb.m:                                             ; preds = %.lr.ph157.preheader
  %exitcond171.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond171.peel.not, label %._crit_edge, label %.lr.ph157

bb.n:                                             ; preds = %bb.l
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  invoke void (ptr, ptr, ...) @_Z13string_formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.23, i32 noundef %2, i64 noundef %i.aa)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
          to label %bb.as unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.082 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.082, label %bb.r, label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.082, label %bb.r, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn104121 = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

._crit_edge:                                      ; preds = %bb.aa, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ai = icmp ugt i64 %i.p, 9223372036854775800
  br i1 %i.ai, label %.noexc.i.i, label %bb.s, !prof !104

.noexc.i.i:                                       ; preds = %._crit_edge
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.s:                                             ; preds = %._crit_edge
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #34 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.p ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !105
  %i.an = icmp samesign ugt i64 %i.p, 8
  br i1 %i.an, label %bb.t, label %bb.u, !prof !106

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.ao = load double, ptr %i.e, align 8, !tbaa !101
  store double %i.ao, ptr %i.aj, align 8, !tbaa !101
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.t, %bb.u
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !102
  br label %bb.ar

.lr.ph157:                                        ; preds = %bb.m, %bb.aa
  %.081156 = phi i64 [ %i.az, %bb.aa ], [ 1, %bb.m ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.e, i64 %.081156 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !101 ; 3 uses
  %or.cond125 = tail call i1 @llvm.is.fpclass.f64(double %i.aq, /* (nan inf nsub nnorm) */ i32 543)
  %i.ar = fcmp ogt double %i.aq, 1.000000e+00
  %or.cond126 = or i1 %or.cond125, %i.ar
  br i1 %or.cond126, label %.loopexit173, label %bb.x

.loopexit173:                                     ; preds = %.lr.ph157, %.lr.ph157.preheader
  %i.as = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.24)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.loopexit173
  tail call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
  unreachable

bb.w:                                             ; preds = %.loopexit173
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.as) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.x:                                             ; preds = %.lr.ph157
  %i.au = getelementptr i8, ptr %i.ap, i64 -8
  %i.av = load double, ptr %i.au, align 8, !tbaa !101
  %i.aw = fcmp ogt double %i.aq, %i.av
  br i1 %i.aw, label %.loopexit174, label %bb.aa

.loopexit174:                                     ; preds = %bb.x
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull @.str.25)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit174
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
  unreachable

bb.z:                                             ; preds = %.loopexit174
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ax) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.aa:                                            ; preds = %bb.x
  %i.az = add nuw i64 %.081156, 1                 ; 2 uses
  %exitcond171.not = icmp eq i64 %i.az, %i.r
  br i1 %exitcond171.not, label %._crit_edge, label %.lr.ph157, !llvm.loop !517

bb.ab:                                            ; preds = %bb.k
  %i.ba = add nuw i32 %2, 1
  %i.bb = uitofp i32 %i.ba to double              ; 3 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.b)
  %i.bd = fcmp ueq double %i.bc, +inf
  %i.be = fcmp olt double %i.b, 1.000000e+00
  %or.cond5.not.not129 = or i1 %i.be, %i.bd
  %i.bf = fcmp ogt double %i.b, %i.bb
  %or.cond109 = select i1 %or.cond5.not.not129, i1 true, i1 %i.bf
  br i1 %or.cond109, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void (ptr, ptr, ...) @_Z13string_formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.26, double noundef %i.bb)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
          to label %bb.as unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread: ; preds = %bb.ac
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.079 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.af
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !37
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.079, label %bb.ag, label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.079, label %bb.ag, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn98124 = phi { ptr, i32 } [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ]
  call void @__cxa_free_exception(ptr %i.bg) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.ah:                                            ; preds = %bb.ab
  %i.bo = fcmp oeq double %i.b, %i.bb
  br i1 %i.bo, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = fcmp ogt double %i.b, 1.000000e+00
  br i1 %i.bp, label %.lr.ph.us.preheader, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

.lr.ph.us.preheader:                              ; preds = %bb.ai
  %i.bq = fadd double %i.b, -1.000000e+00
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.br = icmp ult i32 %2, 8
  %unroll_iter = and i32 %2, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod237 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.074137.us = phi i32 [ %i.cn, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.075136.us = phi double [ %.075..us, %._crit_edge.us ], [ 1.000000e+00, %.lr.ph.us.preheader ] ; 2 uses
  %.076135.us = phi double [ %..076.us, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph.us.preheader ] ; 2 uses
  %i.bs = fadd double %.076135.us, %.075136.us
  %i.bt = fmul double %i.bs, 5.000000e-01         ; 13 uses
  br i1 %i.br, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.072133.us = phi double [ %i.cj, %.lr.ph.us.new ], [ %i.bt, %.lr.ph.us ] ; 2 uses
  %.073132.us = phi double [ %i.ci, %.lr.ph.us.new ], [ 0.000000e+00, %.lr.ph.us ]
  %niter = phi i32 [ %niter.next.7, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.bu = fadd double %.073132.us, %.072133.us
  %i.bv = fmul double %i.bt, %.072133.us          ; 2 uses
  %i.bw = fadd double %i.bu, %i.bv
  %i.bx = fmul double %i.bt, %i.bv                ; 2 uses
  %i.by = fadd double %i.bw, %i.bx
  %i.bz = fmul double %i.bt, %i.bx                ; 2 uses
  %i.ca = fadd double %i.by, %i.bz
  %i.cb = fmul double %i.bt, %i.bz                ; 2 uses
  %i.cc = fadd double %i.ca, %i.cb
  %i.cd = fmul double %i.bt, %i.cb                ; 2 uses
  %i.ce = fadd double %i.cc, %i.cd
  %i.cf = fmul double %i.bt, %i.cd                ; 2 uses
  %i.cg = fadd double %i.ce, %i.cf
  %i.ch = fmul double %i.bt, %i.cf                ; 2 uses
  %i.ci = fadd double %i.cg, %i.ch                ; 3 uses
  %i.cj = fmul double %i.bt, %i.ch                ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !518

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.072133.us.epil.init = phi double [ %i.bt, %.lr.ph.us ], [ %i.cj, %._crit_edge.us.unr-lcssa ]
  %.073132.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us ], [ %i.ci, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod237)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %.072133.us.epil = phi double [ %.072133.us.epil.init, %.epil.preheader ], [ %i.cl, %bb.aj ] ; 2 uses
  %.073132.us.epil = phi double [ %.073132.us.epil.init, %.epil.preheader ], [ %i.ck, %bb.aj ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.ck = fadd double %.073132.us.epil, %.072133.us.epil ; 2 uses
  %i.cl = fmul double %i.bt, %.072133.us.epil
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.aj, !llvm.loop !519

._crit_edge.us:                                   ; preds = %bb.aj, %._crit_edge.us.unr-lcssa
  %.lcssa235 = phi double [ %i.ci, %._crit_edge.us.unr-lcssa ], [ %i.ck, %bb.aj ]
  %i.cm = fcmp olt double %.lcssa235, %i.bq       ; 2 uses
  %..076.us = select i1 %i.cm, double %i.bt, double %.076135.us ; 2 uses
  %.075..us = select i1 %i.cm, double %.075136.us, double %i.bt ; 2 uses
  %i.cn = add nuw nsw i32 %.074137.us, 1          ; 2 uses
  %exitcond169.not = icmp eq i32 %i.cn, 32
  br i1 %exitcond169.not, label %.split.us, label %.lr.ph.us, !llvm.loop !520

.split.us:                                        ; preds = %._crit_edge.us
  %i.co = fadd double %..076.us, %.075..us
  %i.cp = fmul double %i.co, 5.000000e-01
  br label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.ah, %bb.ai, %.split.us
  %.078 = phi double [ 0.000000e+00, %bb.ai ], [ %i.cp, %.split.us ], [ 1.000000e+00, %bb.ah ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.cq = zext nneg i32 %2 to i64                 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cs = shl nuw nsw i64 %i.cq, 3
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #34 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !103
end_hunk_0
