inline.NumInlined: 1573
inline.NumDeleted: 659
begin_hunk_0_@_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi:bb.a
          cleanup
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.q = load ptr, ptr %3, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %.0.i2 = xor i1 %i.d, true
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i1 %.0.i2
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) %0, ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.8.val
  %.not57 = icmp samesign ne i64 %.8.val, 0
  call void @llvm.assume(i1 %.not57)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.u
  %.pre = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %.pre, 0
  br i1 %i.f, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26, label %bb.v

.lr.ph:                                           ; preds = %bb.a, %bb.u
  %.sroa.07.061 = phi ptr [ %.sroa.07.2, %bb.u ], [ null, %bb.a ] ; 11 uses
  %.sroa.22.060 = phi ptr [ %.sroa.22.2, %bb.u ], [ null, %bb.a ] ; 8 uses
  %.sroa.30.059 = phi ptr [ %.sroa.30.2, %bb.u ], [ null, %bb.a ] ; 6 uses
  %.sroa.04.058 = phi ptr [ %i.at, %bb.u ], [ %.0.val, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %.sroa.04.058, align 1      ; 2 uses
  %i.h = icmp eq i8 %i.g, 32
  %i.i = load i64, ptr %i.d, align 8              ; 5 uses
  br i1 %i.h, label %bb.b, label %bb.q

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.l = tail call ptr @__errno_location() #30    ; 6 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.n = call noundef float @strtof(ptr noundef %i.k, ptr noundef nonnull %i.b) ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.12) #29
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %.critedge.i.i, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i32, ptr %i.l, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.m, ptr %i.l, align 4
  br label %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.body

bb.h:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.l, align 4
  switch i32 %i.t, label %bb.k [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.j
  ]

.critedge.i.i:                                    ; preds = %bb.h
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.12) #29
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %.critedge.i.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store i32 %i.m, ptr %i.l, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i = icmp eq ptr %.sroa.22.060, %.sroa.30.059
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store float %i.n, ptr %.sroa.22.060, align 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.m:                                             ; preds = %bb.k
  %i.u = ptrtoint ptr %.sroa.22.060 to i64
  %i.v = ptrtoint ptr %.sroa.07.061 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775804
  br i1 %i.x, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.y = ashr exact i64 %i.w, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 2305843009213693951)
  %i.ac = select i1 %i.aa, i64 2305843009213693951, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #28
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store float %i.n, ptr %i.af, align 4
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc10
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %.sroa.07.061, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc10
  %.not.i17.i.i = icmp eq ptr %.sroa.07.061, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.061, i64 noundef %i.w) #25
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.l
  %.sroa.30.1 = phi ptr [ %i.ah, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.30.059, %bb.l ]
  %.pn = phi ptr [ %i.af, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.22.060, %bb.l ]
  %.sroa.07.1 = phi ptr [ %i.ae, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.07.061, %bb.l ]
  %.sroa.22.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  store i64 0, ptr %i.d, align 8
  %i.ai = load ptr, ptr %1, align 8
  store i8 0, ptr %i.ai, align 1
  br label %bb.u

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %.lr.ph
  %i.aj = add i64 %i.i, 1                         ; 3 uses
  %i.ak = load ptr, ptr %1, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.am = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %2 = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %3 = phi i64 [ %2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %bb.r ]
  %i.an = icmp ugt i64 %i.aj, %3
  br i1 %i.an, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc11 unwind label %bb.t

.noexc11:                                         ; preds = %bb.s
  %.pre.i = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc11
  %i.ao = phi ptr [ %.pre.i, %.noexc11 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.i
  store i8 %i.g, ptr %i.ap, align 1
  store i64 %i.aj, ptr %i.d, align 8
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aj
  store i8 0, ptr %i.ar, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.b, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.sroa.30.2 = phi ptr [ %.sroa.30.059, %bb.b ], [ %.sroa.30.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.30.059, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 7 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.060, %bb.b ], [ %.sroa.22.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.22.060, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 3 uses
  %.sroa.07.2 = phi ptr [ %.sroa.07.061, %bb.b ], [ %.sroa.07.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.07.061, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.058, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %1, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.av = tail call ptr @__errno_location() #30   ; 6 uses
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  store i32 0, ptr %i.av, align 4
  %i.ax = call noundef float @strtof(ptr noundef %i.au, ptr noundef nonnull %i.a) ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = icmp eq ptr %i.ay, %i.au
  br i1 %i.az, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.12) #29
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %.critedge.i.i12, %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load i32, ptr %i.av, align 4
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.z, label %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i13

bb.z:                                             ; preds = %bb.y
  store i32 %i.aw, ptr %i.av, align 4
  br label %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i13

_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i13: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.body

bb.aa:                                            ; preds = %bb.v
  %i.bd = load i32, ptr %i.av, align 4
  switch i32 %i.bd, label %bb.ad [
    i32 34, label %.critedge.i.i12
    i32 0, label %bb.ac
  ]

.critedge.i.i12:                                  ; preds = %bb.aa
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.12) #29
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %.critedge.i.i12
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.aw, ptr %i.av, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i17 = icmp eq ptr %.sroa.22.2, %.sroa.30.2
  br i1 %.not.i17, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store float %i.ax, ptr %.sroa.22.2, align 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26

bb.af:                                            ; preds = %bb.ad
  %i.be = ptrtoint ptr %.sroa.30.2 to i64
  %i.bf = ptrtoint ptr %.sroa.07.2 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775804
  br i1 %i.bh, label %bb.ag, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
          to label %.noexc24 unwind label %bb.aj

.noexc24:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18: ; preds = %bb.af
  %i.bi = ashr exact i64 %i.bg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i19 = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i19, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 2305843009213693951)
  %i.bm = select i1 %i.bk, i64 2305843009213693951, i64 %i.bl ; 3 uses
  %.not.i.i.i20 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i20)
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #28
          to label %.noexc25 unwind label %bb.aj  ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bg
  store float %i.ax, ptr %i.bp, align 4
  %i.bq = icmp sgt i64 %i.bg, 0
  br i1 %i.bq, label %bb.ah, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21

bb.ah:                                            ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %.sroa.07.2, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21: ; preds = %bb.ah, %.noexc25
  %.not.i17.i.i22 = icmp eq ptr %.sroa.07.2, null
  br i1 %.not.i17.i.i22, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.2, i64 noundef %i.bg) #25
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23: ; preds = %bb.ai, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bm
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26

bb.aj:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18, %bb.ag
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIfSaIfEE9push_backERKf.exit26:        ; preds = %bb.ae, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23, %._crit_edge
  %.sroa.30.4 = phi ptr [ %.sroa.30.2, %._crit_edge ], [ %i.br, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23 ], [ %.sroa.30.2, %bb.ae ]
  %.sroa.07.4 = phi ptr [ %.sroa.07.2, %._crit_edge ], [ %i.bo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23 ], [ %.sroa.07.2, %bb.ae ] ; 14 uses
  store float 1.000000e+00, ptr %0, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.by, align 4
  %i.bz = load float, ptr %.sroa.07.4, align 4
  store float %i.bz, ptr %0, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 4
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cb, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 8
  %i.ce = load float, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ce, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float 0.000000e+00, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 12
  %i.ci = load float, ptr %i.ch, align 4
  store float %i.ci, ptr %i.bt, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 16
  %i.ck = load float, ptr %i.cj, align 4
  store float %i.ck, ptr %i.bu, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 20
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cm, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float 0.000000e+00, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 24
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cq, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 28
  %i.ct = load float, ptr %i.cs, align 4
  store float %i.ct, ptr %i.bv, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 32
  %i.cv = load float, ptr %i.cu, align 4
  store float %i.cv, ptr %i.bw, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.cw, align 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3MF12_GLOBAL__N_110parseColorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER9aiColor4tIfE:bb.a

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.j, align 1
  store i8 %i.n, ptr %i.i, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.o = phi ptr [ %i.l, %._crit_edge.i.i.thread ], [ %i.i, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.val = load i64, ptr %i.q, align 8             ; 2 uses
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = icmp ult i64 %.val, 16
  call void @llvm.assume(i1 %i.v)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = load i64, ptr %i.i, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  switch i64 %.val, label %bb.i [
    i64 9, label %bb.e
    i64 7, label %bb.e
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %i.z = load i8, ptr %i.y, align 1
  %.not = icmp eq i8 %i.z, 35
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  store i8 %i.ab, ptr %i.b, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  store i8 %i.ae, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.af, align 1
  %i.ag = call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 16) #26
  %i.ah = sitofp i64 %i.ag to float
  %i.ai = fdiv float %i.ah, 2.550000e+02
  store float %i.ai, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  store i8 %i.al, ptr %i.c, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  store i8 %i.ao, ptr %i.am, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.ap, align 1
  %i.aq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 16) #26
  %i.ar = sitofp i64 %i.aq to float
  %i.as = fdiv float %i.ar, 2.550000e+02
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.as, ptr %i.at, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.au = load ptr, ptr %0, align 8               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 5
  %i.aw = load i8, ptr %i.av, align 1
  store i8 %i.aw, ptr %i.d, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %i.az = load i8, ptr %i.ay, align 1
  store i8 %i.az, ptr %i.ax, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 0, ptr %i.ba, align 1
  %i.bb = call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 16) #26
  %i.bc = sitofp i64 %i.bb to float
  %i.bd = fdiv float %i.bc, 2.550000e+02
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bd, ptr %i.be, align 4
  %i.bf = load i64, ptr %i.f, align 8
  %i.bg = icmp eq i64 %i.bf, 7
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.bh = load ptr, ptr %0, align 8               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.bj = load i8, ptr %i.bi, align 1
  store i8 %i.bj, ptr %i.e, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i8, ptr %i.bl, align 1
  store i8 %i.bm, ptr %i.bk, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 0, ptr %i.bn, align 1
  %i.bo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 16) #26
  %i.bp = sitofp i64 %i.bo to float
  %i.bq = fdiv float %i.bp, 2.550000e+02
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.bq, ptr %i.br, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.a, %bb.h
  %.1 = phi i1 [ true, %bb.h ], [ false, %bb.a ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare float @strtof(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %3 = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %4 = phi i64 [ %3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %bb.b ]
  %i.j = icmp ugt i64 %i.e, %4
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.k = load ptr, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.c
  %5 = load i64, ptr %i.l, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %6 = phi i64 [ %5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %bb.d ]
  %.not = icmp ugt i64 %i.e, %6
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a

bb.e:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a: ; preds = %.critedge
  store ptr %i.q, ptr %0, align 8
  %i.x = load i64, ptr %i.r, align 8
  store i64 %i.x, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  store ptr %i.r, ptr %i.o, align 8
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.r, align 8
  br label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ab = sub i64 4611686018427387903, %i.b
  %i.ac = icmp ult i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.f
  %i.ad = load ptr, ptr %2, align 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ad, i64 noundef %i.d) ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8
  %i.ag = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ag, ptr %0, align 8
  %i.an = load i64, ptr %i.ah, align 8
  store i64 %i.an, ptr %i.af, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8
  store ptr %i.ah, ptr %i.ae, align 8
  store i64 0, ptr %i.ao, align 8
  store i8 0, ptr %i.ah, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3MF6ObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3MF6ObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2.i, label %_ZN6Assimp4D3MF6ObjectD2Ev.exit, label %bb.d

end_hunk_1
