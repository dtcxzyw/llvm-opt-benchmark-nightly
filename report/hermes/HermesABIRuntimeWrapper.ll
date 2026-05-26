inline.NumInlined: 1089
inline.NumDeleted: 535
begin_hunk_0_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper30createFunctionFromHostFunctionERKN8facebook3jsi10PropNameIDEjSt8functionIFNS2_5ValueERNS2_7RuntimeERKS7_PSA_mEE:bb.a

bb.o:                                             ; preds = %bb.n
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.p      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #27
  unreachable

bb.q:                                             ; preds = %bb.c, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 48) #26
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %bb.q
  %.pn14 = phi { ptr, i32 } [ %i.p, %bb.q ], [ %i.ax, %bb.o ], [ %i.ax, %bb.n ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper4callERKN8facebook3jsi8FunctionERKNS2_5ValueEPS7_m(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %7 = alloca %struct.HermesABIValue, align 8     ; 6 uses
  %i.a = icmp ugt i64 %5, 576460752303423487
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.b = shl nuw nsw i64 %5, 4
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #24 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %5
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %i.e = ptrtoint ptr %.sroa.12.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.e, %._crit_edge.loopexit ]
  %.sroa.040.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.040.3, %._crit_edge.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.f = load i32, ptr %3, align 8, !tbaa !253    ; 3 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.v
    i32 1, label %.fold.split.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.h to i64
  %.fca.1.insert.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %bb.v

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %.fca.1.insert.i18.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.j, 1
  br label %bb.v

bb.e:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 4 uses
  switch i32 %i.f, label %bb.i [
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i19.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %i.n, 1
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i20.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %i.o, 1
  br label %bb.v

bb.h:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i21.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %i.p, 1
  br label %bb.v

bb.i:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %i.f, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i22.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %i.r, 1
  br label %bb.v

.fold.split.i:                                    ; preds = %._crit_edge
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %.01071 = phi i64 [ %i.au, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.040.070 = phi ptr [ %.sroa.040.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.12.069 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.19.068 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.01071 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !253  ; 3 uses
  switch i32 %i.t, label %bb.l [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24
    i32 1, label %.fold.split.i18
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i16 = zext nneg i8 %i.v to i64
  %.fca.1.insert.i.i17 = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i16, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.k:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52
  %.fca.1.insert.i18.i14 = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.x, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.l:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %.val.i19 = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 4 uses
  switch i32 %i.t, label %bb.p [
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 4, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ab = ptrtoint ptr %.val.i19 to i64
  %.fca.1.insert.i19.i22 = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %i.ab, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.n:                                             ; preds = %bb.l
  %i.ac = ptrtoint ptr %.val.i19 to i64
  %.fca.1.insert.i20.i21 = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %i.ac, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.o:                                             ; preds = %bb.l
  %i.ad = ptrtoint ptr %.val.i19 to i64
  %.fca.1.insert.i21.i20 = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %i.ad, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.p:                                             ; preds = %bb.l
  %i.ae = icmp eq i32 %i.t, 5
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = ptrtoint ptr %.val.i19 to i64
  %.fca.1.insert.i22.i23 = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %i.af, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

.fold.split.i18:                                  ; preds = %.lr.ph
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24: ; preds = %.lr.ph, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %.fold.split.i18
  %.pn16.i15 = phi { i32, i64 } [ %.fca.1.insert.i22.i23, %bb.p ], [ { i32 0, i64 undef }, %.lr.ph ], [ %.fca.1.insert.i.i17, %bb.j ], [ %.fca.1.insert.i18.i14, %bb.k ], [ %.fca.1.insert.i19.i22, %bb.m ], [ %.fca.1.insert.i20.i21, %bb.n ], [ %.fca.1.insert.i21.i20, %bb.o ], [ { i32 1, i64 undef }, %.fold.split.i18 ] ; 2 uses
  %i.ag = extractvalue { i32, i64 } %.pn16.i15, 0 ; 2 uses
  %i.ah = extractvalue { i32, i64 } %.pn16.i15, 1 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.069, %.sroa.19.068
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24
  store i32 %i.ag, ptr %.sroa.12.069, align 8, !tbaa !344
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.069, i64 8
  store i64 %i.ah, ptr %.sroa.637.0..sroa_idx, align 8, !tbaa !52
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24
  %i.ai = ptrtoint ptr %.sroa.12.069 to i64
  %i.aj = ptrtoint ptr %.sroa.040.070 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 6 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775792
  br i1 %i.al, label %bb.s, label %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.am = ashr exact i64 %i.ak, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %8 = icmp ult i64 %i.an, %i.am
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 576460752303423487)
  %9 = select i1 %8, i64 576460752303423487, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %9, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %9, 4
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ak ; 3 uses
  store i32 %i.ag, ptr %i.ar, align 8, !tbaa !344
  %.sroa.637.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ah, ptr %.sroa.637.0..sroa_idx38, align 8, !tbaa !52
  %i.as = icmp sgt i64 %i.ak, 0
  br i1 %i.as, label %bb.t, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.t:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.040.070, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.t, %.noexc26
  %.not.i17.i.i.i = icmp eq ptr %.sroa.040.070, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.070, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %9
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.q
  %.sroa.19.3 = phi ptr [ %i.at, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.19.068, %bb.q ] ; 2 uses
  %.pn57 = phi ptr [ %i.ar, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.12.069, %bb.q ]
  %.sroa.040.3 = phi ptr [ %i.aq, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.040.070, %bb.q ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn57, i64 16 ; 2 uses
  %i.au = add nuw i64 %.01071, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %5
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !346

.loopexit:                                        ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %.fold.split.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %._crit_edge
  %.pn16.i = phi { i32, i64 } [ %.fca.1.insert.i22.i, %bb.i ], [ { i32 0, i64 undef }, %._crit_edge ], [ %.fca.1.insert.i.i, %bb.c ], [ %.fca.1.insert.i18.i, %bb.d ], [ %.fca.1.insert.i19.i, %bb.f ], [ %.fca.1.insert.i20.i, %bb.g ], [ %.fca.1.insert.i21.i, %bb.h ], [ { i32 1, i64 undef }, %.fold.split.i ] ; 2 uses
  %i.av = extractvalue { i32, i64 } %.pn16.i, 0
  store i32 %i.av, ptr %7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = extractvalue { i32, i64 } %.pn16.i, 1
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !348
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.be = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bf = ptrtoint ptr %.sroa.040.0.lcssa to i64  ; 2 uses
  %i.bg = sub i64 %.sroa.12.0.lcssa, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  %i.bi = invoke { i32, i64 } %i.bb(ptr noundef %i.bd, ptr %.val.val, ptr noundef nonnull %7, ptr noundef %.sroa.040.0.lcssa, i64 noundef %i.bh)
          to label %bb.w unwind label %bb.ab      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bj = extractvalue { i32, i64 } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { i32, i64 } %i.bi, 1      ; 2 uses
  %i.bl = icmp eq i32 %i.bj, 3
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.531.8.extract.trunc = trunc i64 %i.bk to i32
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %.sroa.531.8.extract.trunc) #28
          to label %.noexc27 unwind label %bb.ab

.noexc27:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !349
  store i32 %i.bj, ptr %6, align 8, !noalias !349
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !noalias !349
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.not.i.i.i = icmp eq ptr %.sroa.040.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.bo = sub i64 %i.bn, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0.lcssa, i64 noundef %i.bo) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit:   ; preds = %bb.z, %bb.aa
  ret void

bb.ab:                                            ; preds = %bb.y, %bb.x, %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ab
  %.sroa.19.066 = phi ptr [ %.sroa.19.0.lcssa, %bb.ab ], [ %.sroa.12.069, %.loopexit ], [ %.sroa.12.069, %.loopexit.split-lp ]
  %.sroa.040.060 = phi ptr [ %.sroa.040.0.lcssa, %bb.ab ], [ %.sroa.040.070, %.loopexit ], [ %.sroa.040.070, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i29 = icmp eq ptr %.sroa.040.060, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit30, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bq = ptrtoint ptr %.sroa.19.066 to i64
  %i.br = ptrtoint ptr %.sroa.040.060 to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.060, i64 noundef %i.bs) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit30

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit30: ; preds = %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17callAsConstructorERKN8facebook3jsi8FunctionEPKNS2_5ValueEm(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %i.a = icmp ugt i64 %4, 576460752303423487
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.b = shl nuw nsw i64 %4, 4
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #24 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %.0959 = phi i64 [ %i.ag, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.028.058 = phi ptr [ %.sroa.028.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.12.057 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.19.056 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0959 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !253  ; 3 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
    i32 1, label %.fold.split.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.h to i64
  %.fca.1.insert.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %.fca.1.insert.i18.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.j, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 4 uses
  switch i32 %i.f, label %bb.i [
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i19.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %i.n, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i20.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %i.o, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.h:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i21.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %i.p, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.i:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %i.f, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = ptrtoint ptr %.val.i to i64
  %.fca.1.insert.i22.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %i.r, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.fold.split.i:                                    ; preds = %.lr.ph
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit: ; preds = %.lr.ph, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %.fold.split.i
  %.pn16.i = phi { i32, i64 } [ %.fca.1.insert.i22.i, %bb.i ], [ { i32 0, i64 undef }, %.lr.ph ], [ %.fca.1.insert.i.i, %bb.c ], [ %.fca.1.insert.i18.i, %bb.d ], [ %.fca.1.insert.i19.i, %bb.f ], [ %.fca.1.insert.i20.i, %bb.g ], [ %.fca.1.insert.i21.i, %bb.h ], [ { i32 1, i64 undef }, %.fold.split.i ] ; 2 uses
  %i.s = extractvalue { i32, i64 } %.pn16.i, 0    ; 2 uses
  %i.t = extractvalue { i32, i64 } %.pn16.i, 1    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.057, %.sroa.19.056
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  store i32 %i.s, ptr %.sroa.12.057, align 8, !tbaa !344
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.057, i64 8
  store i64 %i.t, ptr %.sroa.625.0..sroa_idx, align 8, !tbaa !52
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  %i.u = ptrtoint ptr %.sroa.12.057 to i64
  %i.v = ptrtoint ptr %.sroa.028.058 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775792
  br i1 %i.x, label %bb.l, label %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.y = ashr exact i64 %i.w, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %6 = icmp ult i64 %i.z, %i.y
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 576460752303423487)
  %7 = select i1 %6, i64 576460752303423487, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %7, 4
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.w ; 3 uses
  store i32 %i.s, ptr %i.ad, align 8, !tbaa !344
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.t, ptr %.sroa.625.0..sroa_idx26, align 8, !tbaa !52
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %bb.m, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %.sroa.028.058, i64 %i.w, i1 false)
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.m, %.noexc14
  %.not.i17.i.i.i = icmp eq ptr %.sroa.028.058, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.058, i64 noundef %i.w) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %7
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.j
  %.sroa.19.3 = phi ptr [ %i.af, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.19.056, %bb.j ] ; 2 uses
  %.pn45 = phi ptr [ %i.ad, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.12.057, %bb.j ]
  %.sroa.028.3 = phi ptr [ %i.ac, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.028.058, %bb.j ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn45, i64 16 ; 2 uses
  %i.ag = add nuw i64 %.0959, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !352

.loopexit:                                        ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %i.ah = ptrtoint ptr %.sroa.12.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.ah, %._crit_edge.loopexit ]
  %.sroa.028.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.028.3, %._crit_edge.loopexit ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !353
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.ao = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.ap = ptrtoint ptr %.sroa.028.0.lcssa to i64  ; 2 uses
  %i.aq = sub i64 %.sroa.12.0.lcssa, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  %i.as = invoke { i32, i64 } %i.al(ptr noundef %i.an, ptr %.val.val, ptr noundef %.sroa.028.0.lcssa, i64 noundef %i.ar)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %._crit_edge
  %i.at = extractvalue { i32, i64 } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.as, 1      ; 2 uses
  %i.av = icmp eq i32 %i.at, 3
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.519.8.extract.trunc = trunc i64 %i.au to i32
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %.sroa.519.8.extract.trunc) #28
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !354
  store i32 %i.at, ptr %5, align 8, !noalias !354
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !noalias !354
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !354
  %.not.i.i.i = icmp eq ptr %.sroa.028.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.ay = sub i64 %i.ax, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.0.lcssa, i64 noundef %i.ay) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit:   ; preds = %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %bb.q, %bb.p, %._crit_edge
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.sroa.19.054 = phi ptr [ %.sroa.19.0.lcssa, %bb.t ], [ %.sroa.12.057, %.loopexit ], [ %.sroa.12.057, %.loopexit.split-lp ]
  %.sroa.028.048 = phi ptr [ %.sroa.028.0.lcssa, %bb.t ], [ %.sroa.028.058, %.loopexit ], [ %.sroa.028.058, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.az, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i17 = icmp eq ptr %.sroa.028.048, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit18, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = ptrtoint ptr %.sroa.19.054 to i64
  %i.bb = ptrtoint ptr %.sroa.028.048 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.048, i64 noundef %i.bc) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit18

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit18: ; preds = %bb.u, %bb.v
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN8facebook3jsi7Runtime9pushScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN8facebook3jsi7Runtime8popScopeEPNS1_10ScopeStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper12strictEqualsERKN8facebook3jsi6SymbolES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !357
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val4 = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef %i.f, ptr %.val4.val, ptr %.val.val)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper12strictEqualsERKN8facebook3jsi6BigIntES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !358
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val4 = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef %i.f, ptr %.val4.val, ptr %.val.val)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper12strictEqualsERKN8facebook3jsi6StringES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val4 = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef %i.f, ptr %.val4.val, ptr %.val.val)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper12strictEqualsERKN8facebook3jsi6ObjectES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val4 = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef %i.f, ptr %.val4.val, ptr %.val.val)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10instanceOfERKN8facebook3jsi6ObjectERKNS2_8FunctionE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !361
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val4 = load ptr, ptr %2, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call i64 %i.d(ptr noundef %i.f, ptr %.val.val, ptr %.val4.val) ; 3 uses
  %i.j = trunc i64 %i.i to i1
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3setEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDPK14HermesABIValue:bb.a
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !64
  invoke void %i.bl(ptr noundef %i.bm, ptr noundef %i.bn, i64 noundef %i.bp)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !52
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI20HermesABIVoidOrErrorLm16EZNS0_17HostObjectWrapper3setEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDPK14HermesABIValueEUlvE_EET_PFSD_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, i64 noundef 15)
          to label %bb.u unwind label %bb.x       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !429
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ca = load ptr, ptr %6, align 8, !tbaa !61
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !64
  invoke void %i.by(ptr noundef %i.bz, ptr noundef %i.ca, i64 noundef %i.cc)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %bb.v
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !52
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI20HermesABIVoidOrErrorLm16EZNS0_17HostObjectWrapper3setEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDPK14HermesABIValueEUlvE_EET_PFSD_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.w:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.x
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !52
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.ci, %bb.w ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %i.cj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.y:                                             ; preds = %bb.m
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

bb.z:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.z
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !52
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %bb.y
  %.pn18.i = phi { ptr, i32 } [ %i.cp, %bb.y ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %i.cq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.aa:                                            ; preds = %bb.j
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i
  %.pn20.i = phi { ptr, i32 } [ %.pn18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i ], [ %i.cw, %bb.aa ]
  resume { ptr, i32 } %.pn20.i

bb.ac:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #27
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI20HermesABIVoidOrErrorLm16EZNS0_17HostObjectWrapper3setEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDPK14HermesABIValueEUlvE_EET_PFSD_18HermesABIErrorCodeERAT0__KcT1_.exit: ; preds = %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3setEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDPK14HermesABIValueENKUlvE_clEv.exit.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i
  %.sroa.0.0.i = phi i64 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i ], [ 5, %bb.k ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 0, %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3setEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDPK14HermesABIValueENKUlvE_clEv.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntime(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 16      ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %struct.HermesABIValue, align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402, !nonnull !257, !align !405 ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val.val.val.i = load ptr, ptr %i.c, align 8, !tbaa !214 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = load ptr, ptr %.val.val.val.i, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %.val.val.val.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc.i unwind label %bb.j, !inline_history !443

.noexc.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 16, !tbaa !444   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !444  ; 2 uses
  %.not32.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i, %.noexc.i
  %.sroa.14.0.lcssa.i.i = phi ptr [ null, %.noexc.i ], [ %.sroa.14.1.i.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i ] ; 2 uses
  %i.j = phi ptr [ null, %.noexc.i ], [ %.sroa.10.1.i.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %.noexc.i ], [ %.sroa.013.1.i.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24
          to label %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeENKUlvE_clEv.exit.i unwind label %bb.g ; 9 uses

.lr.ph.i.i:                                       ; preds = %.noexc.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i
  %.sroa.013.036.i.i = phi ptr [ %.sroa.013.1.i.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i ], [ null, %.noexc.i ] ; 7 uses
  %.sroa.10.035.i.i = phi ptr [ %.sroa.10.1.i.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i ], [ null, %.noexc.i ] ; 6 uses
  %.sroa.14.034.i.i = phi ptr [ %.sroa.14.1.i.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i ], [ null, %.noexc.i ] ; 2 uses
  %.sroa.010.033.i.i = phi ptr [ %i.ab, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i ], [ %i.g, %.noexc.i ] ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.010.033.i.i, align 8, !tbaa !101
  %i.m = getelementptr i8, ptr %.val.i.i, i64 16
  %.val.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.10.035.i.i, %.sroa.14.034.i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = ptrtoint ptr %.val.val.i.i to i64
  store i64 %i.n, ptr %.sroa.10.035.i.i, align 8, !tbaa !446
  br label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = ptrtoint ptr %.sroa.10.035.i.i to i64
  %i.p = ptrtoint ptr %.sroa.013.036.i.i to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorI19HermesABIPropNameIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorI19HermesABIPropNameIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.s ; 2 uses
  %8 = icmp ult i64 %i.t, %i.s
  %i.u = call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %9 = select i1 %8, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %9, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %9, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24
          to label %.noexc7.i.i unwind label %.loopexit.i.i ; 4 uses

.noexc7.i.i:                                      ; preds = %_ZNKSt6vectorI19HermesABIPropNameIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.q ; 2 uses
  %i.y = ptrtoint ptr %.val.val.i.i to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !446
  %i.z = icmp sgt i64 %i.q, 0
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i

bb.e:                                             ; preds = %.noexc7.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %.sroa.013.036.i.i, i64 %i.q, i1 false)
  br label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i

_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i: ; preds = %bb.e, %.noexc7.i.i
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.013.036.i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.036.i.i, i64 noundef %i.q) #26
  br label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %9
  br label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i

_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE9push_backEOS0_.exit.i.i: ; preds = %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i, %bb.b
  %.sroa.14.1.i.i = phi ptr [ %i.aa, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i ], [ %.sroa.14.034.i.i, %bb.b ] ; 2 uses
  %.pn21.i.i = phi ptr [ %i.x, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i ], [ %.sroa.10.035.i.i, %bb.b ]
  %.sroa.013.1.i.i = phi ptr [ %i.w, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i ], [ %.sroa.013.036.i.i, %bb.b ] ; 2 uses
  %.sroa.10.1.i.i = getelementptr inbounds nuw i8, ptr %.pn21.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.033.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorI19HermesABIPropNameIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i.i:                           ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.14.030.i.i = phi ptr [ %.sroa.14.0.lcssa.i.i, %bb.g ], [ %.sroa.10.035.i.i, %.loopexit.i.i ], [ %.sroa.10.035.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.013.024.i.i = phi ptr [ %i.k, %bb.g ], [ %.sroa.013.036.i.i, %.loopexit.i.i ], [ %.sroa.013.036.i.i, %.loopexit.split-lp.i.i ] ; 3 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %.not.i.i.i22.i.i = icmp eq ptr %.sroa.013.024.i.i, null
  br i1 %.not.i.i.i22.i.i, label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EED2Ev.exit23.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %.sroa.14.030.i.i to i64
  %i.ae = ptrtoint ptr %.sroa.013.024.i.i to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.024.i.i, i64 noundef %i.af) #26
  br label %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EED2Ev.exit23.i.i

_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EED2Ev.exit23.i.i: ; preds = %bb.i, %bb.h
  call void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body.i

_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeENKUlvE_clEv.exit.i: ; preds = %._crit_edge.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !448
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper21PropNameIDListWrapper2vtE, ptr %i.l, align 8, !tbaa !450
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.al = load <2 x ptr>, ptr %2, align 16, !tbaa !444
  store <2 x ptr> %i.al, ptr %i.ai, align 8, !tbaa !444
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !448
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.k, ptr %i.aj, align 8, !tbaa !454
  store ptr %i.j, ptr %i.am, align 8, !tbaa !456
  store ptr %.sroa.14.0.lcssa.i.i, ptr %i.an, align 8, !tbaa !457
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.ao, align 8, !tbaa !458
  %i.ap = ptrtoint ptr %i.j to i64
  %i.aq = ptrtoint ptr %i.k to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !459
  %i.au = ptrtoint ptr %i.l to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI33HermesABIPropNameIDListPtrOrErrorLm29EZNS0_17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeEUlvE_EET_PFS9_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.j:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EED2Ev.exit23.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.av, %bb.j ], [ %.pn.i.i, %_ZNSt6vectorI19HermesABIPropNameIDSaIS0_EED2Ev.exit23.i.i ] ; 2 uses
  %i.aw = extractvalue { ptr, i32 } %eh.lpad-body.i, 0 ; 2 uses
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body.i, 1 ; 2 uses
  %i.ay = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook3jsi7JSErrorE) #25
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.body.i
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.aw) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !424
  %i.bd = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) ; 2 uses
  %i.be = extractvalue { i32, i64 } %i.bd, 0
  store i32 %i.be, ptr %7, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bg = extractvalue { i32, i64 } %i.bd, 1
  store i64 %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !427
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  invoke void %i.bk(ptr noundef %i.bm, ptr noundef nonnull %7)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI33HermesABIPropNameIDListPtrOrErrorLm29EZNS0_17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeEUlvE_EET_PFS9_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.m:                                             ; preds = %.body.i
  %i.bn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.bo = icmp eq i32 %i.ax, %i.bn
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.aw) #25 ; 2 uses
  br i1 %i.bo, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull @.str.10)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #25, !inline_history !460
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef %i.bv)
          to label %bb.r unwind label %bb.aa      ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !429
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cd = load ptr, ptr %5, align 8, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !64
  invoke void %i.ca(ptr noundef %i.cc, ptr noundef %i.cd, i64 noundef %i.cf)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !52
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI33HermesABIPropNameIDListPtrOrErrorLm29EZNS0_17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeEUlvE_EET_PFS9_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !429
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.cs = load ptr, ptr %3, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !64
  invoke void %i.cp(ptr noundef %i.cr, ptr noundef %i.cs, i64 noundef %i.cu)
          to label %bb.w unwind label %bb.y
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueS8_m:bb.a
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !429
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.ct = load ptr, ptr %11, align 8, !tbaa !61
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !64
  invoke void %i.cq(ptr noundef %i.cs, ptr noundef %i.ct, i64 noundef %i.cv)
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.cw = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !52
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm13EZNS0_19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueSA_mEUlvE_EET_PFSC_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.14, i64 noundef 12)
          to label %bb.an unwind label %bb.aq     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !36
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !429
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !33
  %i.di = load ptr, ptr %9, align 8, !tbaa !61
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !64
  invoke void %i.df(ptr noundef %i.dh, ptr noundef %i.di, i64 noundef %i.dk)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dl = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i: ; preds = %bb.ao
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !52
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm13EZNS0_19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueSA_mEUlvE_EET_PFSC_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.ap:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i

bb.aq:                                            ; preds = %bb.an, %bb.am
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %bb.aq
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !52
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i, %bb.ap
  %.pn.i = phi { ptr, i32 } [ %i.dq, %bb.ap ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i ], [ %i.dr, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.av

bb.ar:                                            ; preds = %bb.af
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i

bb.as:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i: ; preds = %bb.as
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !52
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i, %bb.ar
  %.pn18.i = phi { ptr, i32 } [ %i.dx, %bb.ar ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i ], [ %i.dy, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.av

bb.at:                                            ; preds = %bb.ac
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i
  %.pn20.i = phi { ptr, i32 } [ %.pn18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i ], [ %i.ee, %bb.at ]
  resume { ptr, i32 } %.pn20.i

bb.av:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #27
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm13EZNS0_19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueSA_mEUlvE_EET_PFSC_18HermesABIErrorCodeERAT0__KcT1_.exit: ; preds = %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueS8_mENKUlvE_clEv.exit.i, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i
  %.pn22.i = phi { i32, i64 } [ { i32 3, i64 0 }, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i ], [ { i32 3, i64 1 }, %bb.ad ], [ { i32 3, i64 0 }, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn21.i.i.i, %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueS8_mENKUlvE_clEv.exit.i ]
  ret { i32, i64 } %.pn22.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !487    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !489  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i) #25
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !497

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !487
  br label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !490
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !489  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !487    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
  unreachable

_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %4 = select i1 %3, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %4, 4
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i) #25
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i) #25
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !499

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.q, %.lr.ph.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.t, %.lr.ph.i.i.i17 ], [ %i.r, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.s, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19) #25
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i19) #25
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !499

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.r, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.t, %.lr.ph.i.i.i17 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !490
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.x) #26
  br label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !487
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !489
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %4
  store ptr %i.y, ptr %i.u, align 8, !tbaa !490
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8facebook3jsi13MutableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120MutableBufferWrapper7releaseEP22HermesABIMutableBuffer(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !51  ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %.val, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !500
  %i.k = load ptr, ptr %.val, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !500
  br label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, !prof !91

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit

_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZSt11make_uniqueIN12_GLOBAL__N_123HermesABIRuntimeWrapperEJRPK15HermesABIVTableEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_uniqueIN12_GLOBAL__N_123HermesABIRuntimeWrapperEJRPK15HermesABIVTableEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !17, i64 8}
!14 = !{!"_ZTSN12_GLOBAL__N_123HermesABIRuntimeWrapperE", !15, i64 0, !17, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !27, i64 80}
!15 = !{!"_ZTSN8facebook3jsi7RuntimeE", !16, i64 0}
!16 = !{!"_ZTSN8facebook3jsi5ICastE"}
!17 = !{!"p1 _ZTS15HermesABIVTable", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTS22HermesABIRuntimeVTable", !18, i64 0}
!20 = !{!"p1 _ZTS16HermesABIRuntime", !18, i64 0}
!21 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EEE", !22, i64 0, !23, i64 8, !24, i64 16, !26, i64 32, !25, i64 40}
!22 = !{!"p1 _ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE5ChunkE", !18, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !25, i64 0, !25, i64 8}
!25 = !{!"double", !6, i64 0}
!26 = !{!"p1 _ZTSN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderE", !18, i64 0}
end_hunk_2
