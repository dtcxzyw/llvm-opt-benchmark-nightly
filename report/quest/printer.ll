Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/printer?download=true
inline.NumInlined: 3013
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZSt18__do_uninit_fill_nIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEmS8_ET_SA_T0_RKT1_:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %.021, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !58
  %i.m = load ptr, ptr %2, align 8, !tbaa !79
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc12
  %i.p = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.q = load ptr, ptr %.021, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #32
  br label %.body

bb.f:                                             ; preds = %.noexc12
  store ptr %i.o, ptr %i.j, align 8, !tbaa !59
  %i.w = add i64 %.01120, -1                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !758

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_(ptr noundef %0, ptr noundef nonnull %.021)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #31
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.x, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aa

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #30
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !30
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !34
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.h, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %.014, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !759

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 5 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.h = icmp eq i64 %i.f, 24
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %.0810.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.011.epil.init
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %spec.select.epil = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %.0810.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i64 %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %.0810 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.011
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %.0810)
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.011
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %spec.select.1 = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %spec.select) ; 3 uses
  %i.y = add nuw i64 %.011, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define void @_Z20getMaxWidthOfColumnsSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EES9_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.15") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.20", align 8    ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !80     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 5                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #33 ; 7 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !84
  %i.q = and i64 %i.m, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.q, i1 false), !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60
  %.087 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60 ] ; 9 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !75   ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !74     ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i15, label %.noexc17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = icmp ugt i64 %i.ab, 384307168202282325
  br i1 %i.ac, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge unwind label %.loopexit73

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !80
  %.pre93 = load ptr, ptr %i.b, align 8, !tbaa !80
  br label %.noexc17

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge, %bb.c
  %i.ae = phi ptr [ %i.w, %bb.c ], [ %.pre93, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge ]
  %i.af = phi ptr [ %i.x, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge ]
  %.pr.i55 = phi ptr [ null, %bb.c ], [ %i.ad, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge ] ; 14 uses
  store ptr %.pr.i55, ptr %3, align 8, !tbaa !74
  store ptr %.pr.i55, ptr %i.t, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %.pr.i55, i64 %i.aa
  store ptr %i.ag, ptr %i.u, align 8, !tbaa !76
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.af, ptr %i.ae, ptr noundef %.pr.i55)
          to label %bb.g unwind label %bb.e       ; 4 uses

bb.e:                                             ; preds = %.noexc17
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i55, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i55, i64 noundef %i.aa) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.g:                                             ; preds = %.noexc17
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.ah, %.pr.i55           ; 2 uses
  br i1 %.not.i, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %.pr.i55 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = sdiv exact i64 %i.al, 24                ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.al, 24
  br i1 %i.an, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.011.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.az, %.lr.ph.i ] ; 3 uses
  %.0810.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.pr.i55, i64 %.011.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %.087
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %.0810.i)
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %.pr.i55, i64 %.011.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.087
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36
  %spec.select.i.1 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %spec.select.i) ; 3 uses
  %i.az = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.az, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod173 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.pr.i55, i64 %.011.i.epil.init
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.087
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %spec.select.i.epil = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %.0810.i.epil.init)
  br label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa, %bb.g
  %.08.lcssa.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.bf = load ptr, ptr %i.v, align 8, !tbaa !75  ; 3 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !74    ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i18, label %.noexc24, label %bb.h

bb.h:                                             ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit
  %i.bk = sdiv exact i64 %i.bj, 24
  %i.bl = icmp ugt i64 %i.bk, 384307168202282325
  br i1 %i.bl, label %.noexc.i.i22, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19, !prof !62

.noexc.i.i22:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc23 unwind label %.loopexit.split-lp75

.noexc23:                                         ; preds = %.noexc.i.i22
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19: ; preds = %bb.h
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge unwind label %.loopexit74

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19
  %.pre94 = load ptr, ptr %2, align 8, !tbaa !80
  %.pre95 = load ptr, ptr %i.v, align 8, !tbaa !80
  br label %.noexc24

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit
  %i.bn = phi ptr [ %i.bf, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit ], [ %.pre95, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge ]
  %i.bo = phi ptr [ %i.bg, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit ], [ %.pre94, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge ]
  %i.bp = phi ptr [ null, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit ], [ %i.bm, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge ] ; 11 uses
  %i.bq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.bo, ptr %i.bn, ptr noundef %i.bp)
          to label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27 unwind label %bb.i ; 3 uses

bb.i:                                             ; preds = %.noexc24
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i20, label %.body25, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bj) #32
  br label %.body25

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27: ; preds = %.noexc24
  %.not.i28 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.i28, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.thread, label %.lr.ph.preheader.i29

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.thread: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.087
  store i64 %.08.lcssa.i, ptr %i.bs, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i

.lr.ph.preheader.i29:                             ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 24                ; 3 uses
  %xtraiter174 = and i64 %i.bw, 1
  %i.bx = icmp eq i64 %i.bv, 24
  br i1 %i.bx, label %.lr.ph.i30.epil.preheader, label %.lr.ph.preheader.i29.new

.lr.ph.preheader.i29.new:                         ; preds = %.lr.ph.preheader.i29
  %unroll_iter178 = and i64 %i.bw, -2
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30, %.lr.ph.preheader.i29.new
  %.011.i31 = phi i64 [ 0, %.lr.ph.preheader.i29.new ], [ %i.cj, %.lr.ph.i30 ] ; 3 uses
  %.0810.i32 = phi i64 [ 0, %.lr.ph.preheader.i29.new ], [ %spec.select.i33.1, %.lr.ph.i30 ]
  %niter179 = phi i64 [ 0, %.lr.ph.preheader.i29.new ], [ %niter179.next.1, %.lr.ph.i30 ]
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.011.i31
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %.087
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !36
  %spec.select.i33 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 %.0810.i32)
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.011.i31
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.087
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !36
  %spec.select.i33.1 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %spec.select.i33) ; 3 uses
  %i.cj = add nuw i64 %.011.i31, 2                ; 2 uses
  %niter179.next.1 = add i64 %niter179, 2         ; 2 uses
  %niter179.ncmp.1 = icmp eq i64 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa, label %.lr.ph.i30, !llvm.loop !3

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa: ; preds = %.lr.ph.i30
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36, label %.lr.ph.i30.epil.preheader

.lr.ph.i30.epil.preheader:                        ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa, %.lr.ph.preheader.i29
  %.011.i31.epil.init = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %i.cj, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa ]
  %.0810.i32.epil.init = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %spec.select.i33.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa ]
  %lcmp.mod177 = trunc i64 %i.bw to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.011.i31.epil.init
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %.087
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !36
  %spec.select.i33.epil = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %.0810.i32.epil.init)
  br label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36: ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa, %.lr.ph.i30.epil.preheader
  %spec.select.i33.lcssa = phi i64 [ %spec.select.i33.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa ], [ %spec.select.i33.epil, %.lr.ph.i30.epil.preheader ]
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.08.lcssa.i, i64 %spec.select.i33.lcssa)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.087
  store i64 %.sroa.speculated, ptr %i.cp, align 8, !tbaa !32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.df, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %i.bp, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36 ] ; 5 uses
  %i.cq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.cq, %.lr.ph.i.i.i ] ; 3 uses
  %i.ct = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !35
  %i.cx = add i64 %i.cw, 1
  tail call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.cs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cz = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.cq, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !58
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.df, %i.bq
  br i1 %.not.i.i.i37, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.thread
  %.not.i.i1.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bj) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.l
  br i1 %.not.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52
  %.05.i.i.i41 = phi ptr [ %i.dv, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52 ], [ %.pr.i55, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit ] ; 5 uses
  %i.dg = load ptr, ptr %.05.i.i.i41, align 8, !tbaa !57 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i42 = icmp eq ptr %i.dg, %i.di
  br i1 %.not4.i.i.i.i.i.i.i42, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i.i43:                           ; preds = %.lr.ph.i.i.i40, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46
  %.05.i.i.i.i.i.i.i44 = phi ptr [ %i.do, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46 ], [ %i.dg, %.lr.ph.i.i.i40 ] ; 3 uses
  %i.dj = load ptr, ptr %.05.i.i.i.i.i.i.i44, align 8, !tbaa !34 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i44, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i45: ; preds = %.lr.ph.i.i.i.i.i.i.i43
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !35
  %i.dn = add i64 %i.dm, 1
  tail call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i45
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i44, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i47 = icmp eq ptr %i.do, %i.di
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i43, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46
  %.pr.i.i.i.i.i49 = load ptr, ptr %.05.i.i.i41, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48, %.lr.ph.i.i.i40
  %i.dp = phi ptr [ %.pr.i.i.i.i.i49, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48 ], [ %i.dg, %.lr.ph.i.i.i40 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i51 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i.i.i.i.i51, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 24 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.dv, %i.ah
  br i1 %.not.i.i.i53, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i40, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i56: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %.not.i.i1.i57 = icmp eq ptr %.pr.i55, null
  br i1 %.not.i.i1.i57, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i56
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i55, i64 noundef %i.aa) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i56, %bb.n
  %i.dw = add nuw i64 %.087, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %i.k
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !760

.loopexit73:                                      ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.loopexit74:                                      ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.body25

.loopexit.split-lp75:                             ; preds = %.noexc.i.i22
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %.body25

.body25:                                          ; preds = %.loopexit74, %.loopexit.split-lp75, %bb.i, %bb.j
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.br, %bb.i ], [ %i.br, %bb.j ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.loopexit73, %.loopexit.split-lp, %bb.f, %bb.e, %.body25
  %.pn = phi { ptr, i32 } [ %eh.lpad-body26, %.body25 ], [ %i.ai, %bb.e ], [ %i.ai, %bb.f ], [ %lpad.loopexit, %.loopexit73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.idx = ashr exact i64 %i.j, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %.idx) #32
  resume { ptr, i32 } %.pn

.loopexit.sink.split:                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.020 = phi ptr [ %i.x, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.09.019 = phi ptr [ %i.w, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.019, align 8, !tbaa !57 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !62

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %.020, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !58
  %i.m = load ptr, ptr %.sroa.09.019, align 8, !tbaa !79
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.p = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.q = load ptr, ptr %.020, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #32
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.w, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !761

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_(ptr noundef %2, ptr noundef nonnull %.020)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.x, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #30
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #21 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !79     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !83     ; 5 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp eq i64 %i.j, 8
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %.012 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.z, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.012
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.012 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %.lr.ph.1

bb.b:                                             ; preds = %.lr.ph
  store i64 %i.o, ptr %i.p, align 8, !tbaa !32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %.lr.ph
  %i.s = or disjoint i64 %.012, 1                 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.s ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.1
  store i64 %i.v, ptr %i.w, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %i.z = add nuw i64 %.012, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %2 = and i64 %i.j, 8
  %lcmp.mod.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.012.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.012.epil.init
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.012.epil.init ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.03 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.b ]
  %i.f = load ptr, ptr %2, align 8, !tbaa !34
  %i.g = load i64, ptr %i.e, align 8, !tbaa !36
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.f, i64 noundef %i.g) ; 0 uses
  %i.i = add nuw i64 %.03, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5
}

; Function Attrs: mustprogress uwtable
define void @_Z22printRowInTwoQuadrantsSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EES_ImSaImEES7_S9_(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

.lr.ph:                                           ; preds = %bb.a, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  %i.h = phi ptr [ %i.au, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit ], [ %i.c, %bb.a ] ; 2 uses
  %.032 = phi i64 [ %i.as, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit ], [ 0, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !38
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !86
  %i.o = and i32 %i.n, -177
  %i.p = or disjoint i32 %i.o, 32
  store i32 %i.p, ptr %i.m, align 8, !tbaa !40
  %i.q = load ptr, ptr %1, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.032
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = load i64, ptr %i.j, align 8
  %i.u = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.t
  %i.v = shl i64 %i.s, 32
  %sext31 = add i64 %i.v, 8589934592
  %i.w = ashr exact i64 %sext31, 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !87
  %i.y = load i64, ptr %i.j, align 8
  %i.z = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 225 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !95, !range !96, !noundef !97
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !98 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !104
  %.not.i1.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef signext i8 %i.aj(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 32), !inline_history !6 ; 0 uses
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !57
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.d, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.d ], [ %i.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.aa, align 1, !tbaa !95
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %.lr.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.al = phi ptr [ %i.h, %.lr.ph ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  store i8 32, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.032 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !36
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ao, i64 noundef %i.aq) ; 0 uses
  %i.as = add nuw i64 %.032, 1                    ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.au = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5
  %i.az = icmp ult i64 %i.as, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 2, i8 noundef signext 32)
  %i.bb = load ptr, ptr @_ZL10HDOTS_CHARB5cxx11, align 8, !tbaa !34
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10HDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bb, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.be = load ptr, ptr %4, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.be, i64 noundef %i.bg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18.preheader unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.bj = load ptr, ptr %2, align 8, !tbaa !57
  %.not35 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not35, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18._crit_edge, label %.lr.ph34

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18._crit_edge: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18.preheader
  %i.bk = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ba
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18._crit_edge
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.j

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph34:                                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %.01333 = phi i64 [ %i.cz, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27 ], [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit18.preheader ] ; 3 uses
  %i.bp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !38
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24    ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !86
  %i.bv = and i32 %i.bu, -177
  %i.bw = or disjoint i32 %i.bv, 32
  store i32 %i.bw, ptr %i.bt, align 8, !tbaa !40
  %i.bx = load ptr, ptr %3, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.01333
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_:bb.a
bb.au:                                            ; preds = %.noexc185
  store ptr %i.fv, ptr %i.fs, align 8, !tbaa !75
  %i.fx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !75 ; 3 uses
  %i.fz = load ptr, ptr %17, align 8, !tbaa !74   ; 3 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %.not.i.i.i.i189 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i.i.i.i189, label %.noexc195, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gd = sdiv exact i64 %i.gc, 24
  %i.ge = icmp ugt i64 %i.gd, 384307168202282325
  br i1 %i.ge, label %.noexc.i.i193, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190, !prof !62

.noexc.i.i193:                                    ; preds = %bb.av
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc194 unwind label %bb.cy

.noexc194:                                        ; preds = %.noexc.i.i193
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190: ; preds = %bb.av
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge unwind label %bb.cy

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190
  %.pre723 = load ptr, ptr %17, align 8, !tbaa !80
  %.pre724 = load ptr, ptr %i.fx, align 8, !tbaa !80
  br label %.noexc195

.noexc195:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge, %bb.au
  %i.gg = phi ptr [ %i.fy, %bb.au ], [ %.pre724, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge ]
  %i.gh = phi ptr [ %i.fz, %bb.au ], [ %.pre723, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge ]
  %.pr.i215 = phi ptr [ null, %bb.au ], [ %i.gf, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge ] ; 10 uses
  store ptr %.pr.i215, ptr %24, align 8, !tbaa !74
  %i.gi = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %.pr.i215, ptr %i.gi, align 8, !tbaa !75
  %i.gj = getelementptr inbounds nuw i8, ptr %.pr.i215, i64 %i.gc
  %i.gk = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !76
  %i.gl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.gh, ptr %i.gg, ptr noundef %.pr.i215)
          to label %bb.ay unwind label %bb.aw     ; 3 uses

bb.aw:                                            ; preds = %.noexc195
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i.i191, label %.body196, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.gc) #32
  br label %.body196

bb.ay:                                            ; preds = %.noexc195
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !75
  invoke void @_Z20getMaxWidthOfColumnsSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %22, ptr nofree noundef nonnull align 8 dereferenceable(24) %23, ptr nofree noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.az unwind label %bb.cz

bb.az:                                            ; preds = %bb.ay
  %.not4.i.i.i199 = icmp eq ptr %.pr.i215, %i.gl
  br i1 %.not4.i.i.i199, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i200

.lr.ph.i.i.i200:                                  ; preds = %bb.az, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212
  %.05.i.i.i201 = phi ptr [ %i.hc, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212 ], [ %.pr.i215, %bb.az ] ; 5 uses
  %i.gn = load ptr, ptr %.05.i.i.i201, align 8, !tbaa !57 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i201, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i202 = icmp eq ptr %i.gn, %i.gp
  br i1 %.not4.i.i.i.i.i.i.i202, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210, label %.lr.ph.i.i.i.i.i.i.i203

.lr.ph.i.i.i.i.i.i.i203:                          ; preds = %.lr.ph.i.i.i200, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206
  %.05.i.i.i.i.i.i.i204 = phi ptr [ %i.gv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206 ], [ %i.gn, %.lr.ph.i.i.i200 ] ; 3 uses
  %i.gq = load ptr, ptr %.05.i.i.i.i.i.i.i204, align 8, !tbaa !34 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i204, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i205: ; preds = %.lr.ph.i.i.i.i.i.i.i203
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !35
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206: ; preds = %.lr.ph.i.i.i.i.i.i.i203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i205
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i204, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i207 = icmp eq ptr %i.gv, %i.gp
  br i1 %.not.i.i.i.i.i.i.i207, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208, label %.lr.ph.i.i.i.i.i.i.i203, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206
  %.pr.i.i.i.i.i209 = load ptr, ptr %.05.i.i.i201, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208, %.lr.ph.i.i.i200
  %i.gw = phi ptr [ %.pr.i.i.i.i.i209, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208 ], [ %i.gn, %.lr.ph.i.i.i200 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i211 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i1.i.i.i.i.i211, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i201, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !58
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212: ; preds = %bb.ba, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i201, i64 24 ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %i.hc, %i.gl
  br i1 %.not.i.i.i213, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i200, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212, %bb.az
  %.not.i.i1.i217 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i1.i217, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.gc) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216, %bb.bb
  %.not4.i.i.i221 = icmp eq ptr %.pr.i237, %i.fv
  br i1 %.not4.i.i.i221, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238, label %.lr.ph.i.i.i222

.lr.ph.i.i.i222:                                  ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234
  %.05.i.i.i223 = phi ptr [ %i.hs, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234 ], [ %.pr.i237, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220 ] ; 5 uses
  %i.hd = load ptr, ptr %.05.i.i.i223, align 8, !tbaa !57 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i224 = icmp eq ptr %i.hd, %i.hf
  br i1 %.not4.i.i.i.i.i.i.i224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232, label %.lr.ph.i.i.i.i.i.i.i225

.lr.ph.i.i.i.i.i.i.i225:                          ; preds = %.lr.ph.i.i.i222, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228
  %.05.i.i.i.i.i.i.i226 = phi ptr [ %i.hl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228 ], [ %i.hd, %.lr.ph.i.i.i222 ] ; 3 uses
  %i.hg = load ptr, ptr %.05.i.i.i.i.i.i.i226, align 8, !tbaa !34 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i226, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i227: ; preds = %.lr.ph.i.i.i.i.i.i.i225
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !35
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228: ; preds = %.lr.ph.i.i.i.i.i.i.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i227
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i226, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i229 = icmp eq ptr %i.hl, %i.hf
  br i1 %.not.i.i.i.i.i.i.i229, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230, label %.lr.ph.i.i.i.i.i.i.i225, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228
  %.pr.i.i.i.i.i231 = load ptr, ptr %.05.i.i.i223, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230, %.lr.ph.i.i.i222
  %i.hm = phi ptr [ %.pr.i.i.i.i.i231, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230 ], [ %i.hd, %.lr.ph.i.i.i222 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i233 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i1.i.i.i.i.i233, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !58
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234: ; preds = %bb.bc, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 24 ; 2 uses
  %.not.i.i.i235 = icmp eq ptr %i.hs, %i.fv
  br i1 %.not.i.i.i235, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238, label %.lr.ph.i.i.i222, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220
  %.not.i.i1.i239 = icmp eq ptr %.pr.i237, null
  br i1 %.not.i.i1.i239, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i237, i64 noundef %i.fm) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238, %bb.bd
  %i.ht = load ptr, ptr %4, align 8, !tbaa !79    ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !79
  %i.hw = icmp eq ptr %i.ht, %i.hv                ; 2 uses
  br i1 %i.hw, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242
  %i.hx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !85 ; 2 uses
  %i.hz = load ptr, ptr %19, align 8, !tbaa !83   ; 5 uses
  %.not.i = icmp eq ptr %i.hy, %i.hz
  br i1 %.not.i, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 3 uses
  %i.id = ashr exact i64 %i.ic, 3                 ; 2 uses
  %i.ie = icmp eq i64 %i.ic, 8
  br i1 %i.ie, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.id, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bg, %.lr.ph.preheader.i.new
  %.012.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.is, %bb.bg ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.bg ]
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %.012.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !36 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.012.i ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !32
  %i.ik = icmp ugt i64 %i.ih, %i.ij
  br i1 %i.ik, label %bb.be, label %.lr.ph.i.1

bb.be:                                            ; preds = %.lr.ph.i
  store i64 %i.ih, ptr %i.ii, align 8, !tbaa !32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.be, %.lr.ph.i
  %i.il = or disjoint i64 %.012.i, 1              ; 2 uses
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !36 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.il ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !32
  %i.ir = icmp ugt i64 %i.io, %i.iq
  br i1 %i.ir, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i.1
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph.i.1
  %i.is = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit.loopexit.unr-lcssa: ; preds = %bb.bg
  %46 = and i64 %i.ic, 8
  %lcmp.mod.not = icmp eq i64 %46, 0
  br i1 %lcmp.mod.not, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.is, %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod991 = trunc i64 %i.id to i1
  call void @llvm.assume(i1 %lcmp.mod991)
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %.012.i.epil.init
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !36 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.012.i.epil.init ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !32
  %i.iy = icmp ugt i64 %i.iv, %i.ix
  br i1 %i.iy, label %bb.bh, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit

bb.bh:                                            ; preds = %.lr.ph.i.epil.preheader
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !32
  br label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit

_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit: ; preds = %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit.loopexit.unr-lcssa, %bb.bh, %.lr.ph.i.epil.preheader, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242, %.preheader.i
  %i.iz = load ptr, ptr %5, align 8, !tbaa !79    ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !79
  %i.jc = icmp eq ptr %i.iz, %i.jb
  br i1 %i.jc, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249, label %.preheader.i243

.preheader.i243:                                  ; preds = %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !85 ; 2 uses
  %i.jf = load ptr, ptr %22, align 8, !tbaa !83   ; 5 uses
  %.not.i244 = icmp eq ptr %i.je, %i.jf
  br i1 %.not.i244, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249, label %.lr.ph.preheader.i245

.lr.ph.preheader.i245:                            ; preds = %.preheader.i243
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = ashr exact i64 %i.ji, 3                 ; 2 uses
  %i.jk = icmp eq i64 %i.ji, 8
  br i1 %i.jk, label %.lr.ph.i246.epil.preheader, label %.lr.ph.preheader.i245.new

.lr.ph.preheader.i245.new:                        ; preds = %.lr.ph.preheader.i245
  %unroll_iter995 = and i64 %i.jj, -2
  br label %.lr.ph.i246

.lr.ph.i246:                                      ; preds = %bb.bk, %.lr.ph.preheader.i245.new
  %.012.i247 = phi i64 [ 0, %.lr.ph.preheader.i245.new ], [ %i.jy, %bb.bk ] ; 4 uses
  %niter996 = phi i64 [ 0, %.lr.ph.preheader.i245.new ], [ %niter996.next.1, %bb.bk ]
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %.012.i247
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !36 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.012.i247 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !32
  %i.jq = icmp ugt i64 %i.jn, %i.jp
  br i1 %i.jq, label %bb.bi, label %.lr.ph.i246.1

bb.bi:                                            ; preds = %.lr.ph.i246
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !32
  br label %.lr.ph.i246.1

.lr.ph.i246.1:                                    ; preds = %bb.bi, %.lr.ph.i246
  %i.jr = or disjoint i64 %.012.i247, 1           ; 2 uses
  %i.js = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !36 ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jr ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !32
  %i.jx = icmp ugt i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i246.1
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i246.1
  %i.jy = add nuw i64 %.012.i247, 2               ; 2 uses
  %niter996.next.1 = add i64 %niter996, 2         ; 2 uses
  %niter996.ncmp.1 = icmp eq i64 %niter996.next.1, %unroll_iter995
  br i1 %niter996.ncmp.1, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249.loopexit.unr-lcssa, label %.lr.ph.i246, !llvm.loop !4

_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249.loopexit.unr-lcssa: ; preds = %bb.bk
  %47 = and i64 %i.ji, 8
  %lcmp.mod993.not = icmp eq i64 %47, 0
  br i1 %lcmp.mod993.not, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249, label %.lr.ph.i246.epil.preheader

.lr.ph.i246.epil.preheader:                       ; preds = %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249.loopexit.unr-lcssa, %.lr.ph.preheader.i245
  %.012.i247.epil.init = phi i64 [ 0, %.lr.ph.preheader.i245 ], [ %i.jy, %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod994 = trunc i64 %i.jj to i1
  call void @llvm.assume(i1 %lcmp.mod994)
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %.012.i247.epil.init
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !36 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.012.i247.epil.init ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !32
  %i.ke = icmp ugt i64 %i.kb, %i.kd
  br i1 %i.ke, label %bb.bl, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249

bb.bl:                                            ; preds = %.lr.ph.i246.epil.preheader
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !32
  br label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249

_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249: ; preds = %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249.loopexit.unr-lcssa, %bb.bl, %.lr.ph.i246.epil.preheader, %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit, %.preheader.i243
  br i1 %i.hw, label %_ZNSolsEPFRSoS_E.exit, label %bb.bm

bb.bm:                                            ; preds = %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249
  %i.kf = load ptr, ptr %8, align 8, !tbaa !34
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !36
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.kf, i64 noundef %i.kh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.da ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.bm
  %i.kj = load ptr, ptr %i.hu, align 8, !tbaa !59 ; 3 uses
  %i.kk = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %.not.i.i.i.i251 = icmp eq ptr %i.kj, %i.kk
  br i1 %.not.i.i.i.i251, label %.noexc255, label %bb.bn

bb.bn:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ko = icmp ugt i64 %i.kn, 9223372036854775776
  br i1 %i.ko, label %.noexc.i.i460.invoke, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !62

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bn
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc255_crit_edge unwind label %bb.da

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc255_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre725 = load ptr, ptr %4, align 8, !tbaa !79
  %.pre726 = load ptr, ptr %i.hu, align 8, !tbaa !79
  br label %.noexc255

.noexc255:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc255_crit_edge, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.kq = phi ptr [ %i.kj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %.pre726, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc255_crit_edge ]
  %i.kr = phi ptr [ %i.kk, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %.pre725, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc255_crit_edge ]
  %.pr.i295 = phi ptr [ null, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %i.kp, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc255_crit_edge ] ; 10 uses
  store ptr %.pr.i295, ptr %25, align 8, !tbaa !57
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %.pr.i295, ptr %i.ks, align 8, !tbaa !59
  %i.kt = getelementptr inbounds nuw i8, ptr %.pr.i295, i64 %i.kn
  %i.ku = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !58
  %i.kv = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.kr, ptr %i.kq, ptr noundef %.pr.i295)
          to label %bb.bq unwind label %bb.bo     ; 3 uses

bb.bo:                                            ; preds = %.noexc255
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %.pr.i295, null
  br i1 %.not.i.i.i252, label %.body256, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i295, i64 noundef %i.kn) #32
  br label %.body256

bb.bq:                                            ; preds = %.noexc255
  store ptr %i.kv, ptr %i.ks, align 8, !tbaa !59
  %i.kx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !85 ; 2 uses
  %i.kz = load ptr, ptr %19, align 8, !tbaa !83   ; 4 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %.not.i.i.i.i258 = icmp eq ptr %i.ky, %i.kz
  br i1 %.not.i.i.i.i258, label %.thread, label %bb.br

.thread:                                          ; preds = %bb.bq
  %i.ld = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.le = getelementptr inbounds i8, ptr null, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %26, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !84
  br label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.lg = icmp ugt i64 %i.lc, 9223372036854775800
  br i1 %i.lg, label %.noexc.i.i259, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i259:                                    ; preds = %bb.br
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc260 unwind label %bb.db

.noexc260:                                        ; preds = %.noexc.i.i259
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.br
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #33
          to label %.noexc261 unwind label %bb.db ; 8 uses

.noexc261:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.lh, ptr %26, align 8, !tbaa !83
  %i.li = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !85
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lc ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !84
  %i.ll = icmp samesign ugt i64 %i.lc, 8
  br i1 %i.ll, label %bb.bs, label %bb.bt, !prof !768

bb.bs:                                            ; preds = %.noexc261
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lh, ptr align 8 %i.kz, i64 %i.lc, i1 false)
  br label %bb.bv

bb.bt:                                            ; preds = %.noexc261
  %i.lm = icmp eq i64 %i.lc, 8
  br i1 %i.lm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ln = load i64, ptr %i.kz, align 8, !tbaa !32
  store i64 %i.ln, ptr %i.lh, align 8, !tbaa !32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %.thread
  %i.lo = phi ptr [ %i.lj, %bb.bs ], [ %i.lj, %bb.bt ], [ %i.lj, %bb.bu ], [ %i.le, %.thread ] ; 3 uses
  %i.lp = phi ptr [ %i.li, %bb.bs ], [ %i.li, %bb.bt ], [ %i.li, %bb.bu ], [ %i.ld, %.thread ]
  %i.lq = phi ptr [ %i.lh, %bb.bs ], [ %i.lh, %bb.bt ], [ %i.lh, %bb.bu ], [ null, %.thread ] ; 6 uses
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !85
  %i.lr = load ptr, ptr %i.ja, align 8, !tbaa !59 ; 3 uses
  %i.ls = load ptr, ptr %5, align 8, !tbaa !57    ; 3 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %.not.i.i.i.i262 = icmp eq ptr %i.lr, %i.ls
  br i1 %.not.i.i.i.i262, label %.noexc268, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lw = icmp ugt i64 %i.lv, 9223372036854775776
  br i1 %i.lw, label %.noexc.i.i266, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263, !prof !62

.noexc.i.i266:                                    ; preds = %bb.bw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc267 unwind label %bb.dc

.noexc267:                                        ; preds = %.noexc.i.i266
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263: ; preds = %bb.bw
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lv) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263..noexc268_crit_edge unwind label %bb.dc

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263..noexc268_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263
  %.pre727 = load ptr, ptr %5, align 8, !tbaa !79
  %.pre728 = load ptr, ptr %i.ja, align 8, !tbaa !79
  br label %.noexc268

.noexc268:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263..noexc268_crit_edge, %bb.bv
  %i.ly = phi ptr [ %i.lr, %bb.bv ], [ %.pre728, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263..noexc268_crit_edge ]
  %i.lz = phi ptr [ %i.ls, %bb.bv ], [ %.pre727, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263..noexc268_crit_edge ]
  %.pr.i283 = phi ptr [ null, %bb.bv ], [ %i.lx, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263..noexc268_crit_edge ] ; 10 uses
  store ptr %.pr.i283, ptr %27, align 8, !tbaa !57
  %i.ma = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store ptr %.pr.i283, ptr %i.ma, align 8, !tbaa !59
  %i.mb = getelementptr inbounds nuw i8, ptr %.pr.i283, i64 %i.lv
  %i.mc = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !58
  %i.md = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.lz, ptr %i.ly, ptr noundef %.pr.i283)
          to label %bb.bz unwind label %bb.bx     ; 3 uses

bb.bx:                                            ; preds = %.noexc268
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %.pr.i283, null
  br i1 %.not.i.i.i264, label %.body269, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i283, i64 noundef %i.lv) #32
  br label %.body269

bb.bz:                                            ; preds = %.noexc268
  store ptr %i.md, ptr %i.ma, align 8, !tbaa !59
  %i.mf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !85 ; 2 uses
  %i.mh = load ptr, ptr %22, align 8, !tbaa !83   ; 4 uses
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %.not.i.i.i.i272 = icmp eq ptr %i.mg, %i.mh
  br i1 %.not.i.i.i.i272, label %.thread705, label %bb.ca

end_hunk_1
begin_hunk_2_@_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_:bb.a
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !119
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ab, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %7, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.aa, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.z, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocMatrixRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExxSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.w, i64 noundef %i.y, ptr nofree noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit8
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !125 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ac, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !120
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !771
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.am, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %8, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.al, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.ak, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocMatrixRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExxSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ah, i64 noundef %i.aj, ptr nofree noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !125 ; 2 uses
  %.not.i11 = icmp eq ptr %i.an, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %bb.k, %bb.l
  ret void

bb.n:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !125 ; 2 uses
  %.not.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i13, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #30
  unreachable

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !125 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i15, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #30
  unreachable

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit8
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !125 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i17, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #30
  unreachable

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !125 ; 2 uses
  %.not.i19 = icmp eq ptr %i.bh, null
  br i1 %.not.i19, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit14:                 ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.u ], [ %i.aw, %bb.r ], [ %i.ar, %bb.o ], [ %i.ar, %bb.n ], [ %i.aw, %bb.q ], [ %i.bb, %bb.t ], [ %i.bg, %bb.w ], [ %i.bg, %bb.x ]
  resume { ptr, i32 } %.pn
}

declare void @_Z19util_tryAllocMatrixRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExxSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_Z36error_printerFailedToAllocTempMemoryv() #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121
  tail call void %i.a(), !inline_history !772
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !121
  br label %_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFvvE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !121
  br label %_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %2) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !773
  %i.j = getelementptr [16 x i8], ptr %i.i, i64 %1 ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.k = icmp eq i64 %i.f, 24
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.g, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.09 = phi i64 [ 0, %.lr.ph.new ], [ %i.u, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.l = getelementptr [16 x i8], ptr %i.j, i64 %.09
  %i.m = load ptr, ptr %0, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.09
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !110
  %i.p = or disjoint i64 %.09, 1                  ; 2 uses
  %i.q = getelementptr [16 x i8], ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %0, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.p
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !110
  %i.u = add nuw i64 %.09, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !9

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.09.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.u, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.v = getelementptr [16 x i8], ptr %i.j, i64 %.09.epil.init
  %i.w = load ptr, ptr %0, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.09.epil.init
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !110
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %3) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.40", align 8    ; 10 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.k, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %5, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.j, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.i, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocVectorRSt6vectorIPSt7complexIdESaIS2_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.h, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !78     ; 15 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = sdiv exact i64 %i.t, 24                  ; 8 uses
  %.not = icmp eq ptr %i.p, %i.q
  %.pre = load ptr, ptr %4, align 8, !tbaa !781   ; 9 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %min.iters.check = icmp ult i64 %i.u, 15
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.memcheck

.lr.ph.preheader30:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.021.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.v = sub nsw i64 %i.u, %.021.ph
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader30, %.lr.ph.prol
  %.021.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.021.ph, %.lr.ph.preheader30 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader30 ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.021.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.021.prol
  store ptr %i.x, ptr %i.y, align 8, !tbaa !109
  %i.z = add nuw i64 %.021.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !774

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader30
  %.021.unr = phi i64 [ %.021.ph, %.lr.ph.preheader30 ], [ %i.z, %.lr.ph.prol ]
  %i.aa = sub nsw i64 %.021.ph, %i.u
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = shl nsw i64 %i.u, 3
  %scevgep = getelementptr i8, ptr %.pre, i64 %i.ac
  %i.ad = getelementptr i8, ptr %i.q, i64 %i.t
  %scevgep29 = getelementptr i8, ptr %i.ad, i64 -16
  %bound0 = icmp ult ptr %.pre, %scevgep29
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ae = and i64 %i.u, 3                         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 4, i64 %i.ae
  %n.vec = sub nsw i64 %i.u, %i.ag                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %index
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !71, !alias.scope !782
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !71, !alias.scope !782
  %i.aq = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.ar = insertelement <2 x ptr> %i.aq, ptr %i.ap, i64 1
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !71, !alias.scope !782
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !71, !alias.scope !782
  %i.au = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.av = insertelement <2 x ptr> %i.au, ptr %i.at, i64 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x ptr> %i.ar, ptr %i.aw, align 8, !tbaa !109, !alias.scope !783, !noalias !782
  store <2 x ptr> %i.av, ptr %i.ax, align 8, !tbaa !109, !alias.scope !783, !noalias !782
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %.lr.ph.preheader30, label %vector.body, !llvm.loop !778

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  invoke void @_Z26localiser_densmatr_getAmpsPPSt7complexIdE5Quregxxxx(ptr noundef %.pre, ptr noundef nonnull byval(%struct.Qureg) align 8 %3, i64 noundef %1, i64 noundef %2, i64 noundef %i.u, i64 noundef %i.bf)
          to label %bb.i unwind label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i16 = icmp eq ptr %i.bh, null
  br i1 %.not.i16, label %_ZNSt14_Function_baseD2Ev.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit17 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #30
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.021 = phi i64 [ %i.ca, %.lr.ph ], [ %.021.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.021
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.021
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !109
  %i.bo = add nuw i64 %.021, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !71
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bo
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !109
  %i.bs = add nuw i64 %.021, 2                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bs
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !109
  %i.bw = add nuw i64 %.021, 3                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bw
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !109
  %i.ca = add nuw i64 %.021, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ca, %i.u
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !779

bb.i:                                             ; preds = %._crit_edge
  %i.cb = load ptr, ptr %4, align 8, !tbaa !781   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !786
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #32
  br label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit

_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit:     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit17

_ZNSt14_Function_baseD2Ev.exit17:                 ; preds = %bb.g, %bb.f, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.l ], [ %i.bg, %bb.f ], [ %i.bg, %bb.g ]
  %i.ci = load ptr, ptr %4, align 8, !tbaa !781   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit19, label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit17
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !786
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #32
  br label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit19

_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit19:   ; preds = %_ZNSt14_Function_baseD2Ev.exit17, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn
}

declare void @_Z19util_tryAllocVectorRSt6vectorIPSt7complexIdESaIS2_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_Z26localiser_densmatr_getAmpsPPSt7complexIdE5Quregxxxx(ptr noundef, ptr noundef byval(%struct.Qureg) align 8, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z23populateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_5Qureg(ptr nofree noundef readonly byval(%struct.MatrixQuadrantInds) align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %5) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129  ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  tail call void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.d, i64 noundef %i.f, ptr noundef nonnull byval(%struct.Qureg) align 8 %5)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  tail call void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.d, i64 noundef %i.h, ptr noundef nonnull byval(%struct.Qureg) align 8 %5)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  tail call void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.j, i64 noundef %i.f, ptr noundef nonnull byval(%struct.Qureg) align 8 %5)
  tail call void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, i64 noundef %i.h, ptr noundef nonnull byval(%struct.Qureg) align 8 %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_Z29populateSingleColumnQcompmatrI5QuregEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.d, ptr noundef nonnull byval(%struct.Qureg) align 8 %5)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !113
  tail call void @_Z29populateSingleColumnQcompmatrI5QuregEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.l, ptr noundef nonnull byval(%struct.Qureg) align 8 %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z29populateSingleColumnQcompmatrI5QuregEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef byval(%struct.Qureg) align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.30", align 8    ; 13 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 5 uses
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %4, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.j, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.i, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocVectorRSt6vectorISt7complexIdESaIS1_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.g, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %3, align 8, !tbaa !71
  invoke void @_Z26localiser_statevec_getAmpsPSt7complexIdE5Quregxx(ptr noundef %i.p, ptr noundef nonnull byval(%struct.Qureg) align 8 %2, i64 noundef %1, i64 noundef %i.g)
          to label %.lr.ph.preheader unwind label %bb.j

.lr.ph.preheader:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %xtraiter = and i64 %i.g, 1
  %i.q = icmp eq i64 %i.f, 24
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.at, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod24 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod24)
  %i.r = load ptr, ptr %3, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.020.epil.init
  %i.t = load ptr, ptr %0, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.020.epil.init
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ad, null
  br i1 %.not.i16, label %_ZNSt14_Function_baseD2Ev.exit17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit17 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #30
  unreachable

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit17

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.020
  %i.ak = load ptr, ptr %0, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.020
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !110
  %i.an = or disjoint i64 %.020, 1                ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %0, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.an
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !110
  %i.at = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !787

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  ret void

_ZNSt14_Function_baseD2Ev.exit17:                 ; preds = %bb.h, %bb.g, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit17
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !108
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19:    ; preds = %_ZNSt14_Function_baseD2Ev.exit17, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

declare void @_Z19util_tryAllocVectorRSt6vectorISt7complexIdESaIS1_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_Z26localiser_statevec_getAmpsPSt7complexIdE5Quregxx(ptr noundef, ptr noundef byval(%struct.Qureg) align 8, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z22setColumnLabelsToRanksRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERix5Qureg(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i64 noundef %2, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %3) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !57
  %.not21 = icmp eq ptr %i.b, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.af, %.critedge ] ; 3 uses
  %i.f = add i64 %.020, %2
  %i.g = call noundef i32 @_Z28util_getRankContainingColumn5Quregx(ptr noundef nonnull byval(%struct.Qureg) align 8 %3, i64 noundef %i.f) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.h = load i32, ptr %1, align 4, !tbaa !26
  %.not = icmp sgt i32 %i.g, %i.h
  br i1 %.not, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  call void @_Z10getRankStrB5cxx11i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.g)
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  store ptr %i.d, ptr %4, align 8, !tbaa !30
  store i64 0, ptr %i.e, align 8, !tbaa !36
  store i8 0, ptr %i.d, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.020 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = load ptr, ptr %4, align 8, !tbaa !34     ; 6 uses
  %i.o = icmp eq ptr %i.n, %i.d                   ; 2 uses
  %.pre22 = load i64, ptr %i.e, align 8, !tbaa !36 ; 5 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.o, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.o, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = icmp ult i64 %.pre22, 16
  call void @llvm.assume(i1 %i.p)
  %.not21.i = icmp eq ptr %4, %i.j
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !62

bb.f:                                             ; preds = %bb.e
  switch i64 %.pre22, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.n, align 1, !tbaa !35
  store i8 %i.q, ptr %i.k, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %.pre22, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.r = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !36
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !35
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !34
  store i64 %.pre22, ptr %i.v, align 8, !tbaa !36
  %i.w = load i64, ptr %i.d, align 8, !tbaa !35
  store i64 %i.w, ptr %i.l, align 8, !tbaa !35
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.x = load i64, ptr %i.l, align 8, !tbaa !35
  store ptr %i.n, ptr %i.j, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.pre22, ptr %i.y, align 8, !tbaa !36
end_hunk_2
begin_hunk_3_@_Z11printVectorI9DiagMatr1EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.bp
  %i.jz = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.bo
  %.pn34 = phi { ptr, i32 } [ %i.jv, %bb.bo ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %i.jw, %bb.bp ] ; 2 uses
  %i.kb = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.dn
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.kd = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.bn
  %.pn34.pn = phi { ptr, i32 } [ %i.ju, %bb.bn ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ] ; 2 uses
  %i.kf = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.da
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.kh = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.bm
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.bm ], [ %.pn34.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #29
  br label %.body127

.body127:                                         ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ], [ %i.cy, %bb.ad ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #29
  br label %.body117

.body117:                                         ; preds = %bb.ac, %.body127
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %.body127 ], [ %i.cv, %bb.ac ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  br label %.body107

.body107:                                         ; preds = %bb.ab, %.body117
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn, %.body117 ], [ %i.cs, %bb.ab ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #29
  br label %.body98

.body98:                                          ; preds = %bb.aa, %.body107
  %.pn34.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn, %.body107 ], [ %i.cp, %bb.aa ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #29
  br label %.body90

.body90:                                          ; preds = %bb.bl, %bb.z, %bb.y, %.body98
  %.pn34.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn, %.body98 ], [ %i.js, %bb.bl ], [ %i.cn, %bb.z ], [ %i.cn, %bb.y ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #29
  br label %.body80

.body80:                                          ; preds = %bb.bk, %bb.v, %bb.u, %.body90
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn, %.body90 ], [ %i.jr, %bb.bk ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  br label %.body70

.body70:                                          ; preds = %bb.bj, %bb.r, %bb.q, %.body80
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn, %.body80 ], [ %i.jq, %bb.bj ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #29
  br label %.body

.body:                                            ; preds = %bb.bi, %bb.n, %bb.m, %.body70
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body70 ], [ %i.jp, %bb.bi ], [ %i.ar, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  %i.kj = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.q
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %.body
  %i.kl = load i64, ptr %i.q, align 8, !tbaa !35
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %bb.bh
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.bh ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.kn = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.p
  br i1 %i.ko, label %.critedge53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %i.kp = load i64, ptr %i.p, align 8, !tbaa !35
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #32
  br label %.critedge53

.critedge53:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %bb.bg
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.bg ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bq

bb.bq:                                            ; preds = %.critedge53, %bb.bf
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.critedge53 ], [ %i.jm, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z29populateSingleColumnQcompmatrI9DiagMatr1EvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef byval(%struct.DiagMatr1) align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.30", align 8    ; 15 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 5 uses
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %4, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.j, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.i, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocVectorRSt6vectorISt7complexIdESaIS1_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.g, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %.idx = shl nuw nsw i64 %i.g, 4                 ; 3 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #33
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i ; 3 uses

.noexc4.i:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr i8, ptr %i.p, i64 %.idx    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.q, i64 %.idx, i1 false)
  %i.s = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  store ptr %i.p, ptr %3, align 8, !tbaa !71
  store ptr %i.r, ptr %i.t, align 8, !tbaa !70
  store ptr %i.r, ptr %i.u, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.preheader, label %bb.f

_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit21

bb.f:                                             ; preds = %.noexc4.i
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.z) #32
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc4.i, %bb.f
  %xtraiter = and i64 %i.g, 1
  %i.aa = icmp eq i64 %i.f, 24
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.031.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bb, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod36)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.031.epil.init
  %i.ad = load ptr, ptr %0, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.031.epil.init
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.ag = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19:    ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i20 = icmp eq ptr %i.am, null
  br i1 %.not.i20, label %_ZNSt14_Function_baseD2Ev.exit21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit21 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.031 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.031
  %i.as = load ptr, ptr %0, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.031
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !110
  %i.av = or disjoint i64 %.031, 1                ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %0, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.av
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !110
  %i.bb = add nuw i64 %.031, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !829

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19
  ret void

_ZNSt14_Function_baseD2Ev.exit21:                 ; preds = %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.w, %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit21
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !108
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24:    ; preds = %_ZNSt14_Function_baseD2Ev.exit21, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z11print_elems9DiagMatr2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly byval(%struct.DiagMatr2) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !30
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !34
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.h, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %2, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z11printVectorI9DiagMatr2EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%struct.DiagMatr2) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z11printVectorI9DiagMatr2EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.DiagMatr2) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 5 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
end_hunk_3
begin_hunk_4_@_Z11printVectorI9DiagMatr2EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.bp
  %i.jz = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.bo
  %.pn34 = phi { ptr, i32 } [ %i.jv, %bb.bo ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %i.jw, %bb.bp ] ; 2 uses
  %i.kb = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.dn
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.kd = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.bn
  %.pn34.pn = phi { ptr, i32 } [ %i.ju, %bb.bn ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ] ; 2 uses
  %i.kf = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.da
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.kh = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.bm
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.bm ], [ %.pn34.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #29
  br label %.body127

.body127:                                         ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ], [ %i.cy, %bb.ad ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #29
  br label %.body117

.body117:                                         ; preds = %bb.ac, %.body127
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %.body127 ], [ %i.cv, %bb.ac ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  br label %.body107

.body107:                                         ; preds = %bb.ab, %.body117
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn, %.body117 ], [ %i.cs, %bb.ab ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #29
  br label %.body98

.body98:                                          ; preds = %bb.aa, %.body107
  %.pn34.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn, %.body107 ], [ %i.cp, %bb.aa ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #29
  br label %.body90

.body90:                                          ; preds = %bb.bl, %bb.z, %bb.y, %.body98
  %.pn34.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn, %.body98 ], [ %i.js, %bb.bl ], [ %i.cn, %bb.z ], [ %i.cn, %bb.y ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #29
  br label %.body80

.body80:                                          ; preds = %bb.bk, %bb.v, %bb.u, %.body90
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn, %.body90 ], [ %i.jr, %bb.bk ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  br label %.body70

.body70:                                          ; preds = %bb.bj, %bb.r, %bb.q, %.body80
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn, %.body80 ], [ %i.jq, %bb.bj ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #29
  br label %.body

.body:                                            ; preds = %bb.bi, %bb.n, %bb.m, %.body70
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body70 ], [ %i.jp, %bb.bi ], [ %i.ar, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  %i.kj = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.q
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %.body
  %i.kl = load i64, ptr %i.q, align 8, !tbaa !35
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %bb.bh
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.bh ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.kn = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.p
  br i1 %i.ko, label %.critedge53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %i.kp = load i64, ptr %i.p, align 8, !tbaa !35
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #32
  br label %.critedge53

.critedge53:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %bb.bg
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.bg ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bq

bb.bq:                                            ; preds = %.critedge53, %bb.bf
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.critedge53 ], [ %i.jm, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z29populateSingleColumnQcompmatrI9DiagMatr2EvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef byval(%struct.DiagMatr2) align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.30", align 8    ; 15 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 5 uses
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %4, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.j, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.i, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocVectorRSt6vectorISt7complexIdESaIS1_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.g, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %.idx = shl nuw nsw i64 %i.g, 4                 ; 3 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #33
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i ; 3 uses

.noexc4.i:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr i8, ptr %i.p, i64 %.idx    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.q, i64 %.idx, i1 false)
  %i.s = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  store ptr %i.p, ptr %3, align 8, !tbaa !71
  store ptr %i.r, ptr %i.t, align 8, !tbaa !70
  store ptr %i.r, ptr %i.u, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.preheader, label %bb.f

_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit21

bb.f:                                             ; preds = %.noexc4.i
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.z) #32
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc4.i, %bb.f
  %xtraiter = and i64 %i.g, 1
  %i.aa = icmp eq i64 %i.f, 24
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.031.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bb, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod36)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.031.epil.init
  %i.ad = load ptr, ptr %0, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.031.epil.init
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.ag = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19:    ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i20 = icmp eq ptr %i.am, null
  br i1 %.not.i20, label %_ZNSt14_Function_baseD2Ev.exit21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit21 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.031 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.031
  %i.as = load ptr, ptr %0, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.031
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !110
  %i.av = or disjoint i64 %.031, 1                ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %0, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.av
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !110
  %i.bb = add nuw i64 %.031, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !833

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19
  ret void

_ZNSt14_Function_baseD2Ev.exit21:                 ; preds = %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.w, %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit21
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !108
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24:    ; preds = %_ZNSt14_Function_baseD2Ev.exit21, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z11print_elems8DiagMatrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !30
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !34
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.h, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %2, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z11printVectorI8DiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z11printVectorI8DiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.DiagMatr) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 5 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
end_hunk_4
begin_hunk_5_@_Z11printVectorI8DiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.bn
  %.pn34.pn = phi { ptr, i32 } [ %i.ju, %bb.bn ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ] ; 2 uses
  %i.kf = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.da
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.kh = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.bm
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.bm ], [ %.pn34.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #29
  br label %.body127

.body127:                                         ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ], [ %i.cy, %bb.ad ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #29
  br label %.body117

.body117:                                         ; preds = %bb.ac, %.body127
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %.body127 ], [ %i.cv, %bb.ac ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  br label %.body107

.body107:                                         ; preds = %bb.ab, %.body117
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn, %.body117 ], [ %i.cs, %bb.ab ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #29
  br label %.body98

.body98:                                          ; preds = %bb.aa, %.body107
  %.pn34.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn, %.body107 ], [ %i.cp, %bb.aa ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #29
  br label %.body90

.body90:                                          ; preds = %bb.bl, %bb.z, %bb.y, %.body98
  %.pn34.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn, %.body98 ], [ %i.js, %bb.bl ], [ %i.cn, %bb.z ], [ %i.cn, %bb.y ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #29
  br label %.body80

.body80:                                          ; preds = %bb.bk, %bb.v, %bb.u, %.body90
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn, %.body90 ], [ %i.jr, %bb.bk ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  br label %.body70

.body70:                                          ; preds = %bb.bj, %bb.r, %bb.q, %.body80
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn, %.body80 ], [ %i.jq, %bb.bj ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ]
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #29
  br label %.body

.body:                                            ; preds = %bb.bi, %bb.n, %bb.m, %.body70
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body70 ], [ %i.jp, %bb.bi ], [ %i.ar, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  %i.kj = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.q
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %.body
  %i.kl = load i64, ptr %i.q, align 8, !tbaa !35
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %bb.bh
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.bh ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.kn = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.p
  br i1 %i.ko, label %.critedge53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %i.kp = load i64, ptr %i.p, align 8, !tbaa !35
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #32
  br label %.critedge53

.critedge53:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %bb.bg
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.bg ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bq

bb.bq:                                            ; preds = %.critedge53, %bb.bf
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.critedge53 ], [ %i.jm, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z29populateSingleColumnQcompmatrI8DiagMatrEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef byval(%struct.DiagMatr) align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.30", align 8    ; 16 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 6 uses
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %4, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.j, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.i, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocVectorRSt6vectorISt7complexIdESaIS1_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.g, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !838
  %.idx = shl nuw nsw i64 %i.g, 4                 ; 3 uses
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #33
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i ; 3 uses

.noexc4.i:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.s = getelementptr i8, ptr %i.r, i64 %.idx    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.q, i64 %.idx, i1 false)
  %i.t = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108
  store ptr %i.r, ptr %3, align 8, !tbaa !71
  store ptr %i.s, ptr %i.u, align 8, !tbaa !70
  store ptr %i.s, ptr %i.v, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.f

_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit21

bb.f:                                             ; preds = %.noexc4.i
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.f, %.noexc4.i
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !109 ; 2 uses
  %i.ab = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.2.0.copyload)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  br i1 %i.ab, label %bb.h, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %3, align 8, !tbaa !71
  invoke void @_Z16gpu_copyGpuToCpuPSt7complexIdES1_x(ptr noundef %.sroa.2.0.copyload, ptr noundef %i.ac, i64 noundef %i.g)
          to label %.lr.ph.preheader unwind label %bb.l

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %xtraiter = and i64 %i.g, 1
  %i.ad = icmp eq i64 %i.f, 24
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i20 = icmp eq ptr %i.af, null
  br i1 %.not.i20, label %_ZNSt14_Function_baseD2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit21 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #30
  unreachable

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit21

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.036.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bf, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.ak = load ptr, ptr %3, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.036.epil.init
  %i.am = load ptr, ptr %0, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.036.epil.init
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.ap = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !108
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24:    ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.036 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bf, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.036
  %i.aw = load ptr, ptr %0, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.036
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !110
  %i.az = or disjoint i64 %.036, 1                ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %0, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.az
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !110
  %i.bf = add nuw i64 %.036, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !837

bb.n:                                             ; preds = %bb.a, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit24
  ret void

_ZNSt14_Function_baseD2Ev.exit21:                 ; preds = %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i, %bb.j, %bb.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ], [ %i.x, %_ZNSt12_Vector_baseISt7complexIdESaIS1_EED2Ev.exit.i ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27, label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit21
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27:    ; preds = %_ZNSt14_Function_baseD2Ev.exit21, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

declare void @_Z16gpu_copyGpuToCpuPSt7complexIdES1_x(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z11print_elems17FullStateDiagMatrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !30
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !34
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.h, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %2, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z11printVectorI17FullStateDiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z11printVectorI17FullStateDiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.FullStateDiagMatr) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %.sroa.15 = alloca i64, align 8                 ; 9 uses
  %.sroa.19 = alloca i64, align 8                 ; 7 uses
  %.sroa.21 = alloca i64, align 8                 ; 7 uses
  %.sroa.23 = alloca i64, align 8                 ; 6 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 12 uses
  %8 = alloca %"class.std::vector", align 8       ; 12 uses
  %9 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 6 uses
  %20 = alloca %"class.std::vector", align 8      ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %0, align 8, !tbaa !149
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 5 uses
end_hunk_5
begin_hunk_6_@_Z34populateDistributedVectorRowLabelsI17FullStateDiagMatrEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_T_18MatrixQuadrantInds:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.bl = load ptr, ptr %4, align 8, !tbaa !34
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.059.077, ptr noundef %i.bl, i64 noundef %i.bh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit63 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bn = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ax
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bp = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.059.077, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.av
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

.loopexit63:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit65 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp64:                             ; preds = %bb.i
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp64, %.loopexit63
  %lpad.phi67 = phi { ptr, i32 } [ %lpad.loopexit65, %.loopexit63 ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp64 ] ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ax
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.k
  %i.bv = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.j
  %.pn25 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %lpad.phi67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %lpad.phi67, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.p

._crit_edge82:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 -1, ptr %i.a, align 4, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !129
  call void @_Z19setRowLabelsToRanksI17FullStateDiagMatrEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERixT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef %i.by, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %2)
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !113
  call void @_Z19setRowLabelsToRanksI17FullStateDiagMatrEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERixT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef %i.ca, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

bb.l:                                             ; preds = %.lr.ph81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.sroa.054.079 = phi ptr [ %i.ba, %.lr.ph81 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.054.079, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !36
  %i.cd = sub i64 %i.bb, %i.cc
  store ptr %i.bc, ptr %5, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.cd, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit42 unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit42: ; preds = %bb.l
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.cf = load i64, ptr %i.cb, align 8, !tbaa !36
  %i.cg = sub i64 4611686018427387903, %i.cf
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit42
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #31
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit42
  %i.ci = load ptr, ptr %5, align 8, !tbaa !34
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.054.079, ptr noundef %i.ci, i64 noundef %i.ce)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43
  %i.ck = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bc
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46
  %i.cm = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.054.079, i64 32 ; 2 uses
  %.not62 = icmp eq ptr %i.co, %i.az
  br i1 %.not62, label %._crit_edge82, label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cq = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bc
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.cs = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.n ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %lpad.phi, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z29populateSingleColumnQcompmatrI17FullStateDiagMatrEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.30", align 8    ; 13 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 5 uses
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  store ptr @_Z36error_printerFailedToAllocTempMemoryv, ptr %4, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.j, align 8, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFvvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.i, align 8, !tbaa !125
  invoke void @_Z19util_tryAllocVectorRSt6vectorISt7complexIdESaIS1_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.g, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %3, align 8, !tbaa !71
  invoke void @_Z36localiser_fullstatediagmatr_getElemsPSt7complexIdE17FullStateDiagMatrxx(ptr noundef %i.p, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %2, i64 noundef %1, i64 noundef %i.g)
          to label %.lr.ph.preheader unwind label %bb.j

.lr.ph.preheader:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %xtraiter = and i64 %i.g, 1
  %i.q = icmp eq i64 %i.f, 24
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.at, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod24 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod24)
  %i.r = load ptr, ptr %3, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.020.epil.init
  %i.t = load ptr, ptr %0, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.020.epil.init
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ad, null
  br i1 %.not.i16, label %_ZNSt14_Function_baseD2Ev.exit17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit17 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #30
  unreachable

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit17

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.020
  %i.ak = load ptr, ptr %0, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.020
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !110
  %i.an = or disjoint i64 %.020, 1                ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %0, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.an
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !110
  %i.at = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !843

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  ret void

_ZNSt14_Function_baseD2Ev.exit17:                 ; preds = %bb.h, %bb.g, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit17
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !108
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #32
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit19:    ; preds = %_ZNSt14_Function_baseD2Ev.exit17, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

declare void @_Z36localiser_fullstatediagmatr_getElemsPSt7complexIdE17FullStateDiagMatrxx(ptr noundef, ptr noundef byval(%struct.FullStateDiagMatr) align 8, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z19setRowLabelsToRanksI17FullStateDiagMatrEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERixT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i64 noundef %2, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !57
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.01949 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.j ] ; 5 uses
  %i.h = add i64 %.01949, %2
  %i.i = call noundef i32 @_Z27util_getRankContainingIndex17FullStateDiagMatrx(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %3, i64 noundef %i.h) ; 3 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !26
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.01949
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.d, ptr %4, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 2, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.01949 ; 2 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.x = load ptr, ptr %4, align 8, !tbaa !34
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef %i.x, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !35
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
end_hunk_6
begin_hunk_7_@_Z25print_elemsWithoutNewline8PauliStrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.d:                                             ; preds = %bb.b
  call void @_Z24getPauliStrAsIndexStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %0, i64 %1, i32 noundef %i.h)
  br label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !30, !alias.scope !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !861
  store i64 60, ptr %i.a, align 8, !tbaa !32, !noalias !861
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !34, !alias.scope !861
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !861 ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !35, !alias.scope !861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.k, ptr noundef nonnull align 1 dereferenceable(60) @.str.79, i64 60, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !36, !alias.scope !861
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !861
  br label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit

_Z19getPauliStrAsStringB5cxx118PauliStri.exit:    ; preds = %bb.c, %bb.d, %.noexc.i.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit
  %i.s = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.f:                                             ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_Z11print_elems11PauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 18 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 18 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %.sroa.16 = alloca i64, align 8                 ; 9 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 7 uses
  %.sroa.24 = alloca i64, align 8                 ; 6 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %8 = alloca %"class.std::vector", align 8       ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.std::vector", align 8      ; 5 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 6 uses
  %19 = alloca %"class.std::vector", align 8      ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
  %i.e = load i64, ptr %0, align 8, !tbaa !151    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  store i64 0, ptr %.sroa.16, align 8, !alias.scope !872
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !872
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !872
  store i64 0, ptr %.sroa.24, align 8, !alias.scope !872
  %i.f = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !872 ; 3 uses
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  %i.h = sub nsw i64 %i.f, %i.g                   ; 3 uses
  %i.i = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !872 ; 3 uses
  %i.j = sdiv i64 %i.i, 2                         ; 5 uses
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = sub nsw i64 1, %i.g
  %i.m = sub nsw i64 %i.e, %i.j                   ; 4 uses
  %.not.i = icmp sgt i64 %i.e, %i.i               ; 2 uses
  %.not30.i = icmp slt i64 %i.f, 1                ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %.sroa.16, align 8, !tbaa !115, !alias.scope !872
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %.sroa.16, align 8, !tbaa !115, !alias.scope !872
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %.sroa.16, align 8, !tbaa !115, !alias.scope !872
  store i64 %i.g, ptr %.sroa.20, align 8, !tbaa !118, !alias.scope !872
  store i64 %i.h, ptr %.sroa.22, align 8, !tbaa !119, !alias.scope !872
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0363.0 = phi i64 [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  %.sroa.12.0 = phi i64 [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.sroa.15.0 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.24, %bb.f ], [ %.sroa.22, %bb.e ], [ %.sroa.20, %bb.c ], [ %.sroa.16, %bb.a ]
  %.sink.i = phi i64 [ %i.g, %bb.f ], [ 1, %bb.e ], [ %i.g, %bb.c ], [ 1, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !872
  store i64 %.sroa.0363.0, ptr %6, align 8, !tbaa !25
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !25
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !25
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.16.0..sroa.16.0..sroa.16.0..sroa.16.0.copyload = load i64, ptr %.sroa.16, align 8, !tbaa !25
  store i64 %.sroa.16.0..sroa.16.0..sroa.16.0..sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload = load i64, ptr %.sroa.24, align 8, !tbaa !25
  store i64 %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx379 = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.l, ptr %.sroa.25.0..sroa_idx379, align 8, !tbaa !25
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.m, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !25
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  %.sroa.2416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2416.0.copyload = load ptr, ptr %.sroa.2416.0..sroa_idx, align 8, !tbaa !109 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106  ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 24                  ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i64 %i.s, 24
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.t, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ae, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.v = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %.09.i.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.09.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !110
  %i.z = or disjoint i64 %.09.i.i, 1              ; 2 uses
  %i.aa = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %i.z
  %i.ab = load ptr, ptr %2, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.z
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !110
  %i.ae = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !9

_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ae, %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod559 = trunc i64 %i.t to i1
  call void @llvm.assume(i1 %lcmp.mod559)
  %i.af = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %.09.i.i.epil.init
  %i.ag = load ptr, ptr %2, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.09.i.i.epil.init
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !110
  br label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i

_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i: ; preds = %.epil.preheader, %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i2.i, label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = sdiv exact i64 %i.ao, 24                ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %i.m ; 3 uses
  %xtraiter561 = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.ao, 24
  br i1 %i.ar, label %.epil.preheader560, label %.lr.ph.i3.i.new

.lr.ph.i3.i.new:                                  ; preds = %.lr.ph.i3.i
  %unroll_iter564 = and i64 %i.ap, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i3.i.new
  %.09.i4.i = phi i64 [ 0, %.lr.ph.i3.i.new ], [ %i.bb, %bb.i ] ; 4 uses
  %niter565 = phi i64 [ 0, %.lr.ph.i3.i.new ], [ %niter565.next.1, %bb.i ]
  %i.as = getelementptr [16 x i8], ptr %i.aq, i64 %.09.i4.i
  %i.at = load ptr, ptr %4, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.09.i4.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !110
  %i.aw = or disjoint i64 %.09.i4.i, 1            ; 2 uses
  %i.ax = getelementptr [16 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load ptr, ptr %4, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !110
  %i.bb = add nuw i64 %.09.i4.i, 2                ; 2 uses
  %niter565.next.1 = add i64 %niter565, 2         ; 2 uses
  %niter565.ncmp.1 = icmp eq i64 %niter565.next.1, %unroll_iter564
  br i1 %niter565.ncmp.1, label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !9

_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit, label %.epil.preheader560

.epil.preheader560:                               ; preds = %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa, %.lr.ph.i3.i
  %.09.i4.i.epil.init = phi i64 [ 0, %.lr.ph.i3.i ], [ %i.bb, %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod563 = trunc i64 %i.ap to i1
  call void @llvm.assume(i1 %lcmp.mod563)
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %.09.i4.i.epil.init
  %i.bd = load ptr, ptr %4, align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.09.i4.i.epil.init
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !110
  br label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit

_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit: ; preds = %.epil.preheader560, %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa, %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !873 ; 2 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.bj = load ptr, ptr %2, align 8, !tbaa !78
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %i.bo = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauliP8PauliStrx(ptr noundef %i.bh, i64 noundef %i.bn)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.m
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24
  %i.by = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauliP8PauliStrx(ptr noundef %i.bt, i64 noundef %i.bx)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bz = add nsw i32 %i.by, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.ca = phi i32 [ %i.bz, %bb.l ], [ 0, %bb.j ]
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.ca) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !106 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 24                ; 7 uses
  %i.ch = icmp ugt i64 %i.cg, 288230376151711743
  br i1 %i.ch, label %bb.n, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit418

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.ci = shl nuw nsw i64 %i.cg, 5
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #33
          to label %.noexc50 unwind label %bb.s   ; 4 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.cj, ptr %7, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !58
  %xtraiter566 = and i64 %i.cg, 3                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc50, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %i.cj, %.noexc50 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc50 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc50 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.cm, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !36
  store i8 0, ptr %i.cm, align 8, !tbaa !35
  %i.co = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter566
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !864

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc50
  %.lcssa558.unr = phi ptr [ poison, %.noexc50 ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.cj, %.noexc50 ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc50 ], [ %i.co, %.lr.ph.i.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %i.cg, 4
  br i1 %i.cq, label %.loopexit418, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.cr, ptr %.08.i.i.i.i.i, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !36
  store i8 0, ptr %i.cr, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.cv, align 8, !tbaa !36
  store i8 0, ptr %i.cu, align 8, !tbaa !35
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.cy, align 8, !tbaa !36
  store i8 0, ptr %i.cx, align 8, !tbaa !35
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.db, align 8, !tbaa !36
  store i8 0, ptr %i.da, align 8, !tbaa !35
  %i.dc = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit418, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit418:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa558.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.de, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 24                ; 7 uses
  %i.dl = icmp ugt i64 %i.dk, 288230376151711743
  br i1 %i.dl, label %bb.o, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51

bb.o:                                             ; preds = %.loopexit418
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc60 unwind label %bb.t

.noexc60:                                         ; preds = %bb.o
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51: ; preds = %.loopexit418
  %.not.i.i.i.i52 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i52, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51
  %i.dm = shl nuw nsw i64 %i.dk, 5
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #33
          to label %.noexc61 unwind label %bb.t   ; 4 uses

.noexc61:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53
  store ptr %i.dn, ptr %8, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dk
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !58
  %xtraiter568 = and i64 %i.dk, 3                 ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i54.prol:                          ; preds = %.noexc61, %.lr.ph.i.i.i.i.i54.prol
  %.08.i.i.i.i.i55.prol = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ], [ %i.dn, %.noexc61 ] ; 4 uses
  %.057.i.i.i.i.i56.prol = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i54.prol ], [ %i.dk, %.noexc61 ]
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph.i.i.i.i.i54.prol ], [ 0, %.noexc61 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 16 ; 2 uses
  store ptr %i.dq, ptr %.08.i.i.i.i.i55.prol, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 8
  store i64 0, ptr %i.dr, align 8, !tbaa !36
  store i8 0, ptr %i.dq, align 8, !tbaa !35
  %i.ds = add i64 %.057.i.i.i.i.i56.prol, -1      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 32 ; 3 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i54.prol, !llvm.loop !865

.lr.ph.i.i.i.i.i54.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i54.prol, %.noexc61
  %.lcssa.unr = phi ptr [ poison, %.noexc61 ], [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ]
  %.08.i.i.i.i.i55.unr = phi ptr [ %i.dn, %.noexc61 ], [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ]
end_hunk_7
