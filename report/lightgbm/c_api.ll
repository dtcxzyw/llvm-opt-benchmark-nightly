Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/c_api?download=true
inline.NumInlined: 9409
inline.NumDeleted: 3547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcEEERS5_DpOT_:bb.a
  %i.u = phi ptr [ %.pre, %bb.f ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcEEEvPT_DpOT0_.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM7Dataset17set_feature_namesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.std::unordered_set.248", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !197    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !291
  %i.j = sext i32 %i.i to i64
  %.not = icmp eq i64 %i.g, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.93)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %.pre42 = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre45 = ptrtoint ptr %.pre to i64
  %.pre46 = ptrtoint ptr %.pre42 to i64
  %.pre48 = sub i64 %.pre45, %.pre46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi49 = phi i64 [ %.pre48, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.k = phi ptr [ %.pre42, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %.pre-phi49, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !380

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi49) #42
  %.pre43 = load ptr, ptr %1, align 8, !tbaa !410
  %.pre44 = load ptr, ptr %i.a, align 8, !tbaa !410
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %i.o = phi ptr [ %i.l, %bb.c ], [ %.pre44, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.p = phi ptr [ %i.k, %bb.c ], [ %.pre43, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.q = phi ptr [ null, %bb.c ], [ %i.n, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.p, ptr %i.o, ptr noundef %i.q)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %.pre-phi49) #38
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.g, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.s, %bb.g ], [ %i.s, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pre-phi49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !197  ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !198  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !199
  store ptr %i.q, ptr %i.u, align 8, !tbaa !197
  store ptr %i.r, ptr %i.w, align 8, !tbaa !198
  store ptr %i.t, ptr %i.y, align 8, !tbaa !199
  %.not4.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.v, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ag = ptrtoint ptr %i.z to i64
  %i.ah = ptrtoint ptr %i.v to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ai) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !412
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.ak, align 8, !tbaa !413
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.am, align 8, !tbaa !414
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !410 ; 2 uses
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !410 ; 2 uses
  %.not3739 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not3739, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q
  br i1 %.1, label %bb.r, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.q
  %.041 = phi i1 [ %.1, %bb.q ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  %.sroa.027.040 = phi ptr [ %i.eq, %bb.q ], [ %i.ao, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 9 uses
  %i.aq = load ptr, ptr %.sroa.027.040, align 8, !tbaa !64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.027.040, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !62 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %.not47.i = icmp samesign eq i64 %i.as, 0
  br i1 %.not47.i, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.i
  %.sroa.044.048.i = phi ptr [ %i.av, %bb.i ], [ %i.aq, %.lr.ph ] ; 2 uses
  %i.au = load i8, ptr %.sroa.044.048.i, align 1, !tbaa !67
  switch i8 %i.au, label %bb.i [
    i8 125, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 123, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 93, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 91, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 58, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 44, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 34, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.i:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.044.048.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %i.at
  br i1 %.not.i, label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.94)
          to label %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.p, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, %bb.o, %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.i, %.lr.ph, %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.040, i8 noundef signext 32, i64 noundef 0) #24
  %.not18 = icmp eq i64 %i.ax, -1
  br i1 %.not18, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM6Common16CheckAllowedJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ay = load ptr, ptr %.sroa.027.040, align 8, !tbaa !64 ; 44 uses
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !62 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %.not6.i = icmp samesign eq i64 %i.az, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.az, 8
  br i1 %min.iters.check, label %.lr.ph.i23.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.az, 32
  br i1 %min.iters.check68, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.az, 24
  %n.vec = and i64 %i.az, -32                     ; 4 uses
  %i.bc = getelementptr i8, ptr %i.ay, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue162
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue162 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %index ; 3 uses
  %i.bd = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.bd, i64 1
  %i.be = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.be, i64 2
  %i.bf = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.bf, i64 3
  %i.bg = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.bh, i64 5
  %i.bi = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.bi, i64 6
  %i.bj = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.bj, i64 7
  %i.bk = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.bk, i64 8
  %i.bl = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.bl, i64 9
  %i.bm = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.bm, i64 10
  %i.bn = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.bn, i64 11
  %i.bo = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.bo, i64 12
  %i.bp = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep81 = getelementptr i8, ptr %i.bp, i64 13
  %i.bq = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep82 = getelementptr i8, ptr %i.bq, i64 14
  %i.br = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep83 = getelementptr i8, ptr %i.br, i64 15
  %i.bs = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep84 = getelementptr i8, ptr %i.bs, i64 16
  %i.bt = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep85 = getelementptr i8, ptr %i.bt, i64 17
  %i.bu = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep86 = getelementptr i8, ptr %i.bu, i64 18
  %i.bv = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep87 = getelementptr i8, ptr %i.bv, i64 19
  %i.bw = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep88 = getelementptr i8, ptr %i.bw, i64 20
  %i.bx = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep89 = getelementptr i8, ptr %i.bx, i64 21
  %i.by = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep90 = getelementptr i8, ptr %i.by, i64 22
  %i.bz = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.bz, i64 23
  %i.ca = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep92 = getelementptr i8, ptr %i.ca, i64 24
  %i.cb = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep93 = getelementptr i8, ptr %i.cb, i64 25
  %i.cc = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep94 = getelementptr i8, ptr %i.cc, i64 26
  %i.cd = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep95 = getelementptr i8, ptr %i.cd, i64 27
  %i.ce = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep96 = getelementptr i8, ptr %i.ce, i64 28
  %i.cf = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep97 = getelementptr i8, ptr %i.cf, i64 29
  %i.cg = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep98 = getelementptr i8, ptr %i.cg, i64 30
  %i.ch = getelementptr i8, ptr %i.ay, i64 %index
  %next.gep99 = getelementptr i8, ptr %i.ch, i64 31
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !67
  %wide.load100 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !67
  %i.cj = icmp eq <16 x i8> %wide.load, splat (i8 32) ; 16 uses
  %i.ck = icmp eq <16 x i8> %wide.load100, splat (i8 32) ; 16 uses
  %i.cl = extractelement <16 x i1> %i.cj, i64 0
  br i1 %i.cl, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1, !tbaa !67
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cm = extractelement <16 x i1> %i.cj, i64 1
  br i1 %i.cm, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue
  store i8 95, ptr %next.gep69, align 1, !tbaa !67
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue
  %i.cn = extractelement <16 x i1> %i.cj, i64 2
  br i1 %i.cn, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 95, ptr %next.gep70, align 1, !tbaa !67
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.co = extractelement <16 x i1> %i.cj, i64 3
  br i1 %i.co, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 95, ptr %next.gep71, align 1, !tbaa !67
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.cp = extractelement <16 x i1> %i.cj, i64 4
  br i1 %i.cp, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 95, ptr %next.gep72, align 1, !tbaa !67
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.cq = extractelement <16 x i1> %i.cj, i64 5
  br i1 %i.cq, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 95, ptr %next.gep73, align 1, !tbaa !67
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %i.cr = extractelement <16 x i1> %i.cj, i64 6
  br i1 %i.cr, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  store i8 95, ptr %next.gep74, align 1, !tbaa !67
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  %i.cs = extractelement <16 x i1> %i.cj, i64 7
  br i1 %i.cs, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
  store i8 95, ptr %next.gep75, align 1, !tbaa !67
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %i.ct = extractelement <16 x i1> %i.cj, i64 8
  br i1 %i.ct, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  store i8 95, ptr %next.gep76, align 1, !tbaa !67
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %i.cu = extractelement <16 x i1> %i.cj, i64 9
  br i1 %i.cu, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %pred.store.continue116
  store i8 95, ptr %next.gep77, align 1, !tbaa !67
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %pred.store.continue116
  %i.cv = extractelement <16 x i1> %i.cj, i64 10
  br i1 %i.cv, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  store i8 95, ptr %next.gep78, align 1, !tbaa !67
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.cw = extractelement <16 x i1> %i.cj, i64 11
  br i1 %i.cw, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  store i8 95, ptr %next.gep79, align 1, !tbaa !67
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.cx = extractelement <16 x i1> %i.cj, i64 12
  br i1 %i.cx, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  store i8 95, ptr %next.gep80, align 1, !tbaa !67
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.cy = extractelement <16 x i1> %i.cj, i64 13
  br i1 %i.cy, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  store i8 95, ptr %next.gep81, align 1, !tbaa !67
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %i.cz = extractelement <16 x i1> %i.cj, i64 14
  br i1 %i.cz, label %pred.store.if127, label %pred.store.continue128

pred.store.if127:                                 ; preds = %pred.store.continue126
  store i8 95, ptr %next.gep82, align 1, !tbaa !67
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.if127, %pred.store.continue126
  %i.da = extractelement <16 x i1> %i.cj, i64 15
  br i1 %i.da, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  store i8 95, ptr %next.gep83, align 1, !tbaa !67
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %i.db = extractelement <16 x i1> %i.ck, i64 0
  br i1 %i.db, label %pred.store.if131, label %pred.store.continue132

end_hunk_0
