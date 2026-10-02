Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/benchmark?download=true
inline.NumInlined: 16777
inline.NumDeleted: 5122
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_Z15create_monstersm:._crit_edge.i.i
  %i.fe = load ptr, ptr %i.dk, align 8, !tbaa !240
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 176 ; 2 uses
  store ptr %i.ff, ptr %i.dk, align 8, !tbaa !240
  br label %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit

bb.j:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorI7MonsterSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fc, ptr noundef nonnull align 8 dereferenceable(176) %2)
          to label %._ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit_crit_edge unwind label %bb.m

._ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit_crit_edge: ; preds = %bb.j
  %.pre = load ptr, ptr %i.dk, align 8, !tbaa !240
  br label %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit: ; preds = %._ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit_crit_edge, %.noexc184
  %i.fg = phi ptr [ %.pre, %._ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit_crit_edge ], [ %i.ff, %.noexc184 ] ; 3 uses
  %i.fh = load ptr, ptr %i.dl, align 8, !tbaa !241
  %.not.i186 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not.i186, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit
  invoke void @_ZN7MonsterC2ERKS_(ptr noundef nonnull align 8 dereferenceable(176) %i.fg, ptr noundef nonnull align 8 dereferenceable(176) %4)
          to label %.noexc187 unwind label %bb.m

.noexc187:                                        ; preds = %bb.k
  %i.fi = load ptr, ptr %i.dk, align 8, !tbaa !240
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 176
  store ptr %i.fj, ptr %i.dk, align 8, !tbaa !240
  br label %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit189

bb.l:                                             ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit
  invoke void @_ZNSt6vectorI7MonsterSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fg, ptr noundef nonnull align 8 dereferenceable(176) %4)
          to label %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit189 unwind label %bb.m

_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit189: ; preds = %.noexc187, %bb.l
  %i.fk = add nuw nsw i64 %.0219, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.fk, %i.dj
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !1283

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %._crit_edge
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !240 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !241
  %.not.i190 = icmp eq ptr %i.fn, %i.fp
  br i1 %.not.i190, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN7MonsterC2ERKS_(ptr noundef nonnull align 8 dereferenceable(176) %i.fn, ptr noundef nonnull align 8 dereferenceable(176) %2)
          to label %.noexc191 unwind label %bb.q

.noexc191:                                        ; preds = %bb.o
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !240
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 176
  store ptr %i.fr, ptr %i.fm, align 8, !tbaa !240
  br label %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit193

bb.p:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorI7MonsterSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fn, ptr noundef nonnull align 8 dereferenceable(176) %2)
          to label %_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit193 unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorI7MonsterSaIS0_EE9push_backERKS0_.exit193: ; preds = %.noexc191, %bb.p, %._crit_edge
  call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.r:                                             ; preds = %bb.q, %bb.m
  %.pn63 = phi { ptr, i32 } [ %i.fl, %bb.m ], [ %i.fs, %bb.q ]
  call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.r
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %bb.r ], [ %i.eh, %bb.g ], [ %.pn56.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %2) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZNSt6vectorI7MonsterSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6personSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !236
  store i32 %i.e, ptr %i.b, align 8, !tbaa !236
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !92
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !93   ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !169

.noexc6.i.i.i:                                    ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 2 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !95
  store i64 %i.k, ptr %i.h, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.h, %bb.b ] ; 3 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt12construct_atI6personJRKS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %i.i, align 1, !tbaa !94
  store i8 %i.r, ptr %i.q, align 1, !tbaa !94
  br label %_ZSt12construct_atI6personJRKS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZSt12construct_atI6personJRKS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atI6personJRKS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !237
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr %i.x, ptr %i.a, align 8, !tbaa !237
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI6personSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt12construct_atI6personJRKS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6personSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !223    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 56                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !236
  store i32 %i.r, ptr %i.q, align 8, !tbaa !236
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !92
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !93   ; 8 uses
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit
  %i.z = icmp slt i64 %i.x, 0
  br i1 %i.z, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aa = add nuw i64 %i.x, 1                     ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !169

.noexc6.i.i.i:                                    ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #29
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !95
  store i64 %i.x, ptr %i.u, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc27, %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ad = phi ptr [ %i.ac, %.noexc27 ], [ %i.u, %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  switch i64 %i.x, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !94
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !94
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.x, ptr %i.af, align 8, !tbaa !93
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.g ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.g ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.aj = load i32, ptr %.0911.i.i.i, align 8, !tbaa !236, !alias.scope !1294, !noalias !1293
  store i32 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !236, !alias.scope !1293, !noalias !1294
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !92, !alias.scope !1293, !noalias !1294
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !95, !alias.scope !1294, !noalias !1293 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !93, !alias.scope !1294, !noalias !1293 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false), !alias.scope !1295
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !95, !alias.scope !1293, !noalias !1294
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !94, !alias.scope !1294, !noalias !1293
  store i64 %i.au, ptr %i.am, align 8, !tbaa !94, !alias.scope !1293, !noalias !1294
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !1294, !noalias !1293
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.av = phi i64 [ %i.ar, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !93, !alias.scope !1293, !noalias !1294
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !95, !alias.scope !1294, !noalias !1293
  store i64 0, ptr %i.aw, align 8, !tbaa !93, !alias.scope !1294, !noalias !1293
  store i8 0, ptr %i.ao, align 8, !tbaa !94, !alias.scope !1294, !noalias !1293
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !1295
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !36

_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.bb, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.bc, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 6 uses
  %.0911.i.i.i31 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.bd = load i32, ptr %.0911.i.i.i31, align 8, !tbaa !236, !alias.scope !1297, !noalias !1296
  store i32 %i.bd, ptr %.012.i.i.i30, align 8, !tbaa !236, !alias.scope !1296, !noalias !1297
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !92, !alias.scope !1296, !noalias !1297
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !95, !alias.scope !1297, !noalias !1296 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !93, !alias.scope !1297, !noalias !1296 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false), !alias.scope !1298
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !95, !alias.scope !1296, !noalias !1297
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !94, !alias.scope !1297, !noalias !1296
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !94, !alias.scope !1296, !noalias !1297
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !93, !alias.scope !1297, !noalias !1296
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.i
  %i.bp = phi i64 [ %i.bl, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !93, !alias.scope !1296, !noalias !1297
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !95, !alias.scope !1297, !noalias !1296
  store i64 0, ptr %i.bq, align 8, !tbaa !93, !alias.scope !1297, !noalias !1296
  store i8 0, ptr %i.bi, align 8, !tbaa !94, !alias.scope !1297, !noalias !1296
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !alias.scope !1298
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 56 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !36

_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38: ; preds = %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.bc, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bv, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !238
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #30
  br label %_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, %bb.j
  store ptr %i.p, ptr %0, align 8, !tbaa !223
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !237
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !238
  ret void

bb.k:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN16struct_pb_sample11deserializeIN9pb_sample8MonstersES2_EEv10SampleTypeRT_:bb.a
  %i.djy = getelementptr inbounds nuw i8, ptr %i.dit, i64 5 ; 2 uses
  %i.djz = load i8, ptr %i.djr, align 1, !tbaa !94 ; 2 uses
  %i.dka = sext i8 %i.djz to i64
  %i.dkb = shl nsw i64 %i.dka, 28
  %i.dkc = and i64 %i.dkb, 34091302912
  %i.dkd = or disjoint i64 %i.dkc, %i.djw         ; 6 uses
  %i.dke = icmp sgt i8 %i.djz, -1
  br i1 %i.dke, label %bb.aau, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dit, i64 6 ; 2 uses
  %i.dkg = load i8, ptr %i.djy, align 1, !tbaa !94
  %i.dkh = icmp sgt i8 %i.dkg, -1
  br i1 %i.dkh, label %bb.aau, label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  %i.dki = getelementptr inbounds nuw i8, ptr %i.dit, i64 7 ; 2 uses
  %i.dkj = load i8, ptr %i.dkf, align 1, !tbaa !94
  %i.dkk = icmp sgt i8 %i.dkj, -1
  br i1 %i.dkk, label %bb.aau, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dit, i64 8 ; 2 uses
  %i.dkm = load i8, ptr %i.dki, align 1, !tbaa !94
  %i.dkn = icmp sgt i8 %i.dkm, -1
  br i1 %i.dkn, label %bb.aau, label %bb.aao

bb.aao:                                           ; preds = %bb.aan
  %i.dko = getelementptr inbounds nuw i8, ptr %i.dit, i64 9 ; 2 uses
  %i.dkp = load i8, ptr %i.dkl, align 1, !tbaa !94
  %i.dkq = icmp sgt i8 %i.dkp, -1
  br i1 %i.dkq, label %bb.aau, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.dkr = getelementptr inbounds nuw i8, ptr %i.dit, i64 10
  %i.dks = load i8, ptr %i.dko, align 1, !tbaa !94
  %i.dkt = icmp sgt i8 %i.dks, -1
  br i1 %i.dkt, label %bb.aau, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.dku = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dku, ptr noundef nonnull @.str.77)
          to label %.invoke unwind label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  %i.dkv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dku) #28
  br label %.body.i166

.lr.ph5909:                                       ; preds = %bb.aag, %bb.aas
  %indvars.iv10314 = phi i64 [ %indvars.iv.next10315, %bb.aas ], [ 0, %bb.aag ] ; 3 uses
  %.1.i.i344.i5907 = phi i64 [ %i.dlc, %bb.aas ], [ 0, %bb.aag ] ; 2 uses
  %.170.i.i343.i5906 = phi ptr [ %i.dky, %bb.aas ], [ %i.dit, %bb.aag ] ; 2 uses
  %i.dkw = load i8, ptr %.170.i.i343.i5906, align 1, !tbaa !94 ; 3 uses
  %i.dkx = icmp slt i8 %i.dkw, 0
  %i.dky = getelementptr inbounds nuw i8, ptr %.170.i.i343.i5906, i64 1 ; 3 uses
  br i1 %i.dkx, label %bb.aas, label %.critedge.i.i347.i

bb.aas:                                           ; preds = %.lr.ph5909
  %i.dkz = and i8 %i.dkw, 127
  %i.dla = zext nneg i8 %i.dkz to i64
  %i.dlb = shl i64 %i.dla, %indvars.iv10314
  %i.dlc = or i64 %i.dlb, %.1.i.i344.i5907
  %indvars.iv.next10315 = add nuw nsw i64 %indvars.iv10314, 7
  %.not.i.i346.i = icmp eq ptr %i.dky, %i.diu
  br i1 %.not.i.i346.i, label %.preheader2004._crit_edge.a, label %.lr.ph5909, !llvm.loop !46

.preheader2004._crit_edge.a:                      ; preds = %bb.aas
  %i.dld = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dld, ptr noundef nonnull @.str.78)
          to label %.invoke unwind label %bb.aat

bb.aat:                                           ; preds = %.preheader2004._crit_edge.a
  %i.dle = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dld) #28
  br label %.body.i166

.critedge.i.i347.i:                               ; preds = %.lr.ph5909
  %i.dlf = zext nneg i8 %i.dkw to i64
  %i.dlg = shl i64 %i.dlf, %indvars.iv10314
  %i.dlh = or i64 %i.dlg, %.1.i.i344.i5907
  br label %bb.aau

bb.aau:                                           ; preds = %.critedge.i.i347.i, %bb.aap, %bb.aao, %bb.aan, %bb.aam, %bb.aal, %bb.aak, %bb.aaj, %bb.aai, %bb.aah
  %.271.i.i348.i = phi ptr [ %i.dky, %.critedge.i.i347.i ], [ %i.dkr, %bb.aap ], [ %i.djd, %bb.aah ], [ %i.djk, %bb.aai ], [ %i.djr, %bb.aaj ], [ %i.djy, %bb.aak ], [ %i.dkf, %bb.aal ], [ %i.dki, %bb.aam ], [ %i.dkl, %bb.aan ], [ %i.dko, %bb.aao ]
  %.2.i.i349.i = phi i64 [ %i.dlh, %.critedge.i.i347.i ], [ %i.dkd, %bb.aap ], [ %i.dji, %bb.aah ], [ %i.djp, %bb.aai ], [ %i.djw, %bb.aaj ], [ %i.dkd, %bb.aak ], [ %i.dkd, %bb.aal ], [ %i.dkd, %bb.aam ], [ %i.dkd, %bb.aan ], [ %i.dkd, %bb.aao ]
  %i.dli = ptrtoint ptr %.271.i.i348.i to i64
  %i.dlj = sub i64 %i.dli, %i.diy
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i350.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i350.i: ; preds = %bb.aau, %bb.aaf
  %.41730 = phi i64 [ 1, %bb.aaf ], [ %i.dlj, %bb.aau ] ; 3 uses
  %.072.i.i351.i = phi i64 [ %i.dix, %bb.aaf ], [ %.2.i.i349.i, %bb.aau ]
  %i.dlk = trunc i64 %.072.i.i351.i to i32        ; 2 uses
  %i.dll = and i32 %i.dlk, 7
  %i.dlm = lshr i32 %i.dlk, 3
  %i.dln = icmp ugt i64 %.41730, %i.dir
  br i1 %i.dln, label %.invoke14872, label %.noexc363.i, !llvm.loop !52

bb.aav:                                           ; preds = %bb.zw
  %i.dlo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE3mapB5cxx11) #28
  br label %.body.i166

_ZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEE.exit368.i: ; preds = %.noexc365.i, %.noexc431.i, %.noexc491.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.dlp = load i64, ptr %19, align 8, !tbaa !438 ; 3 uses
  %i.dlq = icmp ugt i64 %i.cql, %i.dlp
  br i1 %i.dlq, label %.invoke14872, label %.noexc297.i

.invoke14872:                                     ; preds = %_ZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEE.exit368.i, %_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm1EEEEDaS3_.exit494.i, %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i471.i, %bb.yj, %.noexc430.i, %bb.wu, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i288.i, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i350.i
  %i.dlr = phi i64 [ %.41730, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i350.i ], [ %.01381.a, %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i471.i ], [ %.11727.ph, %bb.yj ], [ %i.cxc, %.noexc430.i ], [ %.01726, %bb.wu ], [ %.01386.a, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i288.i ], [ %i.cql, %_ZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEE.exit368.i ], [ %.21728, %_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm1EEEEDaS3_.exit494.i ]
  %i.dls = phi i64 [ %i.dir, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i350.i ], [ %i.dau, %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i471.i ], [ %.pre10384.a, %bb.yj ], [ %i.cxu, %.noexc430.i ], [ %.pre10384.pre, %bb.wu ], [ %i.cnr, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i288.i ], [ %i.dlp, %_ZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEE.exit368.i ], [ %i.dgo, %_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm1EEEEDaS3_.exit494.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.dlr, i64 noundef %i.dls) #32
          to label %.cont14873 unwind label %.loopexit.split-lp2015.loopexit.split-lp

.cont14873:                                       ; preds = %.invoke14872
  unreachable

.noexc297.i:                                      ; preds = %_ZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEE.exit368.i
  %i.dlt = sub nuw i64 %i.dlp, %i.cql             ; 2 uses
  %i.dlu = load ptr, ptr %i.yg, align 8, !tbaa !439
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dlu, i64 %i.cql
  store i64 %i.dlt, ptr %19, align 8, !tbaa !249
  store ptr %i.dlv, ptr %i.yg, align 8, !tbaa !363
  br label %_ZN6iguana6detail12from_pb_implIN9pb_sample6WeaponEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i

_ZN6iguana6detail12from_pb_implIN9pb_sample6WeaponEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i: ; preds = %.noexc297.i, %bb.vz
  %i.dlw = phi i64 [ %i.dlt, %.noexc297.i ], [ %i.cqj, %bb.vz ]
  %i.dlx = load ptr, ptr %i.cni, align 8, !tbaa !208 ; 10 uses
  %i.dly = load ptr, ptr %i.cnj, align 8, !tbaa !209
  %.not.i.i517 = icmp eq ptr %i.dlx, %i.dly
  br i1 %.not.i.i517, label %bb.aay, label %bb.aaw

bb.aaw:                                           ; preds = %_ZN6iguana6detail12from_pb_implIN9pb_sample6WeaponEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dlx, i64 8
  %i.dma = load i64, ptr %i.yk, align 8, !tbaa !198
  store i64 %i.dma, ptr %i.dlz, align 8, !tbaa !198
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %i.dlx, align 8, !tbaa !126
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dlx, i64 16 ; 2 uses
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.dlx, i64 32 ; 3 uses
  store ptr %i.dmc, ptr %i.dmb, align 8, !tbaa !92
  %i.dmd = load ptr, ptr %i.ym, align 8, !tbaa !95 ; 2 uses
  %i.dme = icmp eq ptr %i.dmd, %i.yn
  br i1 %i.dme, label %bb.aax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.aax:                                           ; preds = %bb.aaw
  %i.dmf = load i64, ptr %i.yo, align 8, !tbaa !93 ; 3 uses
  %i.dmg = icmp ult i64 %i.dmf, 16
  call void @llvm.assume(i1 %i.dmg)
  %i.dmh = add nuw nsw i64 %i.dmf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dmc, ptr noundef nonnull align 8 dereferenceable(1) %i.yn, i64 %i.dmh, i1 false)
  br label %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aaw
  store ptr %i.dmd, ptr %i.dmb, align 8, !tbaa !95
  %i.dmi = load i64, ptr %i.yn, align 8, !tbaa !94
  store i64 %i.dmi, ptr %i.dmc, align 8, !tbaa !94
  %.pre10386.a = load i64, ptr %i.yo, align 8, !tbaa !93
  br label %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.aax
  %i.dmj = phi i64 [ %.pre10386.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dmf, %bb.aax ]
  %i.dmk = getelementptr inbounds nuw i8, ptr %i.dlx, i64 24
  store i64 %i.dmj, ptr %i.dmk, align 8, !tbaa !93
  store ptr %i.yn, ptr %i.ym, align 8, !tbaa !95
  store i64 0, ptr %i.yo, align 8, !tbaa !93
  store i8 0, ptr %i.yn, align 8, !tbaa !94
  %i.dml = getelementptr inbounds nuw i8, ptr %i.dlx, i64 48
  %i.dmm = load i32, ptr %i.ys, align 8, !tbaa !476
  store i32 %i.dmm, ptr %i.dml, align 8, !tbaa !476
  %i.dmn = load ptr, ptr %i.cni, align 8, !tbaa !208
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.dmn, i64 56
  store ptr %i.dmo, ptr %i.cni, align 8, !tbaa !208
  br label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE9push_backEOS1_.exit

bb.aay:                                           ; preds = %_ZN6iguana6detail12from_pb_implIN9pb_sample6WeaponEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i
  %i.dmp = load ptr, ptr %i.cng, align 8, !tbaa !207 ; 5 uses
  %i.dmq = ptrtoint ptr %i.dlx to i64
  %i.dmr = ptrtoint ptr %i.dmp to i64             ; 2 uses
  %i.dms = sub i64 %i.dmq, %i.dmr                 ; 3 uses
  %i.dmt = icmp eq i64 %i.dms, 9223372036854775800
  br i1 %i.dmt, label %bb.aaz, label %_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.aaz:                                           ; preds = %bb.aay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
          to label %.noexc738.a unwind label %.loopexit.split-lp2015.loopexit.split-lp

.noexc738.a:                                      ; preds = %bb.aaz
  unreachable

_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aay
  %i.dmu = sdiv exact i64 %i.dms, 56              ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dmu, i64 1)
  %i.dmv = add nsw i64 %.sroa.speculated.i.i, %i.dmu ; 2 uses
  %i.dmw = icmp ult i64 %i.dmv, %i.dmu
  %i.dmx = call i64 @llvm.umin.i64(i64 %i.dmv, i64 164703072086692425)
  %i.dmy = select i1 %i.dmw, i64 164703072086692425, i64 %i.dmx ; 2 uses
  %i.dmz = mul nuw nsw i64 %i.dmy, 56
  %i.dna = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dmz) #29
          to label %.noexc739 unwind label %.loopexit.split-lp2015.loopexit ; 5 uses

.noexc739:                                        ; preds = %_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.dna, i64 %i.dms ; 6 uses
  %i.dnc = getelementptr inbounds nuw i8, ptr %i.dnb, i64 8
  %i.dnd = load i64, ptr %i.yk, align 8, !tbaa !198
  store i64 %i.dnd, ptr %i.dnc, align 8, !tbaa !198
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %i.dnb, align 8, !tbaa !126
  %i.dne = getelementptr inbounds nuw i8, ptr %i.dnb, i64 16 ; 2 uses
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dnb, i64 32 ; 3 uses
  store ptr %i.dnf, ptr %i.dne, align 8, !tbaa !92
  %i.dng = load ptr, ptr %i.ym, align 8, !tbaa !95 ; 2 uses
  %i.dnh = icmp eq ptr %i.dng, %i.yn
  br i1 %i.dnh, label %bb.aba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i734

bb.aba:                                           ; preds = %.noexc739
  %i.dni = load i64, ptr %i.yo, align 8, !tbaa !93 ; 3 uses
  %i.dnj = icmp ult i64 %i.dni, 16
  call void @llvm.assume(i1 %i.dnj)
  %i.dnk = add nuw nsw i64 %i.dni, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dnf, ptr noundef nonnull align 8 dereferenceable(1) %i.yn, i64 %i.dnk, i1 false)
  br label %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i734: ; preds = %.noexc739
  store ptr %i.dng, ptr %i.dne, align 8, !tbaa !95
  %i.dnl = load i64, ptr %i.yn, align 8, !tbaa !94
  store i64 %i.dnl, ptr %i.dnf, align 8, !tbaa !94
  %.pre.i735 = load i64, ptr %i.yo, align 8, !tbaa !93
  br label %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i734, %bb.aba
  %i.dnm = phi i64 [ %i.dni, %bb.aba ], [ %.pre.i735, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i734 ]
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.dnb, i64 24
  store i64 %i.dnm, ptr %i.dnn, align 8, !tbaa !93
  store ptr %i.yn, ptr %i.ym, align 8, !tbaa !95
  store i64 0, ptr %i.yo, align 8, !tbaa !93
  store i8 0, ptr %i.yn, align 8, !tbaa !94
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dnb, i64 48
  %i.dnp = load i32, ptr %i.ys, align 8, !tbaa !476
  store i32 %i.dnp, ptr %i.dno, align 8, !tbaa !476
  %.not10.i.i.i.i = icmp eq ptr %i.dmp, %i.dlx
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i, label %.lr.ph.i.i.i.i736

.lr.ph.i.i.i.i736:                                ; preds = %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.doo, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.dna, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i ] ; 7 uses
  %.0911.i.i.i.i = phi ptr [ %i.don, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.dmp, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.dnq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.dnr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.dns = load i64, ptr %i.dnr, align 8, !tbaa !198, !alias.scope !1469, !noalias !1468
  store i64 %i.dns, ptr %i.dnq, align 8, !tbaa !198, !alias.scope !1468, !noalias !1469
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %.012.i.i.i.i, align 8, !tbaa !126, !alias.scope !1468, !noalias !1469
  %i.dnt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %i.dnu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.dnv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.dnv, ptr %i.dnt, align 8, !tbaa !92, !alias.scope !1468, !noalias !1469
  %i.dnw = load ptr, ptr %i.dnu, align 8, !tbaa !95, !alias.scope !1469, !noalias !1468 ; 2 uses
  %i.dnx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 5 uses
  %i.dny = icmp eq ptr %i.dnw, %i.dnx
  br i1 %i.dny, label %bb.abb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.abb:                                           ; preds = %.lr.ph.i.i.i.i736
  %i.dnz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.doa = load i64, ptr %i.dnz, align 8, !tbaa !93, !alias.scope !1469, !noalias !1468 ; 3 uses
  %i.dob = icmp ult i64 %i.doa, 16
  call void @llvm.assume(i1 %i.dob)
  %i.doc = add nuw nsw i64 %i.doa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dnv, ptr noundef nonnull align 8 dereferenceable(1) %i.dnx, i64 %i.doc, i1 false), !alias.scope !1470
  br label %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i736
  store ptr %i.dnw, ptr %i.dnt, align 8, !tbaa !95, !alias.scope !1468, !noalias !1469
  %i.dod = load i64, ptr %i.dnx, align 8, !tbaa !94, !alias.scope !1469, !noalias !1468
  store i64 %i.dod, ptr %i.dnv, align 8, !tbaa !94, !alias.scope !1468, !noalias !1469
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !93, !alias.scope !1469, !noalias !1468
  br label %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.abb
  %i.doe = phi i64 [ %i.doa, %bb.abb ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.dof = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.dog = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  store i64 %i.doe, ptr %i.dog, align 8, !tbaa !93, !alias.scope !1468, !noalias !1469
  store ptr %i.dnx, ptr %i.dnu, align 8, !tbaa !95, !alias.scope !1469, !noalias !1468
  store i64 0, ptr %i.dof, align 8, !tbaa !93, !alias.scope !1469, !noalias !1468
  store i8 0, ptr %i.dnx, align 8, !tbaa !94, !alias.scope !1469, !noalias !1468
  %i.doh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.doi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %i.doj = load i32, ptr %i.doi, align 8, !tbaa !476, !alias.scope !1469, !noalias !1468
  store i32 %i.doj, ptr %i.doh, align 8, !tbaa !476, !alias.scope !1468, !noalias !1469
  %i.dok = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !126, !alias.scope !1469, !noalias !1468
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dok, i64 88
  %i.dom = load ptr, ptr %i.dol, align 8
  call void %i.dom(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %.0911.i.i.i.i) #28, !inline_history !1461
  %i.don = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.doo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i737 = icmp eq ptr %i.don, %i.dlx
  br i1 %.not.i.i.i.i737, label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i, label %.lr.ph.i.i.i.i736, !llvm.loop !56

_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i: ; preds = %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dna, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i ], [ %i.doo, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.dop = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56
  %.not.i27.i = icmp eq ptr %i.dmp, null
  br i1 %.not.i27.i, label %.noexc518, label %bb.abc

bb.abc:                                           ; preds = %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i
  %i.doq = load ptr, ptr %i.cnj, align 8, !tbaa !209
  %i.dor = ptrtoint ptr %i.doq to i64
  %i.dos = sub i64 %i.dor, %i.dmr
  call void @_ZdlPvm(ptr noundef nonnull %i.dmp, i64 noundef %i.dos) #30
  br label %.noexc518

.noexc518:                                        ; preds = %bb.abc, %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i
  store ptr %i.dna, ptr %i.cng, align 8, !tbaa !207
  store ptr %i.dop, ptr %i.cni, align 8, !tbaa !208
  %i.dot = getelementptr inbounds nuw [56 x i8], ptr %i.dna, i64 %i.dmy
  store ptr %i.dot, ptr %i.cnj, align 8, !tbaa !209
  %.pre10387.a = load i64, ptr %19, align 8, !tbaa !438
  br label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc518, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i
  %i.dou = phi i64 [ %.pre10387.a, %.noexc518 ], [ %i.dlw, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i ] ; 6 uses
  %i.dov = icmp eq i64 %i.dou, 0
  br i1 %i.dov, label %bb.abz, label %bb.abd

.loopexit2014:                                    ; preds = %bb.aac, %bb.aad
  %lpad.loopexit2016 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i166

.loopexit.split-lp2015.loopexit:                  ; preds = %_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.xq
  %lpad.loopexit2047 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i166

.loopexit.split-lp2015.loopexit.split-lp:         ; preds = %.invoke14872, %.invoke, %bb.aaz
  %lpad.loopexit.split-lp2048 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i166

bb.abd:                                           ; preds = %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE9push_backEOS1_.exit
  %i.dow = load ptr, ptr %i.yg, align 8, !tbaa !439 ; 15 uses
  %i.dox = getelementptr inbounds nuw i8, ptr %i.dow, i64 %i.dou
  %i.doy = load i8, ptr %i.dow, align 1, !tbaa !94 ; 3 uses
  %i.doz = icmp sgt i8 %i.doy, -1
  br i1 %i.doz, label %bb.abe, label %bb.abf

bb.abe:                                           ; preds = %bb.abd
  %i.dpa = zext nneg i8 %i.doy to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i276.i

bb.abf:                                           ; preds = %bb.abd
  %i.dpb = ptrtoint ptr %i.dow to i64
  %i.dpc = icmp ugt i64 %i.dou, 9
  br i1 %i.dpc, label %bb.abg, label %.lr.ph5939, !prof !257

bb.abg:                                           ; preds = %bb.abf
  %i.dpd = and i8 %i.doy, 127
  %i.dpe = zext nneg i8 %i.dpd to i64
  %i.dpf = getelementptr inbounds nuw i8, ptr %i.dow, i64 1
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dow, i64 2 ; 2 uses
  %i.dph = load i8, ptr %i.dpf, align 1, !tbaa !94 ; 2 uses
  %i.dpi = sext i8 %i.dph to i64
  %i.dpj = shl nsw i64 %i.dpi, 7
  %i.dpk = and i64 %i.dpj, 16256
  %i.dpl = or disjoint i64 %i.dpk, %i.dpe         ; 2 uses
  %i.dpm = icmp sgt i8 %i.dph, -1
  br i1 %i.dpm, label %bb.abt, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %i.dpn = getelementptr inbounds nuw i8, ptr %i.dow, i64 3 ; 2 uses
  %i.dpo = load i8, ptr %i.dpg, align 1, !tbaa !94 ; 2 uses
  %i.dpp = sext i8 %i.dpo to i64
  %i.dpq = shl nsw i64 %i.dpp, 14
  %i.dpr = and i64 %i.dpq, 2080768
  %i.dps = or disjoint i64 %i.dpr, %i.dpl         ; 2 uses
  %i.dpt = icmp sgt i8 %i.dpo, -1
  br i1 %i.dpt, label %bb.abt, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dow, i64 4 ; 2 uses
  %i.dpv = load i8, ptr %i.dpn, align 1, !tbaa !94 ; 2 uses
  %i.dpw = sext i8 %i.dpv to i64
  %i.dpx = shl nsw i64 %i.dpw, 21
  %i.dpy = and i64 %i.dpx, 266338304
  %i.dpz = or disjoint i64 %i.dpy, %i.dps         ; 2 uses
  %i.dqa = icmp sgt i8 %i.dpv, -1
  br i1 %i.dqa, label %bb.abt, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dow, i64 5 ; 2 uses
  %i.dqc = load i8, ptr %i.dpu, align 1, !tbaa !94 ; 2 uses
  %i.dqd = sext i8 %i.dqc to i64
  %i.dqe = shl nsw i64 %i.dqd, 28
  %i.dqf = and i64 %i.dqe, 34091302912
  %i.dqg = or disjoint i64 %i.dqf, %i.dpz         ; 6 uses
  %i.dqh = icmp sgt i8 %i.dqc, -1
end_hunk_1
begin_hunk_2_@_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm3EiEEEEDaS4_:bb.a
  %i.cd = icmp ugt i64 %.0, %i.l
  br i1 %i.cd, label %bb.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.x:                                             ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0, i64 noundef %i.l) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  %i.ce = sub nuw i64 %i.l, %.0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !249
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_dLm4EdEEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !457
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.i, %bb.h ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !565, !nonnull !272, !align !273 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !438
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.f, label %_ZN6iguana6detail12from_pb_implIdEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit, !prof !169

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.84)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6iguana6detail12from_pb_implIdEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit: ; preds = %bb.e
  %i.k = load ptr, ptr %0, align 8, !tbaa !562, !nonnull !272, !align !273
  %i.l = load i64, ptr %1, align 8, !tbaa !571
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !439
  %i.p = load i64, ptr %i.o, align 1
  store i64 %i.p, ptr %i.m, align 8
  %i.q = load i64, ptr %i.f, align 8, !tbaa !438  ; 3 uses
  %i.r = icmp ult i64 %i.q, 8
  br i1 %i.r, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.i:                                             ; preds = %_ZN6iguana6detail12from_pb_implIdEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef 8, i64 noundef %i.q) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail12from_pb_implIdEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  %i.s = add i64 %i.q, -8
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !439
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.s, ptr %i.f, align 8, !tbaa !249
  store ptr %i.u, ptr %i.n, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7personsEEEDaOT_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.759") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7personsEEEDaOT_E10offset_arr acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7personsEEEDaOT_E10offset_arr) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3ylt10reflection8internal21get_member_offset_arrIRN9pb_sample7personsEEERKDaOT_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN3ylt10reflection8internal7wrapperIN9pb_sample7personsEE5valueE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7personsEEEDaOT_E10offset_arr, align 8, !tbaa !428
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7personsEEEDaOT_E10offset_arr) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7personsEEEDaOT_E10offset_arr, align 8, !tbaa !428, !nonnull !272, !align !273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !249, !noalias !1580
  store i64 %i.f, ptr %0, align 8, !tbaa !249, !alias.scope !1580
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !249, !alias.scope !1580
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.62, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !363, !alias.scope !1580
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7personsEEEDaOT_E10offset_arr) #28
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6iguana6detail11get_membersIN9pb_sample7personsEEEDaOT_(ptr dead_on_unwind noalias writable sret(%"class.frozen::unordered_map.764") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.frozen::bits::GetKey", align 1 ; 3 uses
  %3 = alloca %"struct.frozen::elsa", align 1     ; 3 uses
  %.sroa.43.i = alloca [28 x i8], align 4         ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN6iguana6detail11get_membersIN9pb_sample7personsEEEDaOT_E2tp acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail11get_membersIN9pb_sample7personsEEEDaOT_E2tp) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.759") align 8 @_ZZN6iguana6detail11get_membersIN9pb_sample7personsEEEDaOT_E2tp, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail11get_membersIN9pb_sample7personsEEEDaOT_E2tp) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.43.i)
  %.sroa.43.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.43.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.43.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6iguana6detail11get_membersIN9pb_sample7personsEEEDaOT_E2tp, i64 24, i1 false), !noalias !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1583
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 1, ptr %i.d, align 8, !alias.scope !1583
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.43.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.43.i, i64 28, i1 false)
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1583
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !1583
  call void @_ZN6frozen4bits15make_pmh_tablesILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7personsESt6vectorINS7_6personESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSM_RKT3_T4_(ptr dead_on_unwind nonnull writable sret(%"struct.frozen::bits::pmh_tables.668") align 8 %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.43.i)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana6detail11get_membersIN9pb_sample7personsEEEDaOT_E2tp) #28
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9pb_sample6personESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !190    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !187
  store i64 %i.t, ptr %i.r, align 8, !tbaa !187
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %i.q, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !462
  store i32 %i.w, ptr %i.u, align 8, !tbaa !462
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !92
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !95  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !93 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !95
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !94
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = phi i64 [ %i.ae, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !93
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !95
  store i64 0, ptr %i.aj, align 8, !tbaa !93
  store i8 0, ptr %i.ab, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !187, !alias.scope !1591, !noalias !1590
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !187, !alias.scope !1590, !noalias !1591
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %.012.i.i.i, align 8, !tbaa !126, !alias.scope !1590, !noalias !1591
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !462, !alias.scope !1591, !noalias !1590
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !462, !alias.scope !1590, !noalias !1591
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !92, !alias.scope !1590, !noalias !1591
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !95, !alias.scope !1591, !noalias !1590 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !93, !alias.scope !1591, !noalias !1590 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !1592
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !95, !alias.scope !1590, !noalias !1591
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !94, !alias.scope !1591, !noalias !1590
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !94, !alias.scope !1590, !noalias !1591
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !1591, !noalias !1590
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.be = phi i64 [ %i.ba, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !93, !alias.scope !1590, !noalias !1591
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !95, !alias.scope !1591, !noalias !1590
  store i64 0, ptr %i.bf, align 8, !tbaa !93, !alias.scope !1591, !noalias !1590
  store i8 0, ptr %i.ax, align 8, !tbaa !94, !alias.scope !1591, !noalias !1590
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !1592
  %i.bj = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !126, !alias.scope !1591, !noalias !1590
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.0911.i.i.i) #28, !inline_history !64
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !65

_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN9pb_sample6personEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.cp, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bo, %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.co, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !187, !alias.scope !1594, !noalias !1593
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !187, !alias.scope !1593, !noalias !1594
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %.012.i.i.i18, align 8, !tbaa !126, !alias.scope !1593, !noalias !1594
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !462, !alias.scope !1594, !noalias !1593
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !462, !alias.scope !1593, !noalias !1594
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !92, !alias.scope !1593, !noalias !1594
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !95, !alias.scope !1594, !noalias !1593 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 5 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !93, !alias.scope !1594, !noalias !1593 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.bz, i64 %i.ce, i1 false), !alias.scope !1595
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !95, !alias.scope !1593, !noalias !1594
  %i.cf = load i64, ptr %i.bz, align 8, !tbaa !94, !alias.scope !1594, !noalias !1593
  store i64 %i.cf, ptr %i.bx, align 8, !tbaa !94, !alias.scope !1593, !noalias !1594
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !93, !alias.scope !1594, !noalias !1593
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.cg = phi i64 [ %i.cc, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !93, !alias.scope !1593, !noalias !1594
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !95, !alias.scope !1594, !noalias !1593
  store i64 0, ptr %i.ch, align 8, !tbaa !93, !alias.scope !1594, !noalias !1593
  store i8 0, ptr %i.bz, align 8, !tbaa !94, !alias.scope !1594, !noalias !1593
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !alias.scope !1595
  %i.cl = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !126, !alias.scope !1594, !noalias !1593
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.0911.i.i.i19) #28, !inline_history !64
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.co, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !65

_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bo, %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cp, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN9pb_sample6personESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !192
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ct) #30
  br label %_ZNSt12_Vector_baseIN9pb_sample6personESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9pb_sample6personESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !190
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !191
  %i.cu = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm2EiEEEEDaS4_:bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !589, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !594
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !592, !nonnull !272, !align !273 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 15 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i6 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !94   ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 14
  %i.ag = and i64 %i.af, 2080768
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !94  ; 2 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 21
  %i.an = and i64 %i.am, 266338304
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !94  ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 28
  %i.au = and i64 %i.at, 34091302912
  %i.av = or disjoint i64 %i.au, %i.ao            ; 6 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !94
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 7 ; 2 uses
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !94
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !94
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 9 ; 2 uses
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !94
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !94
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull @.str.77)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader ] ; 3 uses
  %.1.i.i8 = phi i64 [ %i.bu, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.170.i.i7 = phi ptr [ %i.bq, %bb.t ], [ %i.k, %.preheader ] ; 2 uses
  %i.bo = load i8, ptr %.170.i.i7, align 1, !tbaa !94 ; 3 uses
  %i.bp = icmp slt i8 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %.170.i.i7, i64 1 ; 3 uses
  br i1 %i.bp, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.br = and i8 %i.bo, 127
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = shl i64 %i.bs, %indvars.iv
  %i.bu = or i64 %i.bt, %.1.i.i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i.i = icmp eq ptr %i.bq, %i.m
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull @.str.78)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.v:                                             ; preds = %._crit_edge
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.bx = zext nneg i8 %i.bo to i64
  %i.by = shl i64 %i.bx, %indvars.iv
  %i.bz = or i64 %i.by, %.1.i.i8
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.271.i.i = phi ptr [ %i.bq, %.critedge.i.i ], [ %i.bj, %bb.p ], [ %i.v, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.ba, %bb.m ], [ %i.bd, %bb.n ], [ %i.bg, %bb.o ]
  %.2.i.i = phi i64 [ %i.bz, %.critedge.i.i ], [ %i.av, %bb.p ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.av, %bb.n ], [ %i.av, %bb.o ]
  %i.ca = ptrtoint ptr %.271.i.i to i64
  %i.cb = sub i64 %i.ca, %i.q
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit

_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit: ; preds = %bb.f, %bb.w
  %.0 = phi i64 [ 1, %bb.f ], [ %i.cb, %bb.w ]    ; 4 uses
  %.072.i.i = phi i64 [ %i.p, %bb.f ], [ %.2.i.i, %bb.w ]
  %i.cc = trunc i64 %.072.i.i to i32
  store i32 %i.cc, ptr %i.g, align 4, !tbaa !164
  %i.cd = icmp ugt i64 %.0, %i.l
  br i1 %i.cd, label %bb.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.x:                                             ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0, i64 noundef %i.l) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  %i.ce = sub nuw i64 %i.l, %.0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !249
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(52) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !207    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !198
  store i64 %i.t, ptr %i.r, align 8, !tbaa !198
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %i.q, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !92
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !95   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !93 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN9pb_sample6WeaponESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.x, ptr %i.u, align 8, !tbaa !95
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !94
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !93
  store ptr %i.y, ptr %i.v, align 8, !tbaa !95
  store i64 0, ptr %i.ag, align 8, !tbaa !93
  store i8 0, ptr %i.y, align 8, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !476
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !476
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bj, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.bi, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !198, !alias.scope !1701, !noalias !1700
  store i64 %i.an, ptr %i.al, align 8, !tbaa !198, !alias.scope !1700, !noalias !1701
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %.012.i.i.i, align 8, !tbaa !126, !alias.scope !1700, !noalias !1701
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !92, !alias.scope !1700, !noalias !1701
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !95, !alias.scope !1701, !noalias !1700 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !93, !alias.scope !1701, !noalias !1700 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !1702
  br label %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !95, !alias.scope !1700, !noalias !1701
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !94, !alias.scope !1701, !noalias !1700
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !94, !alias.scope !1700, !noalias !1701
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !1701, !noalias !1700
  br label %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.az = phi i64 [ %i.av, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !93, !alias.scope !1700, !noalias !1701
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !95, !alias.scope !1701, !noalias !1700
  store i64 0, ptr %i.ba, align 8, !tbaa !93, !alias.scope !1701, !noalias !1700
  store i8 0, ptr %i.as, align 8, !tbaa !94, !alias.scope !1701, !noalias !1700
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !476, !alias.scope !1701, !noalias !1700
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !476, !alias.scope !1700, !noalias !1701
  %i.bf = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !126, !alias.scope !1701, !noalias !1700
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %.0911.i.i.i) #28, !inline_history !1696
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !56

_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN9pb_sample6WeaponEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.bj, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.cj, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bk, %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i19 = phi ptr [ %i.ci, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !198, !alias.scope !1704, !noalias !1703
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !198, !alias.scope !1703, !noalias !1704
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %.012.i.i.i18, align 8, !tbaa !126, !alias.scope !1703, !noalias !1704
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 3 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !92, !alias.scope !1703, !noalias !1704
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !95, !alias.scope !1704, !noalias !1703 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !93, !alias.scope !1704, !noalias !1703 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false), !alias.scope !1705
  br label %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !95, !alias.scope !1703, !noalias !1704
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !94, !alias.scope !1704, !noalias !1703
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !94, !alias.scope !1703, !noalias !1704
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !93, !alias.scope !1704, !noalias !1703
  br label %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bz = phi i64 [ %i.bv, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !93, !alias.scope !1703, !noalias !1704
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !95, !alias.scope !1704, !noalias !1703
  store i64 0, ptr %i.ca, align 8, !tbaa !93, !alias.scope !1704, !noalias !1703
  store i8 0, ptr %i.bs, align 8, !tbaa !94, !alias.scope !1704, !noalias !1703
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !476, !alias.scope !1704, !noalias !1703
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !476, !alias.scope !1703, !noalias !1704
  %i.cf = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !126, !alias.scope !1704, !noalias !1703
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %.0911.i.i.i19) #28, !inline_history !1696
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !56

_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bk, %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cj, %_ZSt19__relocate_object_aIN9pb_sample6WeaponES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN9pb_sample6WeaponESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !209
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cn) #30
  br label %_ZNSt12_Vector_baseIN9pb_sample6WeaponESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9pb_sample6WeaponESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !207
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !208
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6iguana9base_implIN9pb_sample6WeaponELh8EE5to_pbERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample6WeaponESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample6WeaponESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11) #28
  %.not.i = icmp eq i32 %i.c, 0
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS3_ZNS8_13register_typeIN9pb_sample6personEEEbvEUlvE_EEES4_INSG_14_Node_iteratorISE_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  tail call void @__clang_call_terminate(ptr %i.be) #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i: ; preds = %bb.p, %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_St8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueISF_Lb1EEE.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #30
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i
  %.sroa.4.044 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.037.043 = phi ptr [ %.sroa.037.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i ], [ %i.az, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.037.043, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFSt10shared_ptrIN6iguana6detail4baseEEvEZNS1_13register_typeIN9pb_sample6personEEEbvEUlvE_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.1092") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.1098", align 1 ; 3 uses
  %3 = alloca %"class.std::shared_ptr.1107", align 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !1921
  store ptr null, ptr %3, align 16, !tbaa !1923, !alias.scope !1924, !noalias !1917
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN9pb_sample6personESaIvEJEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %2), !noalias !1917, !inline_history !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1921
  %i.b = load <2 x ptr>, ptr %3, align 16, !tbaa !163, !noalias !1917
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !163, !alias.scope !1917
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1917
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFSt10shared_ptrIN6iguana6detail4baseEEvEZNS1_13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !163
  br label %_ZNSt14_Function_base13_Base_managerIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN6iguana13register_typeIN9pb_sample6personEEEbvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN9pb_sample6personESaIvEJEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %class.anon.1105, align 1           ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29, !noalias !1929 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !167
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6iguana9base_implIN9pb_sample6personELh8EEE, i64 16), ptr %i.d, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !187
  %i.g = load atomic i8, ptr @_ZGVZN6iguana9base_implIN9pb_sample6personELh8EEC1EvE1r acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana9base_implIN9pb_sample6personELh8EEC1EvE1r) #28, !inline_history !1927
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 17, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.99, i64 45), ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.k = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS3_ZNS8_13register_typeIN9pb_sample6personEEEbvEUlvE_EEES4_INSG_14_Node_iteratorISE_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) @_ZN6iguana6detail8g_pb_mapE, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %.body.i, !inline_history !1928

bb.d:                                             ; preds = %bb.c
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.l = and i8 %.fca.1.extract.i.i.i.i.i, 1
  store i8 %i.l, ptr @_ZZN6iguana9base_implIN9pb_sample6personELh8EEC1EvE1r, align 1, !tbaa !174
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana9base_implIN9pb_sample6personELh8EEC1EvE1r) #28, !inline_history !1927
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana9base_implIN9pb_sample6personELh8EEC1EvE1r) #28, !inline_history !1927
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #30
  resume { ptr, i32 } %i.m

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %i.d, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.p, align 8, !tbaa !93
  store i8 0, ptr %i.o, align 8, !tbaa !94
  store ptr %i.a, ptr %0, align 8, !tbaa !162
  store ptr %i.d, ptr %1, align 8, !tbaa !416
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #28, !inline_history !1930
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9pb_sample6personESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !659  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !94
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9pb_sample6personESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !190    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 72                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !187
  store i64 %i.t, ptr %i.r, align 8, !tbaa !187
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %i.q, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !462
  store i32 %i.w, ptr %i.u, align 8, !tbaa !462
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !92
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !95  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !93 ; 8 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ae = icmp slt i64 %i.ac, 0
  br i1 %i.ae, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.af = add nuw i64 %i.ac, 1                    ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !169

.noexc6.i.i.i:                                    ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !95
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc27, %_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ai = phi ptr [ %i.ah, %.noexc27 ], [ %i.z, %_ZNKSt6vectorIN9pb_sample6personESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = load i8, ptr %i.aa, align 1, !tbaa !94
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !94
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  store i8 0, ptr %i.al, align 1, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.g ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.g ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !187, !alias.scope !1938, !noalias !1937
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !187, !alias.scope !1937, !noalias !1938
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %.012.i.i.i, align 8, !tbaa !126, !alias.scope !1937, !noalias !1938
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !462, !alias.scope !1938, !noalias !1937
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !462, !alias.scope !1937, !noalias !1938
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !92, !alias.scope !1937, !noalias !1938
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !95, !alias.scope !1938, !noalias !1937 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !93, !alias.scope !1938, !noalias !1937 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !1939
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !95, !alias.scope !1937, !noalias !1938
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !94, !alias.scope !1938, !noalias !1937
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !94, !alias.scope !1937, !noalias !1938
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !1938, !noalias !1937
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.bf = phi i64 [ %i.bb, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !93, !alias.scope !1937, !noalias !1938
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !95, !alias.scope !1938, !noalias !1937
  store i64 0, ptr %i.bg, align 8, !tbaa !93, !alias.scope !1938, !noalias !1937
  store i8 0, ptr %i.ay, align 8, !tbaa !94, !alias.scope !1938, !noalias !1937
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !1939
  %i.bk = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !126, !alias.scope !1938, !noalias !1937
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.0911.i.i.i) #28, !inline_history !64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !65

_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.bo, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.cq, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.bp, %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  %.0911.i.i.i31 = phi ptr [ %i.cp, %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorIN9pb_sample6personESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !187, !alias.scope !1941, !noalias !1940
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !187, !alias.scope !1940, !noalias !1941
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %.012.i.i.i30, align 8, !tbaa !126, !alias.scope !1940, !noalias !1941
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !462, !alias.scope !1941, !noalias !1940
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !462, !alias.scope !1940, !noalias !1941
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40 ; 3 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !92, !alias.scope !1940, !noalias !1941
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !95, !alias.scope !1941, !noalias !1940 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40 ; 5 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !93, !alias.scope !1941, !noalias !1940 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 16
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.cf, i1 false), !alias.scope !1942
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !95, !alias.scope !1940, !noalias !1941
  %i.cg = load i64, ptr %i.ca, align 8, !tbaa !94, !alias.scope !1941, !noalias !1940
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !94, !alias.scope !1940, !noalias !1941
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !93, !alias.scope !1941, !noalias !1940
  br label %_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aIN9pb_sample6personES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.i
  %i.ch = phi i64 [ %i.cd, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !93, !alias.scope !1940, !noalias !1941
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !95, !alias.scope !1941, !noalias !1940
  store i64 0, ptr %i.ci, align 8, !tbaa !93, !alias.scope !1941, !noalias !1940
  store i8 0, ptr %i.ca, align 8, !tbaa !94, !alias.scope !1941, !noalias !1940
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !alias.scope !1942
  %i.cm = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !126, !alias.scope !1941, !noalias !1940
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
end_hunk_4
