Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/icuexportdata?download=true
inline.NumInlined: 823
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z20dumpScriptExtensionsP8_IO_FILE:bb.a
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 340, ptr noundef %i.g)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.m = invoke ptr @umutablecptrie_fromUCPMap_78(ptr noundef %i.l, ptr noundef nonnull %i.e)
          to label %bb.i unwind label %bb.s       ; 4 uses

bb.i:                                             ; preds = %bb.h
  store ptr %i.m, ptr %3, align 8, !tbaa !32
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 342, ptr noundef %i.g)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %fwrite69 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !124
  store ptr %5, ptr %1, align 8, !tbaa !40, !noalias !124
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN12_GLOBAL__N_17set_addEP4USeti, ptr %i.n, align 8, !tbaa !41, !noalias !124
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN12_GLOBAL__N_112set_addRangeEP4USetii, ptr %i.o, align 8, !tbaa !42, !noalias !124
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !124
  invoke void @uprv_addScriptExtensionsCodePoints_78(ptr noundef nonnull %1, ptr noundef nonnull %i.e)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !124
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %5) #25
  br label %.body

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !124
  %i.r = invoke i32 @uset_getRangeCount_78(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %bb.m unwind label %bb.v       ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  store ptr %5, ptr %6, align 8, !tbaa !127, !alias.scope !125
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.s, align 8, !tbaa !128, !alias.scope !125
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 %i.r, ptr %i.t, align 4, !tbaa !129, !alias.scope !125
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store i32 -1, ptr %i.u, align 8, !tbaa !130, !alias.scope !125
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 7 uses
  store i32 -1, ptr %i.v, align 4, !tbaa !131, !alias.scope !125
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %bb.n, label %_ZNK6icu_786header14USetCodePoints5beginEv.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !125
  store i32 0, ptr %i.b, align 4, !tbaa !43, !noalias !125
  %i.x = invoke i32 @uset_getItem_78(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b)
          to label %.noexc93 unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93:                                         ; preds = %bb.n
  %i.y = load i32, ptr %i.b, align 4, !tbaa !43, !noalias !125
  %i.z = icmp slt i32 %i.y, 1
  %i.aa = icmp eq i32 %i.x, 0
  %or.cond.i.i.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc93
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !128, !alias.scope !125
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.s, align 8, !tbaa !128, !alias.scope !125
  %.pre148.pre = load i32, ptr %i.u, align 8
  br label %bb.q

bb.p:                                             ; preds = %.noexc93
  store i32 -1, ptr %i.v, align 4, !tbaa !131, !alias.scope !125
  store i32 -1, ptr %i.u, align 8, !tbaa !130, !alias.scope !125
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre148 = phi i32 [ -1, %bb.p ], [ %.pre148.pre, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !125
  %.pre = load ptr, ptr %6, align 8, !tbaa !127
  %i.ad = icmp ne ptr %.pre, %5
  br label %_ZNK6icu_786header14USetCodePoints5beginEv.exit

_ZNK6icu_786header14USetCodePoints5beginEv.exit:  ; preds = %bb.q, %bb.m
  %i.ae = phi i32 [ %.pre148, %bb.q ], [ -1, %bb.m ] ; 2 uses
  %i.af = phi i1 [ %i.ad, %bb.q ], [ false, %bb.m ]
  %i.ag = icmp ne i32 %i.ae, -1
  %.not3.i136 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %.not3.i136, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %_ZNK6icu_786header14USetCodePoints5beginEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.w

._crit_edge138.loopexit:                          ; preds = %_ZN6icu_786header21USetCodePointIteratorppEv.exit
  %.pre152 = load ptr, ptr %3, align 8, !tbaa !32
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %_ZNK6icu_786header14USetCodePoints5beginEv.exit
  %i.al = phi ptr [ %.pre152, %._crit_edge138.loopexit ], [ %i.m, %_ZNK6icu_786header14USetCodePoints5beginEv.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %fwrite70 = call i64 @fwrite(ptr nonnull @.str.34, i64 3, i64 1, ptr %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.am = load i32, ptr @trieType, align 4, !tbaa !34
  %i.an = invoke ptr @umutablecptrie_buildImmutable_78(ptr noundef %i.al, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull %i.e)
          to label %bb.be unwind label %bb.bn     ; 4 uses

bb.r:                                             ; preds = %bb.b, %bb.e, %bb.a, %bb.g, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.s:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.t:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.u:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.w:                                             ; preds = %.lr.ph137, %_ZN6icu_786header21USetCodePointIteratorppEv.exit
  %i.at = phi i32 [ %i.ae, %.lr.ph137 ], [ %i.fe, %_ZN6icu_786header21USetCodePointIteratorppEv.exit ] ; 3 uses
  %i.au = invoke i32 @umutablecptrie_get_78(ptr noundef %i.m, i32 noundef %i.at)
          to label %bb.x unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.av = invoke i32 @uscript_getScriptExtensions_78(i32 noundef %i.at, ptr noundef nonnull %i.c, i32 noundef 32, ptr noundef nonnull %i.e)
          to label %bb.y unwind label %bb.ab      ; 2 uses

bb.y:                                             ; preds = %bb.x
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 358, ptr noundef %i.g)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit

.lr.ph.preheader:                                 ; preds = %bb.z
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.pre149 = load ptr, ptr %7, align 8, !tbaa !45 ; 4 uses
  %.not.i.i = icmp eq ptr %.pre149, %i.cg
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ax = ptrtoint ptr %i.cg to i64
  %i.ay = ptrtoint ptr %.pre149 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 1
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = xor i64 %i.bc, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.pre149, ptr nonnull %i.cg, i64 noundef %i.bd)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94:                                         ; preds = %bb.aa
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.pre149, ptr nonnull %i.cg)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.w, %bb.n
  %lpad.loopexit.split-lp196 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp118

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.bf = phi ptr [ null, %.lr.ph.preheader ], [ %i.ce, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 5 uses
  %i.bg = phi ptr [ null, %.lr.ph.preheader ], [ %i.cf, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.bh = phi ptr [ null, %.lr.ph.preheader ], [ %i.cg, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !133
  %i.bk = trunc i32 %i.bj to i16                  ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i96, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !49
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775806
  br i1 %i.bp, label %bb.ae, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.bq = ashr exact i64 %i.bo, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 4611686018427387903)
  %i.bu = select i1 %i.bs, i64 4611686018427387903, i64 %i.bt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #28
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i16 %i.bk, ptr %i.bx, align 2, !tbaa !47
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.af, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.af:                                            ; preds = %.noexc98
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bw, ptr align 2 %i.bf, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.af, %.noexc98
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cc) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bw, ptr %7, align 8, !tbaa !51
  store ptr %i.bz, ptr %i.ah, align 8, !tbaa !49
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cd, ptr %i.ai, align 8, !tbaa !50
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.ac
  %i.ce = phi ptr [ %i.bw, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bf, %bb.ac ]
  %i.cf = phi ptr [ %i.cd, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bg, %bb.ac ]
  %i.cg = phi ptr [ %i.bz, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bl, %bb.ac ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit: ; preds = %bb.z, %._crit_edge, %.noexc94
  %or.cond = icmp ugt i32 %i.au, 1
  br i1 %or.cond, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.ch = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ci = trunc i32 %i.au to i16
  store i16 %i.ci, ptr %i.d, align 2, !tbaa !47
  %i.cj = invoke ptr @_ZNSt6vectorItSaItEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %i.d)
          to label %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit unwind label %bb.ai ; 0 uses

_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.cl = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 8 uses
  %i.cm = load ptr, ptr %4, align 8, !tbaa !55    ; 3 uses
  %.not73131.not = icmp eq ptr %i.cl, %i.cm
  br i1 %.not73131.not, label %.critedge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.aj
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 24                ; 2 uses
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.cs = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph134, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116
  %.047132 = phi i64 [ 0, %.lr.ph134 ], [ %i.de, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.047132 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !49 ; 2 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !51 ; 3 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp eq i64 %i.dc, %i.cv
  br i1 %i.dd, label %bb.al, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116

bb.al:                                            ; preds = %bb.ak
  %.not.not.i.i.i.i.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.al
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.cz, ptr %i.cs, i64 %i.cv)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116: ; preds = %bb.ak, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit
  %i.de = add nuw i64 %.047132, 1                 ; 2 uses
  %exitcond147.not = icmp eq i64 %i.de, %i.cq
  br i1 %exitcond147.not, label %.critedge, label %bb.ak, !llvm.loop !123

.critedge:                                        ; preds = %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116, %bb.aj
  %.047.lcssa = phi i64 [ 0, %bb.aj ], [ %i.cq, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116 ]
  %i.df = load ptr, ptr %i.ak, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.cl, %i.df
  br i1 %.not.i, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.critedge
  %i.dg = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i.i.i.i, label %.noexc101, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dl = icmp ugt i64 %i.dk, 9223372036854775806
  br i1 %i.dl, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, !prof !57

.noexc.i.i.i:                                     ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.an
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #28
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, %bb.am
  %i.dn = phi ptr [ null, %bb.am ], [ %i.dm, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.dn, ptr %i.cl, align 8, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !50
  %i.dr = load ptr, ptr %7, align 8, !tbaa !45    ; 4 uses
  %i.ds = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 4 uses
  %i.dw = icmp sgt i64 %i.dv, 2
  br i1 %i.dw, label %bb.ao, label %bb.ap, !prof !58

bb.ao:                                            ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.dn, ptr align 2 %i.dr, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.ap:                                            ; preds = %.noexc101
  %i.dx = icmp eq i64 %i.dv, 2
  br i1 %i.dx, label %bb.aq, label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.dy = load i16, ptr %i.dr, align 2, !tbaa !47
  store i16 %i.dy, ptr %i.dn, align 2, !tbaa !47
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

_ZNSt6vectorItSaItEEC2ERKS1_.exit.i:              ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.dz = getelementptr inbounds i8, ptr %i.dn, i64 %i.dv
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !49
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.eb, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit

bb.ar:                                            ; preds = %.critedge
  invoke void @_ZNSt6vectorIS_ItSaItEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_Z21computeDecompositionsPKcPK4USetRSt6vectorItSaItEERS4_IjSaIjEEPS1_SB_RS4_I17PendingDescriptorSaISC_EERiSG_:bb.a
  %or.cond350 = and i1 %.not301, %.not311
  br i1 %or.cond350, label %bb.bu, label %bb.db

bb.bu:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %16, align 8, !tbaa !20
  store i16 2, ptr %i.aj, align 8, !tbaa !62
  %i.ke = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = invoke noundef signext i8 %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %.0256936, ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.bv unwind label %bb.cx

bb.bv:                                            ; preds = %bb.bu
  %.not312 = icmp eq i8 %i.kh, 0
  br i1 %.not312, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 872, ptr noundef nonnull %0)
          to label %bb.bx unwind label %bb.cx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ki = load i16, ptr %i.aj, align 8, !tbaa !62 ; 3 uses
  %i.kj = and i16 %i.ki, 1
  %.not.i.i426 = icmp eq i16 %i.kj, 0
  br i1 %.not.i.i426, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kk = load i16, ptr %i.t, align 8, !tbaa !62
  %i.kl = trunc i16 %i.kk to i1
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bx
  %i.km = icmp slt i16 %i.ki, 0
  %i.kn = ashr i16 %i.ki, 5
  %i.ko = sext i16 %i.kn to i32
  %i.kp = load i32, ptr %i.ak, align 4
  %i.kq = select i1 %i.km, i32 %i.kp, i32 %i.ko   ; 2 uses
  %i.kr = load i16, ptr %i.t, align 8, !tbaa !62  ; 4 uses
  %i.ks = icmp slt i16 %i.kr, 0
  %i.kt = ashr i16 %i.kr, 5
  %i.ku = sext i16 %i.kt to i32
  %i.kv = load i32, ptr %i.aa, align 4
  %i.kw = select i1 %i.ks, i32 %i.kv, i32 %i.ku
  %i.kx = and i16 %i.kr, 1
  %.not9.i.i428 = icmp eq i16 %i.kx, 0
  %i.ky = icmp eq i32 %i.kq, %i.kw
  %or.cond.i.i429 = and i1 %.not9.i.i428, %i.ky
  br i1 %or.cond.i.i429, label %bb.ca, label %.thread756

bb.ca:                                            ; preds = %bb.bz
  %i.kz = and i16 %i.kr, 2
  %.not.i.i.i.i430 = icmp eq i16 %i.kz, 0
  %i.la = load ptr, ptr %i.ac, align 8
  %i.lb = select i1 %.not.i.i.i.i430, ptr %i.la, ptr %i.ab
  %i.lc = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef %i.lb, i32 noundef %i.kq)
          to label %.noexc431 unwind label %bb.cx

.noexc431:                                        ; preds = %bb.ca
  %i.ld = icmp ne i8 %i.lc, 0
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc431, %bb.by
  %.0.i.i427 = phi i1 [ %i.kl, %bb.by ], [ %i.ld, %.noexc431 ]
  %i.le = add nsw i32 %.0256936, -8188
  %or.cond29 = icmp ult i32 %i.le, -139
  %or.cond351.not = select i1 %.0.i.i427, i1 %or.cond29, i1 false
  br i1 %or.cond351.not, label %bb.cz, label %.thread756

.thread756:                                       ; preds = %bb.bz, %bb.cb
  %i.lf = invoke noundef i32 @_ZNK6icu_7813UnicodeString7toUTF32EPiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.cc unwind label %bb.cx

bb.cc:                                            ; preds = %.thread756
  switch i32 %i.lf, label %bb.ch [
    i32 0, label %bb.cd
    i32 1, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 883, ptr noundef nonnull %0)
          to label %bb.ch unwind label %bb.cx

bb.ce:                                            ; preds = %bb.cc
  %i.lg = icmp samesign ugt i32 %.0256936, 65534
  br i1 %i.lg, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 888, ptr noundef nonnull %0)
          to label %bb.cg unwind label %bb.cx

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.lh = load i32, ptr %i.b, align 4, !tbaa !95
  br label %.invoke

bb.ch:                                            ; preds = %bb.cd, %bb.cc
  %i.li = load i32, ptr %i.b, align 4, !tbaa !95  ; 5 uses
  %i.lj = icmp slt i32 %i.li, 65536
  %i.lk = load i32, ptr %i.al, align 4            ; 3 uses
  %i.ll = icmp slt i32 %i.lk, 65536
  %or.cond32 = select i1 %i.lj, i1 %i.ll, i1 false
  br i1 %or.cond32, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.lm = icmp ne i32 %i.li, 0
  %i.ln = icmp ne i32 %i.lk, 0
  %or.cond35 = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond35, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 894, ptr noundef nonnull %0)
          to label %._crit_edge1024 unwind label %bb.cx

._crit_edge1024:                                  ; preds = %bb.cj
  %.pre = load i32, ptr %i.al, align 4, !tbaa !95
  %.pre1025 = load i32, ptr %i.b, align 4, !tbaa !95
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge1024, %bb.ci
  %i.lo = phi i32 [ %.pre1025, %._crit_edge1024 ], [ %i.li, %bb.ci ]
  %i.lp = phi i32 [ %.pre, %._crit_edge1024 ], [ %i.lk, %bb.ci ]
  %i.lq = shl i32 %i.lp, 16
  %i.lr = or i32 %i.lq, %i.lo
  br label %.invoke

.invoke:                                          ; preds = %bb.cg, %bb.ck
  %i.ls = phi i32 [ %i.lr, %bb.ck ], [ %i.lh, %bb.cg ]
  %i.lt = load ptr, ptr %10, align 8, !tbaa !32
  invoke void @umutablecptrie_set_78(ptr noundef %i.lt, i32 noundef %.0256936, i32 noundef %i.ls, ptr noundef nonnull %i.c)
          to label %bb.cz unwind label %bb.cx

bb.cl:                                            ; preds = %bb.ch
  %i.lu = ptrtoint ptr %.sroa.13.0934 to i64
  %i.lv = ptrtoint ptr %.sroa.0736.0933 to i64    ; 2 uses
  %i.lw = sub i64 %i.lu, %i.lv                    ; 5 uses
  %i.lx = ashr exact i64 %i.lw, 2                 ; 4 uses
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = add i32 %i.ly, 1                        ; 2 uses
  %.not.i.i433 = icmp eq ptr %.sroa.13.0934, %.sroa.21.0935
  br i1 %.not.i.i433, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i32 %i.li, ptr %.sroa.13.0934, align 4, !tbaa !95
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.cn:                                            ; preds = %bb.cl
  %i.ma = icmp eq i64 %i.lw, 9223372036854775804
  br i1 %i.ma, label %bb.co, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc436 unwind label %.loopexit.split-lp793.loopexit.split-lp

.noexc436:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cn
  %.sroa.speculated.i.i.i.i434 = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i.i.i434, %i.lx ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.lx
  %i.md = call i64 @llvm.umin.i64(i64 %i.mb, i64 2305843009213693951)
  %i.me = select i1 %i.mc, i64 2305843009213693951, i64 %i.md ; 3 uses
  %.not.i.i.i.i435 = icmp ne i64 %i.me, 0
  call void @llvm.assume(i1 %.not.i.i.i.i435)
  %i.mf = shl nuw nsw i64 %i.me, 2
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #28
          to label %.noexc437 unwind label %.loopexit.split-lp793.loopexit.split-lp ; 4 uses

.noexc437:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.lw ; 2 uses
  store i32 %i.li, ptr %i.mh, align 4, !tbaa !95
  %i.mi = icmp sgt i64 %i.lw, 0
  br i1 %i.mi, label %bb.cp, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.cp:                                            ; preds = %.noexc437
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mg, ptr align 4 %.sroa.0736.0933, i64 %i.lw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cp, %.noexc437
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0736.0933, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.mj = ptrtoint ptr %.sroa.21.0935 to i64
  %i.mk = sub i64 %i.mj, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.0933, i64 noundef %i.mk) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.cq, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.me
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.cm
  %.sroa.0736.13 = phi ptr [ %i.mg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0736.0933, %bb.cm ] ; 6 uses
  %.pn784 = phi ptr [ %i.mh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0934, %bb.cm ] ; 2 uses
  %.sroa.21.13 = phi ptr [ %i.ml, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.21.0935, %bb.cm ] ; 4 uses
  %.sroa.13.5 = getelementptr inbounds nuw i8, ptr %.pn784, i64 4 ; 3 uses
  %i.mm = load i32, ptr %i.al, align 4, !tbaa !95 ; 2 uses
  %.not.i.i438 = icmp eq ptr %.sroa.13.5, %.sroa.21.13
  br i1 %.not.i.i438, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 %i.mm, ptr %.sroa.13.5, align 4, !tbaa !95
  %i.mn = getelementptr inbounds nuw i8, ptr %.pn784, i64 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447

bb.cs:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.mo = ptrtoint ptr %.sroa.13.5 to i64
  %i.mp = ptrtoint ptr %.sroa.0736.13 to i64      ; 2 uses
  %i.mq = sub i64 %i.mo, %i.mp                    ; 5 uses
  %i.mr = icmp eq i64 %i.mq, 9223372036854775804
  br i1 %i.mr, label %bb.ct, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc445 unwind label %.loopexit.split-lp798.loopexit.split-lp

.noexc445:                                        ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439: ; preds = %bb.cs
  %i.ms = ashr exact i64 %i.mq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i440 = call i64 @llvm.umax.i64(i64 %i.ms, i64 1)
  %i.mt = add nsw i64 %.sroa.speculated.i.i.i.i440, %i.ms ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.ms
  %i.mv = call i64 @llvm.umin.i64(i64 %i.mt, i64 2305843009213693951)
  %i.mw = select i1 %i.mu, i64 2305843009213693951, i64 %i.mv ; 3 uses
  %.not.i.i.i.i441 = icmp ne i64 %i.mw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i441)
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mx) #28
          to label %.noexc446 unwind label %.loopexit.split-lp798.loopexit.split-lp ; 4 uses

.noexc446:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.mq ; 2 uses
  store i32 %i.mm, ptr %i.mz, align 4, !tbaa !95
  %i.na = icmp sgt i64 %i.mq, 0
  br i1 %i.na, label %bb.cu, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442

bb.cu:                                            ; preds = %.noexc446
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.my, ptr align 4 %.sroa.0736.13, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442: ; preds = %bb.cu, %.noexc446
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %.not.i17.i.i.i443 = icmp eq ptr %.sroa.0736.13, null
  br i1 %.not.i17.i.i.i443, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442
  %19 = ptrtoint ptr %.sroa.21.13 to i64
  %20 = sub i64 %19, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.13, i64 noundef %20) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444: ; preds = %bb.cv, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mw
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447

_ZNSt6vectorIjSaIjEE9push_backEOj.exit447:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444, %bb.cr
  %.sroa.0736.14 = phi ptr [ %i.my, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444 ], [ %.sroa.0736.13, %bb.cr ] ; 3 uses
  %.sroa.13.6 = phi ptr [ %i.nb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444 ], [ %i.mn, %bb.cr ]
  %.sroa.21.14 = phi ptr [ %i.nc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444 ], [ %.sroa.21.13, %bb.cr ] ; 3 uses
  %i.nd = icmp ugt i32 %i.lz, 65535
  br i1 %i.nd, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 907, ptr noundef nonnull %0)
          to label %bb.cy unwind label %bb.cx

.loopexit.split-lp793.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, %bb.co
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.loopexit.split-lp798.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439, %bb.ct
  %lpad.loopexit.split-lp1297 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cx:                                            ; preds = %.invoke, %bb.ca, %bb.cj, %bb.cf, %bb.cd, %.thread756, %bb.bw, %bb.bu, %bb.cy, %bb.cw
  %.sroa.0736.1 = phi ptr [ %.sroa.0736.0933, %.invoke ], [ %.sroa.0736.0933, %bb.cj ], [ %.sroa.0736.14, %bb.cy ], [ %.sroa.0736.14, %bb.cw ], [ %.sroa.0736.0933, %bb.bu ], [ %.sroa.0736.0933, %bb.cf ], [ %.sroa.0736.0933, %bb.cd ], [ %.sroa.0736.0933, %.thread756 ], [ %.sroa.0736.0933, %bb.ca ], [ %.sroa.0736.0933, %bb.bw ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.0935, %.invoke ], [ %.sroa.21.0935, %bb.cj ], [ %.sroa.21.14, %bb.cy ], [ %.sroa.21.14, %bb.cw ], [ %.sroa.21.0935, %bb.bu ], [ %.sroa.21.0935, %bb.cf ], [ %.sroa.21.0935, %bb.cd ], [ %.sroa.21.0935, %.thread756 ], [ %.sroa.21.0935, %bb.ca ], [ %.sroa.21.0935, %bb.bw ]
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447
  %i.nf = load ptr, ptr %10, align 8, !tbaa !32
  %i.ng = shl i32 %i.lz, 16
  invoke void @umutablecptrie_set_78(ptr noundef %i.nf, i32 noundef %.0256936, i32 noundef %i.ng, ptr noundef nonnull %i.c)
          to label %bb.cz unwind label %bb.cx

bb.cz:                                            ; preds = %.invoke, %bb.cy, %bb.cb
  %.sroa.0736.2 = phi ptr [ %.sroa.0736.0933, %.invoke ], [ %.sroa.0736.14, %bb.cy ], [ %.sroa.0736.0933, %bb.cb ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0934, %.invoke ], [ %.sroa.13.6, %bb.cy ], [ %.sroa.13.0934, %bb.cb ]
  %.sroa.21.2 = phi ptr [ %.sroa.21.0935, %.invoke ], [ %.sroa.21.14, %bb.cy ], [ %.sroa.21.0935, %bb.cb ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.db

bb.da:                                            ; preds = %.loopexit.split-lp798.loopexit.split-lp, %.loopexit.split-lp793.loopexit.split-lp, %bb.cx
  %.sroa.0736.3 = phi ptr [ %.sroa.0736.1, %bb.cx ], [ %.sroa.0736.0933, %.loopexit.split-lp793.loopexit.split-lp ], [ %.sroa.0736.13, %.loopexit.split-lp798.loopexit.split-lp ]
  %.sroa.21.3 = phi ptr [ %.sroa.21.1, %bb.cx ], [ %.sroa.21.0935, %.loopexit.split-lp793.loopexit.split-lp ], [ %.sroa.21.13, %.loopexit.split-lp798.loopexit.split-lp ]
  %.pn316.pn = phi { ptr, i32 } [ %i.ne, %bb.cx ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp793.loopexit.split-lp ], [ %lpad.loopexit.split-lp1297, %.loopexit.split-lp798.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.loopexit.split-lp

bb.db:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread, %bb.cz
  %.sroa.0736.4 = phi ptr [ %.sroa.0736.2, %bb.cz ], [ %.sroa.0736.0933, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread ] ; 21 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1, %bb.cz ], [ %.sroa.13.0934, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread ] ; 11 uses
  %.sroa.21.4 = phi ptr [ %.sroa.21.2, %bb.cz ], [ %.sroa.21.0935, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread ] ; 21 uses
  br i1 %.0.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 %.0256936, ptr %8, align 4, !tbaa !95
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  br i1 %.not304, label %bb.de, label %bb.dk

bb.de:                                            ; preds = %bb.dd
  br i1 %.old71.not, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 920, ptr noundef nonnull %0)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.nh = load ptr, ptr %i.ah, align 8, !tbaa !98 ; 11 uses
  %i.ni = load ptr, ptr %i.ai, align 8, !tbaa !103
  %.not.i.i448 = icmp eq ptr %i.nh, %i.ni
  br i1 %.not.i.i448, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i32 %.0256936, ptr %i.nh, align 4, !tbaa !95
  %.sroa.6620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store i32 -1, ptr %.sroa.6620.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i8 0, ptr %.sroa.7623.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 9
  store i8 0, ptr %.sroa.8626.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 10
  store i8 0, ptr %.sroa.9629.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store i32 0, ptr %.sroa.10635.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store i32 0, ptr %.sroa.11638.0..sroa_idx, align 4, !tbaa !95
  %i.nj = load ptr, ptr %i.ah, align 8, !tbaa !98
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 20
  store ptr %i.nk, ptr %i.ah, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.di:                                            ; preds = %bb.dg
  %i.nl = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.nm = ptrtoint ptr %i.nh to i64
  %i.nn = ptrtoint ptr %i.nl to i64               ; 2 uses
  %i.no = sub i64 %i.nm, %i.nn                    ; 3 uses
  %i.np = icmp eq i64 %i.no, 9223372036854775800
  br i1 %i.np, label %.invoke1288, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i449

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i449: ; preds = %bb.di
  %i.nq = sdiv exact i64 %i.no, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i450 = call i64 @llvm.umax.i64(i64 %i.nq, i64 1)
  %i.nr = add nsw i64 %.sroa.speculated.i.i.i.i450, %i.nq ; 2 uses
  %i.ns = icmp ult i64 %i.nr, %i.nq
  %i.nt = call i64 @llvm.umin.i64(i64 %i.nr, i64 461168601842738790)
  %i.nu = select i1 %i.ns, i64 461168601842738790, i64 %i.nt ; 3 uses
  %.not.i.i.i.i451 = icmp ne i64 %i.nu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i451)
  %i.nv = mul nuw nsw i64 %i.nu, 20
  %i.nw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nv) #28
          to label %.noexc462 unwind label %.loopexit.split-lp803.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc462:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i449
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.no ; 7 uses
  store i32 %.0256936, ptr %i.nx, align 4, !tbaa !95
  %.sroa.6620.0..sroa_idx621 = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  store i32 -1, ptr %.sroa.6620.0..sroa_idx621, align 4, !tbaa !95
  %.sroa.7623.0..sroa_idx624 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i8 0, ptr %.sroa.7623.0..sroa_idx624, align 4, !tbaa !62
  %.sroa.8626.0..sroa_idx627 = getelementptr inbounds nuw i8, ptr %i.nx, i64 9
  store i8 0, ptr %.sroa.8626.0..sroa_idx627, align 1, !tbaa !62
  %.sroa.9629.0..sroa_idx630 = getelementptr inbounds nuw i8, ptr %i.nx, i64 10
  store i8 0, ptr %.sroa.9629.0..sroa_idx630, align 2, !tbaa !62
  %.sroa.10635.0..sroa_idx636 = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 0, ptr %.sroa.10635.0..sroa_idx636, align 4, !tbaa !95
  %.sroa.11638.0..sroa_idx639 = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store i32 0, ptr %.sroa.11638.0..sroa_idx639, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i452 = icmp eq ptr %i.nl, %i.nh
  br i1 %.not10.i.i.i.i.i.i452, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457, label %.lr.ph.i.i.i.i.i.i453

.lr.ph.i.i.i.i.i.i453:                            ; preds = %.noexc462, %.lr.ph.i.i.i.i.i.i453
  %.012.i.i.i.i.i.i454 = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i453 ], [ %i.nw, %.noexc462 ] ; 2 uses
  %.0911.i.i.i.i.i.i455 = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i.i453 ], [ %i.nl, %.noexc462 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i454, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i455, i64 20, i1 false), !tbaa.struct !104, !alias.scope !173
  %i.ny = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i455, i64 20 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i454, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i456 = icmp eq ptr %i.ny, %i.nh
  br i1 %.not.i.i.i.i.i.i456, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457, label %.lr.ph.i.i.i.i.i.i453, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457: ; preds = %.lr.ph.i.i.i.i.i.i453, %.noexc462
  %.0.lcssa.i.i.i.i.i.i458 = phi ptr [ %i.nw, %.noexc462 ], [ %i.nz, %.lr.ph.i.i.i.i.i.i453 ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i458, i64 20
  %.not.i23.i.i.i459 = icmp eq ptr %i.nl, null
  br i1 %.not.i23.i.i.i459, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457
  %i.ob = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = sub i64 %i.oc, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.od) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460: ; preds = %bb.dj, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457
  store ptr %i.nw, ptr %6, align 8, !tbaa !99
  store ptr %i.oa, ptr %i.ah, align 8, !tbaa !98
  %i.oe = getelementptr inbounds nuw [20 x i8], ptr %i.nw, i64 %i.nu
  store ptr %i.oe, ptr %i.ai, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.dk:                                            ; preds = %bb.dd
  %i.of = icmp eq i32 %i.dz, 1                    ; 3 uses
  %i.og = load i32, ptr %i.a, align 16            ; 8 uses
  br i1 %i.of, label %bb.dl, label %.thread760

bb.dl:                                            ; preds = %bb.dk
  %i.oh = add i32 %i.og, -4449
  %or.cond38 = icmp ult i32 %i.oh, 21
  %i.oi = add i32 %i.og, -4520
  %or.cond41 = icmp ult i32 %i.oi, 27
  %or.cond352 = or i1 %or.cond38, %or.cond41
  br i1 %or.cond352, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  br i1 %.not301, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 928, ptr noundef nonnull %0)
          to label %._crit_edge1030 unwind label %.loopexit.split-lp.loopexit.split-lp

._crit_edge1030:                                  ; preds = %bb.dn
  %.pre1031 = load i32, ptr %i.a, align 16, !tbaa !95
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge1030, %bb.dm
  %i.oj = phi i32 [ %.pre1031, %._crit_edge1030 ], [ %i.og, %bb.dm ]
  %i.ok = select i1 %.0252.not, i32 1073741824, i32 -1073741824
  %i.ol = or i32 %i.ok, %i.oj                     ; 2 uses
end_hunk_1
begin_hunk_2_@_Z21computeDecompositionsPKcPK4USetRSt6vectorItSaItEERS4_IjSaIjEEPS1_SB_RS4_I17PendingDescriptorSaISC_EERiSG_:bb.a
  br label %bb.fz

bb.fu:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, %bb.fj
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 1033, ptr noundef nonnull %0)
          to label %bb.fv unwind label %.loopexit.split-lp808

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.vd = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %.not.i529 = icmp eq ptr %i.vd, null
  br i1 %.not.i529, label %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  invoke void @umutablecptrie_close_78(ptr noundef nonnull %i.vd)
          to label %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  %i.vf = extractvalue { ptr, i32 } %i.ve, 0
  call void @__clang_call_terminate(ptr %i.vf) #24
  unreachable

_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit: ; preds = %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.not.i.i.i530 = icmp eq ptr %.sroa.0736.7, null
  br i1 %.not.i.i.i530, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.fy

bb.fy:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit
  %i.vg = ptrtoint ptr %.sroa.21.7 to i64
  %i.vh = ptrtoint ptr %.sroa.0736.7 to i64
  %i.vi = sub i64 %i.vg, %i.vh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.7, i64 noundef %i.vi) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit, %bb.fy
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.fz:                                            ; preds = %.loopexit807, %.loopexit.split-lp808, %bb.ft, %bb.fh
  %.sroa.0736.10 = phi ptr [ %.sroa.0736.7, %bb.ft ], [ %.sroa.0736.9, %bb.fh ], [ %.sroa.0736.0933, %.loopexit807 ], [ %.sroa.0736.0924, %.loopexit.split-lp808 ] ; 3 uses
  %.sroa.21.10 = phi ptr [ %.sroa.21.7, %bb.ft ], [ %.sroa.21.9, %bb.fh ], [ %.sroa.21.0935, %.loopexit807 ], [ %.sroa.21.0871, %.loopexit.split-lp808 ]
  %.pn342.pn = phi { ptr, i32 } [ %.pn, %bb.ft ], [ %.pn332.pn.pn.pn.pn.pn.pn, %bb.fh ], [ %lpad.loopexit809, %.loopexit807 ], [ %lpad.loopexit.split-lp810, %.loopexit.split-lp808 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.not.i.i.i531 = icmp eq ptr %.sroa.0736.10, null
  br i1 %.not.i.i.i531, label %_ZNSt6vectorIjSaIjEED2Ev.exit532, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.vj = ptrtoint ptr %.sroa.21.10 to i64
  %i.vk = ptrtoint ptr %.sroa.0736.10 to i64
  %i.vl = sub i64 %i.vj, %i.vk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.10, i64 noundef %i.vl) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit532

_ZNSt6vectorIjSaIjEED2Ev.exit532:                 ; preds = %bb.ga, %bb.fz, %.thread771, %.thread777, %bb.f
  %.pn342.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.l, %.thread771 ], [ %.pn342.pn, %bb.fz ], [ %.pn342.pn, %bb.ga ], [ %i.m, %.thread777 ]
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn342.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN6icu_7811Normalizer214getNFDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7811Normalizer215getNFKDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7811Normalizer211getInstanceEPKcS2_19UNormalization2ModeR10UErrorCode(ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !104
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 20                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 461168601842738790)
  %i.p = select i1 %i.n, i64 461168601842738790, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 20
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !104
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !104, !alias.scope !181
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 20
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !99
  store ptr %i.v, ptr %i.a, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI17PendingDescriptorSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z12findOrAppendItEmRSt6vectorIT_SaIS1_EEPKim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 1                   ; 3 uses
  %.not45 = icmp ugt i64 %2, %i.g
  br i1 %.not45, label %.lr.ph, label %.preheader36.lr.ph

.preheader36.lr.ph:                               ; preds = %bb.a
  %.not2942 = icmp eq i64 %2, 0
  br i1 %.not2942, label %.loopexit, label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph, %bb.d
  %.02546 = phi i64 [ %i.p, %bb.d ], [ 0, %.preheader36.lr.ph ] ; 3 uses
  %i.h = getelementptr [2 x i8], ptr %i.c, i64 %.02546
  br label %bb.c

.lr.ph:                                           ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !50
  br label %bb.e

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.02343, 1                   ; 2 uses
  %.not29 = icmp eq i64 %i.j, %2
  br i1 %.not29, label %.loopexit, label %bb.c, !llvm.loop !182

bb.c:                                             ; preds = %.preheader36, %bb.b
  %.02343 = phi i64 [ 0, %.preheader36 ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = getelementptr [2 x i8], ptr %i.h, i64 %.02343
  %i.l = load i16, ptr %i.k, align 2, !tbaa !47
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02343
  %i.o = load i32, ptr %i.n, align 4, !tbaa !95
  %.not28 = icmp eq i32 %i.o, %i.m
  br i1 %.not28, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %.02546, 1                       ; 2 uses
  %i.q = add i64 %i.p, %2
  %.not = icmp ugt i64 %i.q, %i.g
  br i1 %.not, label %.lr.ph, label %.preheader36, !llvm.loop !183

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.r = phi ptr [ %i.c, %.lr.ph ], [ %i.aq, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 5 uses
  %i.s = phi ptr [ %.pre, %.lr.ph ], [ %i.ar, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.t = phi ptr [ %i.b, %.lr.ph ], [ %i.as, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 4 uses
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.at, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.048
  %i.v = load i32, ptr %i.u, align 4, !tbaa !95
  %i.w = trunc i32 %i.v to i16                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %i.w, ptr %i.t, align 2, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !49
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.g:                                             ; preds = %bb.e
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775806
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 4611686018427387903)
  %i.ag = select i1 %i.ae, i64 4611686018427387903, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #28 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i16 %i.w, ptr %i.aj, align 2, !tbaa !47
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ai, ptr align 2 %i.r, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ao) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !51
  store ptr %i.al, ptr %i.a, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !50
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.f, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %i.aq = phi ptr [ %i.r, %bb.f ], [ %i.ai, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ]
  %i.ar = phi ptr [ %i.s, %bb.f ], [ %i.ap, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ]
  %i.as = phi ptr [ %i.x, %bb.f ], [ %i.al, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ]
  %i.at = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !184

.loopexit:                                        ; preds = %bb.b, %_ZNSt6vectorItSaItEE9push_backEOt.exit, %.preheader36.lr.ph
  %.3 = phi i64 [ %i.g, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ 0, %.preheader36.lr.ph ], [ %.02546, %bb.b ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z12findOrAppendIjEmRSt6vectorIT_SaIS1_EEPKim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %.not45 = icmp ugt i64 %2, %i.g
  br i1 %.not45, label %.lr.ph, label %.preheader36.lr.ph

.preheader36.lr.ph:                               ; preds = %bb.a
  %.not2942 = icmp eq i64 %2, 0
  br i1 %.not2942, label %.loopexit, label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph, %bb.d
  %.02546 = phi i64 [ %i.o, %bb.d ], [ 0, %.preheader36.lr.ph ] ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %i.c, i64 %.02546
  br label %bb.c

.lr.ph:                                           ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !105
  br label %bb.e

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.02343, 1                   ; 2 uses
  %.not29 = icmp eq i64 %i.j, %2
  br i1 %.not29, label %.loopexit, label %bb.c, !llvm.loop !185

bb.c:                                             ; preds = %.preheader36, %bb.b
  %.02343 = phi i64 [ 0, %.preheader36 ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = getelementptr [4 x i8], ptr %i.h, i64 %.02343
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02343
  %i.n = load i32, ptr %i.m, align 4, !tbaa !95
  %.not28 = icmp eq i32 %i.l, %i.n
  br i1 %.not28, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %.02546, 1                       ; 2 uses
  %i.p = add i64 %i.o, %2
  %.not = icmp ugt i64 %i.p, %i.g
  br i1 %.not, label %.lr.ph, label %.preheader36, !llvm.loop !186

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.q = phi ptr [ %i.c, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 5 uses
  %i.r = phi ptr [ %.pre, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.s = phi ptr [ %i.b, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.048
  %i.u = load i32, ptr %i.t, align 4, !tbaa !95   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.u, ptr %i.s, align 4, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.g:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775804
  br i1 %i.z, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aa = ashr exact i64 %i.y, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 2305843009213693951)
  %i.ae = select i1 %i.ac, i64 2305843009213693951, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store i32 %i.u, ptr %i.ah, align 4, !tbaa !95
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.q, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.am) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !102
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !101
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.an, ptr %i.i, align 8, !tbaa !105
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.ao = phi ptr [ %i.q, %bb.f ], [ %i.ag, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ap = phi ptr [ %i.r, %bb.f ], [ %i.an, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.aq = phi ptr [ %i.v, %bb.f ], [ %i.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ar = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !187

.loopexit:                                        ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %.preheader36.lr.ph
  %.3 = phi i64 [ %i.g, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 0, %.preheader36.lr.ph ], [ %.02546, %bb.b ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9printHelpP8_IO_FILEPKc(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %1) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 6) i32 @_Z12exportUpropsiPPc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca [20 x i8], align 16               ; 6 uses
  %i.c = icmp sgt i32 %0, 1
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit, %bb.a
  %.sroa.0186.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0186.6, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.4, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.22.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.22.6, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 274), align 2, !tbaa !107
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.loopexit220, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.22.0263 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.22.6, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.sroa.13.0262 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.13.4, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.0186.0261 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.0186.6, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 7 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0262, %.sroa.22.0263
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  store ptr %i.f, ptr %.sroa.13.0262, align 8, !tbaa !63
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = ptrtoint ptr %.sroa.13.0262 to i64
  %i.h = ptrtoint ptr %.sroa.0186.0261 to i64     ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc unwind label %.loopexit.split-lp227

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 1152921504606846975)
  %i.o = select i1 %i.m, i64 1152921504606846975, i64 %i.n ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28
          to label %.noexc101 unwind label %.loopexit226 ; 4 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !63
  store ptr %i.s, ptr %i.r, align 8, !tbaa !63
  %i.t = icmp sgt i64 %i.i, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %.noexc101
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %.sroa.0186.0261, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %.noexc101
  %.not.i17.i.i = icmp eq ptr %.sroa.0186.0261, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %2 = ptrtoint ptr %.sroa.22.0263 to i64
  %3 = sub i64 %2, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0261, i64 noundef %3) #26
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit:    ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.b
  %.sroa.0186.6 = phi ptr [ %i.q, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0186.0261, %bb.b ] ; 2 uses
  %.pn214 = phi ptr [ %i.r, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0262, %bb.b ]
  %.sroa.22.6 = phi ptr [ %i.u, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.22.0263, %bb.b ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn214, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !188

.preheader:                                       ; preds = %._crit_edge, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117
  %spec.store.select3270 = phi i32 [ %spec.store.select3, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ 0, %._crit_edge ] ; 4 uses
  %.sroa.22.1269 = phi ptr [ %.sroa.22.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ %.sroa.22.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.13.1268 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ %.sroa.13.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.0186.1267 = phi ptr [ %.sroa.0186.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ %.sroa.0186.0.lcssa, %._crit_edge ] ; 7 uses
  %i.v = invoke ptr @u_getPropertyName_78(i32 noundef %spec.store.select3270, i32 noundef 0)
          to label %bb.g unwind label %.loopexit.split-lp222.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %.preheader
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %_ZNSolsEPFRSoS_E.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = invoke ptr @u_getPropertyName_78(i32 noundef %spec.store.select3270, i32 noundef 1)
          to label %bb.i unwind label %.loopexit.split-lp222.loopexit.split-lp ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.y = icmp ne ptr %i.x, null                   ; 2 uses
  %i.z = load i8, ptr @VERBOSE, align 1
  %i.aa = icmp ne i8 %i.z, 0
  %or.cond = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.j, label %_ZNSolsEPFRSoS_E.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.61, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp222.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #25
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.x, i64 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit.split-lp222.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i137 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i137, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106, %bb.s
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.cont unwind label %.loopexit.split-lp222.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !86
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
          to label %.noexc139 unwind label %.loopexit.split-lp222.loopexit.split-lp

.noexc139:                                        ; preds = %bb.l
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp222.loopexit.split-lp, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc139, %bb.k
  %.0.i.i.i = phi i8 [ %i.an, %bb.k ], [ %i.ar, %.noexc139 ]
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
          to label %.noexc141 unwind label %.loopexit.split-lp222.loopexit.split-lp

.noexc141:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZNSolsEPFRSoS_E.exit.thread unwind label %.loopexit.split-lp222.loopexit.split-lp ; 0 uses

.loopexit.split-lp222.loopexit.split-lp:          ; preds = %.noexc151, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146, %.noexc149, %bb.u, %.noexc141, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc139, %bb.l, %bb.r, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119, %bb.h, %.preheader, %bb.o, %.invoke
  %lpad.loopexit.split-lp388 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.i
  br i1 %i.y, label %_ZNSolsEPFRSoS_E.exit.thread, label %bb.r

_ZNSolsEPFRSoS_E.exit.thread:                     ; preds = %.noexc141, %bb.g, %_ZNSolsEPFRSoS_E.exit
  %.0202205 = phi ptr [ %i.x, %_ZNSolsEPFRSoS_E.exit ], [ %i.x, %.noexc141 ], [ %i.v, %bb.g ] ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.13.1268, %.sroa.22.1269
  br i1 %.not.i108, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.thread
  store ptr %.0202205, ptr %.sroa.13.1268, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.13.1268, i64 8
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117

bb.n:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.thread
  %i.av = ptrtoint ptr %.sroa.13.1268 to i64
  %i.aw = ptrtoint ptr %.sroa.0186.1267 to i64    ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 5 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.o, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc115 unwind label %.loopexit.split-lp222.loopexit.split-lp

.noexc115:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109: ; preds = %bb.n
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i110 = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i110, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i111 = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i111)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #28
          to label %.noexc116 unwind label %.loopexit.split-lp222.loopexit.split-lp ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ax ; 2 uses
  store ptr %.0202205, ptr %i.bg, align 8, !tbaa !63
  %i.bh = icmp sgt i64 %i.ax, 0
  br i1 %i.bh, label %bb.p, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112

bb.p:                                             ; preds = %.noexc116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %.sroa.0186.1267, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112: ; preds = %bb.p, %.noexc116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.not.i17.i.i113 = icmp eq ptr %.sroa.0186.1267, null
  br i1 %.not.i17.i.i113, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112
  %4 = ptrtoint ptr %.sroa.22.1269 to i64
  %5 = sub i64 %4, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.1267, i64 noundef %5) #26
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114: ; preds = %bb.q, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117

bb.r:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.62, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119 unwind label %.loopexit.split-lp222.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119: ; preds = %bb.r
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %spec.store.select3270)
          to label %bb.s unwind label %.loopexit.split-lp222.loopexit.split-lp ; 3 uses

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i143 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i143, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144: ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !86
  %.not.i1.i.i145 = icmp eq i8 %i.bt, 0
  br i1 %.not.i1.i.i145, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 67
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.br)
          to label %.noexc149 unwind label %.loopexit.split-lp222.loopexit.split-lp

.noexc149:                                        ; preds = %bb.u
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.br, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146 unwind label %.loopexit.split-lp222.loopexit.split-lp, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146: ; preds = %.noexc149, %bb.t
  %.0.i.i.i147 = phi i8 [ %i.bv, %bb.t ], [ %i.bz, %.noexc149 ]
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i8 noundef signext %.0.i.i.i147)
          to label %.noexc151 unwind label %.loopexit.split-lp222.loopexit.split-lp

.noexc151:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 unwind label %.loopexit.split-lp222.loopexit.split-lp ; 0 uses

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117: ; preds = %.noexc151, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114, %bb.m
  %.sroa.0186.2 = phi ptr [ %.sroa.0186.1267, %bb.m ], [ %i.bf, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114 ], [ %.sroa.0186.1267, %.noexc151 ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.au, %bb.m ], [ %i.bi, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114 ], [ %.sroa.13.1268, %.noexc151 ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.1269, %bb.m ], [ %i.bj, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114 ], [ %.sroa.22.1269, %.noexc151 ] ; 2 uses
  %i.cc = add nsw i32 %spec.store.select3270, 1   ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 76
  %spec.store.select14 = select i1 %i.cd, i32 4096, i32 %i.cc ; 2 uses
  %i.ce = icmp eq i32 %spec.store.select14, 4123
  %spec.store.select = select i1 %i.ce, i32 8192, i32 %spec.store.select14 ; 2 uses
  %i.cf = icmp eq i32 %spec.store.select, 8193
  %spec.store.select15 = select i1 %i.cf, i32 16385, i32 %spec.store.select ; 2 uses
  %i.cg = icmp eq i32 %spec.store.select15, 16386
  %spec.store.select3 = select i1 %i.cg, i32 28672, i32 %spec.store.select15 ; 2 uses
  %i.ch = icmp eq i32 %spec.store.select3, 28673
  br i1 %i.ch, label %.loopexit220, label %.preheader, !llvm.loop !189

.loopexit220:                                     ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117, %._crit_edge
  %.sroa.0186.3 = phi ptr [ %.sroa.0186.0.lcssa, %._crit_edge ], [ %.sroa.0186.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ] ; 9 uses
  %.sroa.13.3 = phi ptr [ %.sroa.13.0.lcssa, %._crit_edge ], [ %.sroa.13.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ] ; 3 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.0.lcssa, %._crit_edge ], [ %.sroa.22.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ] ; 4 uses
  %i.ci = icmp ne ptr %.sroa.0186.3, %.sroa.13.3
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 34), align 2
  %i.ck = icmp eq i8 %i.cj, 0
  %or.cond6 = select i1 %i.ci, i1 %i.ck, i1 false
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 74), align 2
  %i.cm = icmp eq i8 %i.cl, 0
  %or.cond8 = select i1 %or.cond6, i1 %i.cm, i1 false
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 114), align 2
  %i.co = icmp ne i8 %i.cn, 0
  %or.cond10 = select i1 %or.cond8, i1 %i.co, i1 false
  br i1 %or.cond10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit220
  %i.cp = icmp slt i32 %0, 0
  %i.cq = load ptr, ptr @stderr, align 8
  %i.cr = load ptr, ptr @stdout, align 8
  %i.cs = select i1 %i.cp, ptr %i.cq, ptr %i.cr
  %i.ct = load ptr, ptr %1, align 8, !tbaa !63
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cs, ptr noundef nonnull @.str.63, ptr noundef %i.ct) #25 ; 0 uses
  %.lobit = lshr i32 %0, 31
  br label %.thread

bb.w:                                             ; preds = %.loopexit220
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 88), align 8, !tbaa !108
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cv, ptr noundef nonnull dereferenceable(7) @.str.64) #30
  %.not87 = icmp eq i32 %i.cw, 0
  br i1 %.not87, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite98 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 43, i64 1, ptr %i.cx) #31 ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 154), align 2, !tbaa !107
  %.not88 = icmp eq i8 %i.cy, 0
  br i1 %.not88, label %.lr.ph275.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 128), align 16, !tbaa !108 ; 2 uses
  %i.da = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(5) @.str.66) #30
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.lr.ph275.preheader.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(6) @.str.67) #30
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph275.preheader.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.68, i64 55, i64 1, ptr %i.de) #31 ; 0 uses
  br label %.thread

.lr.ph275.preheader.sink.split:                   ; preds = %bb.aa, %bb.z
  %.sink = phi i32 [ 0, %bb.z ], [ 1, %bb.aa ]
  store i32 %.sink, ptr @trieType, align 4, !tbaa !34
  br label %.lr.ph275.preheader

.lr.ph275.preheader:                              ; preds = %.lr.ph275.preheader.sink.split, %bb.y
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %bb.ba
  %.sroa.0180.0273 = phi ptr [ %i.fg, %bb.ba ], [ %.sroa.0186.3, %.lr.ph275.preheader ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.0180.0273, align 8, !tbaa !63 ; 5 uses
  %i.dg = invoke i32 @u_getPropertyEnum_78(ptr noundef %i.df)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.ac:                                            ; preds = %.lr.ph275
  %i.dh = icmp eq i32 %i.dg, -1
  br i1 %i.dh, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123: ; preds = %bb.ad
  %.not.i124 = icmp eq ptr %i.df, null
  br i1 %.not.i124, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  %i.dj = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !73
  %i.dp = or i32 %i.do, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dm, i32 noundef %i.dp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  %i.dq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #25
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.df, i64 noundef %i.dq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127: ; preds = %bb.ae, %bb.af
  %i.ds = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 240
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i154 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i154, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc159 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc159:                                        ; preds = %bb.ag
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !86
  %.not.i1.i.i156 = icmp eq i8 %i.dz, 0
  br i1 %.not.i1.i.i156, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 67
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i157

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155
end_hunk_2
