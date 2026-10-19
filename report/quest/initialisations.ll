Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/initialisations?download=true
inline.NumInlined: 281
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z19setDensityQuregAmps5QuregxxSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE:bb.a
  %i.ce = insertelement <2 x ptr> poison, ptr %i.cc, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.pre24, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x ptr> %i.cb, ptr %i.cg, align 8, !tbaa !28, !alias.scope !74, !noalias !73
  store <2 x ptr> %i.cf, ptr %i.ch, align 8, !tbaa !28, !alias.scope !74, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %scalar.ph.preheader, label %vector.body, !llvm.loop !61

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setDensityQuregAmps)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %._crit_edge
  invoke void @_Z29validate_quregIsDensityMatrix5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setDensityQuregAmps)
          to label %.noexc14 unwind label %bb.r

.noexc14:                                         ; preds = %.noexc
  invoke void @_Z26validate_basisStateRowCols5QuregxxxxPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.ba, i64 noundef %i.ba, ptr noundef nonnull @__func__.setDensityQuregAmps)
          to label %.noexc15 unwind label %bb.r

.noexc15:                                         ; preds = %.noexc14
  invoke void @_Z26localiser_densmatr_setAmpsPPSt7complexIdE5Quregxxxx(ptr noundef %.pre24, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.ba, i64 noundef %i.ba)
          to label %bb.p unwind label %bb.r

bb.l:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #13
  br label %common.resume

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cl, null
  br i1 %.not.i17, label %_ZNSt14_Function_baseD2Ev.exit18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit18 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #17
  unreachable

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.022 = phi i64 [ %i.de, %scalar.ph ], [ %.022.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.022
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !27
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.pre24, i64 %.022
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !28
  %i.cs = add nuw i64 %.022, 1                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre24, i64 %i.cs
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !28
  %i.cw = add nuw i64 %.022, 2                    ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre24, i64 %i.cw
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !28
  %i.da = add nuw i64 %.022, 3                    ; 2 uses
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !27
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.pre24, i64 %i.da
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !28
  %i.de = add nuw i64 %.022, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.de, %i.ba
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !62

bb.p:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.df = load ptr, ptr %5, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !75
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #16
  br label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit

_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit:     ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void

bb.r:                                             ; preds = %.noexc15, %.noexc14, %.noexc, %._crit_edge
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit18

_ZNSt14_Function_baseD2Ev.exit18:                 ; preds = %bb.n, %bb.m, %bb.r
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.r ], [ %i.ck, %bb.m ], [ %i.ck, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.dm = load ptr, ptr %5, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit21, label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit18
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !75
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #16
  br label %_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit21

_ZNSt6vectorIPSt7complexIdESaIS2_EED2Ev.exit21:   ; preds = %_ZNSt14_Function_baseD2Ev.exit18, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %common.resume
}

declare void @_Z30validate_matrixRowsAllSameSizeSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #16
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #16
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_Z19util_tryAllocVectorRSt6vectorIPSt7complexIdESaIS2_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.r, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.q, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !27 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !20

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #14
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !29
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !28 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %lpad.loopexit.split-lp36, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #13 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #14
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #17
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #16
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZ19setDensityQuregAmps5QuregxxSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !78
  %.val.val = load i64, ptr %.val, align 8, !tbaa !48
  tail call void @_Z27validate_tempAllocSucceededbxxPKc(i1 noundef zeroext false, i64 noundef %.val.val, i64 noundef 8, ptr noundef nonnull @"__func__._ZZ19setDensityQuregAmps5QuregxxSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEENK3$_0clEv")
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZ19setDensityQuregAmps5QuregxxSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ19setDensityQuregAmps5QuregxxSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ19setDensityQuregAmps5QuregxxSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE3$_0", ptr %0, align 8, !tbaa !80
  br label %"_ZNSt14_Function_base13_Base_managerIZ19setDensityQuregAmps5QuregxxSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !36
  br label %"_ZNSt14_Function_base13_Base_managerIZ19setDensityQuregAmps5QuregxxSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !50
  store i64 %.val.i, ptr %0, align 8, !tbaa !50
  br label %"_ZNSt14_Function_base13_Base_managerIZ19setDensityQuregAmps5QuregxxSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ19setDensityQuregAmps5QuregxxSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_Z27validate_tempAllocSucceededbxxPKc(i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z12setQuregAmps5QuregxSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, i64 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setQuregAmps)
  tail call void @_Z27validate_quregIsStateVector5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setQuregAmps)
  tail call void @_Z26validate_basisStateIndices5QuregxxPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef %1, i64 noundef %i.g, ptr noundef nonnull @__func__.setQuregAmps)
  tail call void @_Z26localiser_statevec_setAmpsPSt7complexIdE5Quregxx(ptr noundef %i.a, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef %1, i64 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z23setDensityQuregFlatAmps5QuregxSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, i64 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setDensityQuregFlatAmps)
  tail call void @_Z29validate_quregIsDensityMatrix5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setDensityQuregFlatAmps)
  tail call void @_Z26validate_basisStateIndices5QuregxxPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef %1, i64 noundef %i.g, ptr noundef nonnull @__func__.setDensityQuregFlatAmps)
  tail call void @_Z26localiser_statevec_setAmpsPSt7complexIdE5Quregxx(ptr noundef %i.a, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 noundef %1, i64 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z22setQuregToPartialTrace5QuregS_St6vectorIiSaIiEE(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  tail call void @setQuregToPartialTrace(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, ptr noundef %i.a, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z30setQuregToReducedDensityMatrix5QuregS_St6vectorIiSaIiEE(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  tail call void @setQuregToReducedDensityMatrix(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, ptr noundef %i.a, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21setQuregToWeightedSum5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = load ptr, ptr %2, align 8, !tbaa !35
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = load ptr, ptr %1, align 8, !tbaa !27
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4
  tail call void @_Z31validate_numQuregsMatchesCoeffsmmPKc(i64 noundef %i.g, i64 noundef %i.n, ptr noundef nonnull @__func__.setQuregToWeightedSum)
  %i.o = load ptr, ptr %1, align 8, !tbaa !27
  %i.p = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 104
  %i.v = trunc i64 %i.u to i32
  tail call void @setQuregToWeightedSum(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.o, ptr noundef %i.p, i32 noundef %i.v)
  ret void
}

declare void @_Z31validate_numQuregsMatchesCoeffsmmPKc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z17setQuregToMixture5QuregSt6vectorIdSaIdEES0_IS_SaIS_EE(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
end_hunk_0
