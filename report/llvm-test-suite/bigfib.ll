inline.NumInlined: 500
inline.NumDeleted: 225
begin_hunk_0_@_ZN6BigIntC2ES_S_:bb.a
  %i.al = phi ptr [ %.pre32, %._ZNSt6vectorImSaImEE6resizeEm.exit18_crit_edge ], [ %i.ab, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i16 ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ] ; 4 uses
  store i64 0, ptr @_ZN6BigInt6head_sE, align 8, !tbaa !29
  %i.am = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !19
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = sub i64 %i.ap, %.pre-phi42              ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %.thread30, label %bb.j

.thread30:                                        ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit18
  %i.ar = getelementptr inbounds nuw i8, ptr null, i64 %i.aq
  br label %_ZN6BigIntC2ERKS_.exit

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit18
  %i.as = icmp ugt i64 %i.aq, 9223372036854775800
  br i1 %i.as, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !27

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %.noexc19 unwind label %bb.u

.noexc19:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #15
          to label %.noexc20 unwind label %bb.u   ; 6 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq ; 3 uses
  %i.av = icmp samesign ugt i64 %i.aq, 8
  br i1 %i.av, label %bb.k, label %bb.l, !prof !33

bb.k:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.al, i64 %i.aq, i1 false)
  br label %_ZN6BigIntC2ERKS_.exit

bb.l:                                             ; preds = %.noexc20
  %i.aw = icmp eq i64 %i.aq, 8
  br i1 %i.aw, label %bb.m, label %_ZN6BigIntC2ERKS_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.al, align 8, !tbaa !29
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !29
  br label %_ZN6BigIntC2ERKS_.exit

_ZN6BigIntC2ERKS_.exit:                           ; preds = %bb.m, %bb.l, %bb.k, %.thread30
  %i.ay = phi ptr [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ %i.au, %bb.m ], [ %i.ar, %.thread30 ]
  %i.az = phi ptr [ %i.at, %bb.k ], [ %i.at, %bb.l ], [ %i.at, %bb.m ], [ null, %.thread30 ] ; 3 uses
  %.not8.i = icmp eq ptr %i.am, %i.an
  br i1 %.not8.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6BigIntC2ERKS_.exit, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.al, %_ZN6BigIntC2ERKS_.exit ] ; 2 uses
  %.sroa.02.010.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.ao, %_ZN6BigIntC2ERKS_.exit ] ; 2 uses
  %.sroa.05.09.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.am, %_ZN6BigIntC2ERKS_.exit ] ; 2 uses
  %i.ba = load i64, ptr %.sroa.05.09.i, align 8, !tbaa !29
  %i.bb = load i64, ptr %.sroa.02.010.i, align 8, !tbaa !29
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = load i64, ptr @_ZN6BigInt6head_sE, align 8, !tbaa !29
  %i.be = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = udiv i64 %i.be, 1000000000
  store i64 %i.bf, ptr @_ZN6BigInt6head_sE, align 8, !tbaa !29
  %i.bg = urem i64 %i.be, 1000000000
  store i64 %i.bg, ptr %.sroa.0.011.i, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 8
  %.not.i = icmp eq ptr %i.bh, %i.an
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_.exit, label %.lr.ph.i, !llvm.loop !34

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_.exit: ; preds = %.lr.ph.i, %_ZN6BigIntC2ERKS_.exit
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN6BigIntD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_.exit
  %i.bk = ptrtoint ptr %i.ay to i64
  %i.bl = ptrtoint ptr %i.az to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bm) #16
  br label %_ZN6BigIntD2Ev.exit

_ZN6BigIntD2Ev.exit:                              ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_.exit, %bb.n
  %i.bn = load i64, ptr @_ZN6BigInt6head_sE, align 8, !tbaa !29 ; 3 uses
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6BigIntD2Ev.exit
  %i.bo = load ptr, ptr %i.z, align 8, !tbaa !25  ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !21
  %.not.i21 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.br, ptr %i.z, align 8, !tbaa !25
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %0, align 8, !tbaa !26    ; 4 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #17
          to label %.noexc22 unwind label %bb.u

.noexc22:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #15
          to label %.noexc23 unwind label %bb.u   ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store i64 %i.bn, ptr %i.ce, align 8, !tbaa !29
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.s, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #16
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cd, ptr %0, align 8, !tbaa !26
  store ptr %i.cg, ptr %i.z, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.bp, align 8, !tbaa !21
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.u:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.r, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %bb.g, %bb.d, %bb.c
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.v

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.p, %_ZN6BigIntD2Ev.exit
  ret void

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !21
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #16
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.u, %bb.v
  resume { ptr, i32 } %i.ci
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9Fibonacci16show_all_numbersEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !41, !alias.scope !44
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !45, !alias.scope !44
  store i8 0, ptr %i.d, align 8, !tbaa !47, !alias.scope !44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48, !noalias !44 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load ptr, ptr %3, align 8, !noalias !44    ; 2 uses
  %5 = icmp ugt ptr %i.g, %4
  %.08.i.i.i = select i1 %5, ptr %i.g, ptr %4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52, !noalias !44 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !53, !alias.scope !44 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

.lr.ph:                                           ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.r = phi i64 [ %i.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 ], [ 0, %bb.a ] ; 2 uses
  %.0825 = phi i32 [ %i.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 ], [ 0, %bb.a ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.lr.ph
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.r)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp.loopexit ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.1, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZNSolsEj.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.r ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %.08.i = add nsw i64 %i.ad, -1                  ; 2 uses
  %.not9.i = icmp eq i64 %.08.i, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 ]
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.af)
          to label %_ZlsRSoRK6BigInt.exit unwind label %.loopexit.split-lp.loopexit

.lr.ph.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i
  %.010.i = phi i64 [ %.0.i, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i ], [ %.08.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 ] ; 2 uses
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.010.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !29
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.aj)
          to label %.noexc14 unwind label %.loopexit ; 3 uses

.noexc14:                                         ; preds = %.lr.ph.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr i8, ptr %i.al, i64 -24    ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 9, ptr %i.ap, align 8, !tbaa !56
  %i.aq = load i64, ptr %i.am, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 225 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !63, !range !71, !noundef !72
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc14
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.f
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !74
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.g, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %bb.g
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i unwind label %.loopexit, !inline_history !80 ; 0 uses

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i: ; preds = %.noexc16, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  store i8 1, ptr %i.as, align 1, !tbaa !63
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i, %.noexc14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  store i8 48, ptr %i.bd, align 8, !tbaa !81
  %.0.i = add i64 %.010.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !82

_ZlsRSoRK6BigInt.exit:                            ; preds = %._crit_edge.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZlsRSoRK6BigInt.exit
  %i.bf = add i32 %.0825, 1                       ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bi = load ptr, ptr %0, align 8, !tbaa !12
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 24
  %i.bn = icmp ugt i64 %i.bm, %i.bg
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !83

.loopexit:                                        ; preds = %.lr.ph.i, %bb.g, %.noexc16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZlsRSoRK6BigInt.exit, %._crit_edge.i, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.lr.ph
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.f
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.bo = load ptr, ptr %2, align 8, !tbaa !53
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !45
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bo, i64 noundef %i.bp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.br = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !47
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bv = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bv, ptr %1, align 8, !tbaa !54
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bx = getelementptr i8, ptr %i.bv, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ca, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !47
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ca, align 8, !tbaa !54
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ch) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ci) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.d
  br i1 %i.cl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.ck, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.cj, %bb.h ]
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !47
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cn) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.cj, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body
  %.pn11 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit22, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9Fibonacci16show_last_numberEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = add nsw i64 %i.h, -1
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.i)
          to label %_ZNSolsEm.exit unwind label %.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEm.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -24 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %.08.i = add nsw i64 %i.t, -1                   ; 2 uses
  %.not9.i = icmp eq i64 %.08.i, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.u = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 ]
  %i.v = load i64, ptr %i.u, align 8, !tbaa !29
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.v)
          to label %_ZlsRSoRK6BigInt.exit unwind label %.loopexit.split-lp

.lr.ph.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i
  %.010.i = phi i64 [ %.0.i, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i ], [ %.08.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 ] ; 2 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.010.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.z)
          to label %.noexc7 unwind label %.loopexit ; 3 uses

.noexc7:                                          ; preds = %.lr.ph.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24    ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 9, ptr %i.af, align 8, !tbaa !56
  %i.ag = load i64, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 225 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !63, !range !71, !noundef !72
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !74
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.am)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.d
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef signext i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(570) %i.am, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i unwind label %.loopexit, !inline_history !80 ; 0 uses

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i: ; preds = %.noexc9, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  store i8 1, ptr %i.ai, align 1, !tbaa !63
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i, %.noexc7
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  store i8 48, ptr %i.at, align 8, !tbaa !81
  %.0.i = add i64 %.010.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !82

_ZlsRSoRK6BigInt.exit:                            ; preds = %._crit_edge.i
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZlsRSoRK6BigInt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !41, !alias.scope !90
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !45, !alias.scope !90
  store i8 0, ptr %i.av, align 8, !tbaa !47, !alias.scope !90
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48, !noalias !90 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ay, null
  br i1 %.not5.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load ptr, ptr %3, align 8, !noalias !90    ; 2 uses
  %5 = icmp ugt ptr %i.ay, %4
  %.08.i.i.i = select i1 %5, ptr %i.ay, ptr %4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52, !noalias !90 ; 2 uses
  %i.bb = ptrtoint ptr %.08.i.i.i to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.ba, i64 noundef %i.bd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !53, !alias.scope !90 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.av
  br i1 %i.bh, label %.body, label %.body.sink.split

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.bj = load ptr, ptr %2, align 8, !tbaa !53
  %i.bk = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bj, i64 noundef %i.bk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bm = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.av
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bo = load i64, ptr %i.av, align 8, !tbaa !47
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bq, ptr %1, align 8, !tbaa !54
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bv, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !53 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !47
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bv, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cc) #18
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cd) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

.loopexit:                                        ; preds = %.lr.ph.i, %bb.d, %.noexc9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEm.exit, %._crit_edge.i, %bb.c, %_ZlsRSoRK6BigInt.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.av
  br i1 %i.cg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.f
  %.sink = phi ptr [ %i.bg, %bb.f ], [ %i.cf, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %i.ce, %bb.h ]
  %i.ch = load i64, ptr %i.av, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %i.ce, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9Fibonacci11show_numberEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %3 = alloca %class.BigInt, align 8              ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %_ZN6BigIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %1 to i32
  invoke void @_ZN9Fibonacci10get_numberEj(ptr dead_on_unwind nonnull writable sret(%class.BigInt) align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.i)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6BigIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #16
  br label %_ZN6BigIntD2Ev.exit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.g, %.noexc14
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.b, %_ZN6BigIntD2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEm.exit, %._crit_edge.i, %bb.f, %_ZlsRSoRK6BigInt.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZN6BigIntD2Ev.exit:                              ; preds = %bb.d, %bb.c, %bb.a
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN6BigIntD2Ev.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEm.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %.08.i = add nsw i64 %i.aa, -1                  ; 2 uses
  %.not9.i = icmp eq i64 %.08.i, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 ]
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.ac)
          to label %_ZlsRSoRK6BigInt.exit unwind label %.loopexit.split-lp

.lr.ph.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i
  %.010.i = phi i64 [ %.0.i, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i ], [ %.08.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 ] ; 2 uses
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.010.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !29
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.ag)
          to label %.noexc12 unwind label %.loopexit ; 3 uses

.noexc12:                                         ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24    ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 9, ptr %i.am, align 8, !tbaa !56
  %i.an = load i64, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 225 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !63, !range !71, !noundef !72
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !73 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !74
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.g, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.at)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.g
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.at, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i unwind label %.loopexit, !inline_history !80 ; 0 uses

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i: ; preds = %.noexc14, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  store i8 1, ptr %i.ap, align 1, !tbaa !63
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i, %.noexc12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 224
  store i8 48, ptr %i.ba, align 8, !tbaa !81
  %.0.i = add i64 %.010.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !82

_ZlsRSoRK6BigInt.exit:                            ; preds = %._crit_edge.i
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZlsRSoRK6BigInt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !41, !alias.scope !97
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !45, !alias.scope !97
  store i8 0, ptr %i.bc, align 8, !tbaa !47, !alias.scope !97
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48, !noalias !97 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 8, !noalias !97    ; 2 uses
  %7 = icmp ugt ptr %i.bf, %6
  %.08.i.i.i = select i1 %7, ptr %i.bf, ptr %6
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52, !noalias !97 ; 2 uses
  %i.bi = ptrtoint ptr %.08.i.i.i to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.bh, i64 noundef %i.bk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !53, !alias.scope !97 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bc
  br i1 %i.bo, label %.body, label %.body.sink.split

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.bq = load ptr, ptr %4, align 8, !tbaa !53
  %i.br = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bq, i64 noundef %i.br)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bt = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bc
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !47
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %2, align 8, !tbaa !54
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #18
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.k:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bc
  br i1 %i.cn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.k, %bb.i
  %.sink = phi ptr [ %i.bn, %bb.i ], [ %i.cm, %bb.k ]
  %.pn.ph = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.cl, %bb.k ]
  %i.co = load i64, ptr %i.bc, align 8, !tbaa !47
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cp) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.cl, %bb.k ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5usagePPc(ptr noundef captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @.str.3, ptr %0, align 8, !tbaa !98
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 8) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !54
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !74
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !47
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !99
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 13 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !98     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !100
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #18
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.s, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24    ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.q, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 4, ptr %i.ah, align 8, !tbaa !56
  %i.ai = load i64, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !101
  %i.am = and i32 %i.al, -177
  %i.an = or disjoint i32 %i.am, 32
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !102
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.7, i64 noundef 3) ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.8, i64 noundef 40) ; 0 uses
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.q, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !73 ; 6 uses
  %.not.i.i.i14 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i14, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !74
  %.not.i1.i.i16 = icmp eq i8 %i.ax, 0
  br i1 %.not.i1.i.i16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !47
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit18

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i15
end_hunk_0
