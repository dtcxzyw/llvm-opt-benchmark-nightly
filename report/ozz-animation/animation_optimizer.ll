Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/animation_optimizer?download=true
inline.NumInlined: 1140
inline.NumDeleted: 646
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation7offline18AnimationOptimizerclERKNS1_12RawAnimationERKNS0_8SkeletonEPS3_:bb.a
  %.sroa.8.0.copyload.i189 = load float, ptr %.sroa.8.0..sroa_idx.i188, align 4, !tbaa !29
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.sroa.8.0.i190 = phi float [ %.sroa.8.0.copyload.i189, %bb.gc ], [ 1.000000e+00, %bb.gb ]
  %.sroa.0.0.i191 = phi <2 x float> [ %.sroa.0.0.copyload.i187, %bb.gc ], [ splat (float 1.000000e+00), %bb.gb ] ; 2 uses
  %i.ane = getelementptr inbounds i8, ptr %i.amx, i64 -12
  %.sroa.0.0.vec.extract.i192 = extractelement <2 x float> %.sroa.0.0.i191, i64 0
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !130
  %i.ang = fsub float %.sroa.0.0.vec.extract.i192, %i.anf ; 2 uses
  %.sroa.0.4.vec.extract.i193 = extractelement <2 x float> %.sroa.0.0.i191, i64 1
  %i.anh = getelementptr inbounds i8, ptr %i.amx, i64 -8
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !131
  %i.anj = fsub float %.sroa.0.4.vec.extract.i193, %i.ani ; 2 uses
  %i.ank = getelementptr inbounds i8, ptr %i.amx, i64 -4
  %i.anl = load float, ptr %i.ank, align 4, !tbaa !120
  %i.anm = fsub float %.sroa.8.0.i190, %i.anl     ; 2 uses
  %i.ann = fmul float %i.anj, %i.anj
  %i.ano = call float @llvm.fmuladd.f32(float %i.ang, float %i.ang, float %i.ann)
  %i.anp = call float @llvm.fmuladd.f32(float %i.anm, float %i.anm, float %i.ano)
  %sqrt.i96.i194 = call float @llvm.sqrt.f32(float %i.anp)
  %i.anq = fmul float %i.im, %sqrt.i96.i194
  %i.anr = fcmp ogt float %i.anq, %i.iw
  br i1 %i.anr, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  store ptr %i.anb, ptr %i.id, align 8, !tbaa !26, !alias.scope !153
  %i.ans = icmp eq ptr %i.amu, %i.anb
  br i1 %i.ans, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit, label %bb.gb

.body234:                                         ; preds = %bb.fz, %bb.ei
  %.pn67.pn.i201 = phi { ptr, i32 } [ %.pn62.pn.i200, %bb.fz ], [ %i.ael, %bb.ei ]
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %bb.gp

_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit: ; preds = %bb.ge, %bb.gd, %bb.ga
  %i.ant = phi ptr [ %.promoted.i185, %bb.ga ], [ %i.anb, %bb.ge ], [ %i.amx, %bb.gd ]
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ik, i64 48 ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !27 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  store ptr %i.amu, ptr %i.anu, align 8, !tbaa !27
  store ptr %i.ant, ptr %i.anw, align 8, !tbaa !26
  %i.any = load ptr, ptr %i.ie, align 8, !tbaa !70
  store ptr %i.any, ptr %i.anx, align 8, !tbaa !70
  %.not.i.i.i.i.i236 = icmp eq ptr %i.anv, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i236, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.gf

bb.gf:                                            ; preds = %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit
  %i.anz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.gg unwind label %bb.gh     ; 2 uses

bb.gg:                                            ; preds = %bb.gf
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !18
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 24
  %i.aoc = load ptr, ptr %i.aob, align 8
  invoke void %i.aoc(ptr noundef nonnull align 8 dereferenceable(8) %i.anz, ptr noundef nonnull %i.anv)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.aod = landingpad { ptr, i32 }
          catch ptr null
  %i.aoe = extractvalue { ptr, i32 } %i.aod, 0
  call void @__clang_call_terminate(ptr %i.aoe) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit: ; preds = %bb.gg
  %.pr247 = load ptr, ptr %24, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %.pr247, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  %i.aof = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.gj unwind label %bb.gk     ; 2 uses

bb.gj:                                            ; preds = %bb.gi
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !18
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  %i.aoi = load ptr, ptr %i.aoh, align 8
  invoke void %i.aoi(ptr noundef nonnull align 8 dereferenceable(8) %i.aof, ptr noundef nonnull %.pr247)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.aoj = landingpad { ptr, i32 }
          catch ptr null
  %i.aok = extractvalue { ptr, i32 } %i.aoj, 0
  call void @__clang_call_terminate(ptr %i.aok) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.w, !llvm.loop !108

bb.gl:                                            ; preds = %._crit_edge
  %.not.i.i.i.i238 = icmp eq ptr %.sroa.0242.0, null
  br i1 %.not.i.i.i.i238, label %_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aol = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.gn unwind label %bb.go     ; 2 uses

bb.gn:                                            ; preds = %bb.gm
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !18
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 24
  %i.aoo = load ptr, ptr %i.aon, align 8
  invoke void %i.aoo(ptr noundef nonnull align 8 dereferenceable(8) %i.aol, ptr noundef nonnull %.sroa.0242.0)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev.exit unwind label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.aop = landingpad { ptr, i32 }
          catch ptr null
  %i.aoq = extractvalue { ptr, i32 } %i.aop, 0
  call void @__clang_call_terminate(ptr %i.aoq) #15
  unreachable

bb.gp:                                            ; preds = %.body, %.body234, %.body137, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.v ], [ %.pn67.pn.i122, %.body137 ], [ %.pn67.pn.i, %.body ], [ %.pn67.pn.i201, %.body234 ]
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev(ptr %.sroa.0242.0) #14
  resume { ptr, i32 } %.pn.pn.pn.pn

_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev.exit: ; preds = %bb.gn, %bb.gl, %bb.h, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, %bb.a
  %.151 = phi i1 [ false, %bb.a ], [ false, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit ], [ false, %bb.h ], [ %i.if, %bb.gl ], [ %i.if, %bb.gn ]
  ret i1 %.151
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ozz9animation7offline12RawAnimationaSEOS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %2, align 8, !tbaa !21
  %i.g = load <2 x ptr>, ptr %i.b, align 8, !tbaa !157
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !157
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !72
  store ptr %i.i, ptr %i.c, align 8, !tbaa !72
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !157
  %.not5.i.i.i.i = icmp eq ptr %i.a, %i.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not5.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.06.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i
  %i.l = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.k)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.s, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !16   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !16   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  %4 = icmp eq ptr %i.w, %i.x
  br i1 %4, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i

bb.e:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  %i.ab = load i64, ptr %3, align 8, !tbaa !73    ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit, label %bb.f, !prof !158

bb.f:                                             ; preds = %bb.e
  switch i64 %i.ab, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !74
  store i8 %i.ad, ptr %i.w, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = load i64, ptr %3, align 8, !tbaa !73    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !73
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.u, align 8, !tbaa !16
  %i.aj = load i64, ptr %3, align 8, !tbaa !73
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !73
  %i.ak = load i64, ptr %i.z, align 8, !tbaa !74
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !74
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i
  %i.al = load i64, ptr %i.x, align 8, !tbaa !74
  store ptr %i.y, ptr %i.u, align 8, !tbaa !16
  %i.am = load i64, ptr %3, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.am, ptr %i.an, align 8, !tbaa !73
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !74
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  store i64 %i.al, ptr %i.z, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i, %.thread.i
  store ptr %i.z, ptr %i.v, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ap = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i ], [ %i.w, %bb.i ], [ %i.z, %bb.j ], [ %i.y, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.aq, align 8, !tbaa !73
  store i8 0, ptr %i.ap, align 1, !tbaa !74
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #15
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #15
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #15
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev(ptr %.0.val) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %.0.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilder4SpecENS0_12StdAllocatorIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.0.val)
          to label %_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilder4SpecENS0_12StdAllocatorIS5_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilder4SpecENS0_12StdAllocatorIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i: ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i
  %i.k = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.j)
end_hunk_0
