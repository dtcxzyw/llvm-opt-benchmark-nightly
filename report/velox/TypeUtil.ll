inline.NumInlined: 438
inline.NumDeleted: 241
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !33

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #17 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !32
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #15
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !38
  store i64 %.0, ptr %i.d, align 8, !tbaa !32
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !57
  store i8 0, ptr %i.c, align 1, !tbaa !32
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  store i8 %i.t, ptr %i.r, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !57
  %i.v = load ptr, ptr %0, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.p, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.010.018 = phi ptr [ %i.o, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !56
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !38 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !33

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #16
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #17
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.j, ptr %.019, align 8, !tbaa !38
  store i64 %i.e, ptr %i.b, align 8, !tbaa !32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9, %.lr.ph
  %i.k = phi ptr [ %i.j, %.noexc9 ], [ %i.b, %.lr.ph ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !32
  store i8 %i.l, ptr %i.k, align 1, !tbaa !32
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.o, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !61

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %.noexc6.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.r = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #14 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #16
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.t

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #18
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEvNSA_IPS5_S7_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 6 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 27 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.k, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 7 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -16                        ; 2 uses
  %i.t = lshr i64 %i.s, 4
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.s, 1392
  br i1 %min.iters.check180, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck165

vector.memcheck165:                               ; preds = %bb.d
  %i.v = add i64 %i.b, -16
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -16                        ; 4 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep166 = getelementptr i8, ptr %i.y, i64 8
  %i.z = add i64 %i.x, %i.c
  %i.aa = add i64 %i.z, 8
  %i.ab = sub i64 %i.aa, %i.b
  %scevgep167 = getelementptr i8, ptr %i.i, i64 %i.ab
  %scevgep168 = getelementptr i8, ptr %i.i, i64 8
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep169 = getelementptr i8, ptr %i.ac, i64 16
  %i.ad = add i64 %i.c, 8
  %i.ae = sub i64 %i.ad, %i.b
  %scevgep170 = getelementptr i8, ptr %i.i, i64 %i.ae
  %i.af = add i64 %i.x, %i.c
  %i.ag = add i64 %i.af, 16
  %i.ah = sub i64 %i.ag, %i.b
  %scevgep171 = getelementptr i8, ptr %i.i, i64 %i.ah
  %bound0172 = icmp ult ptr %i.i, %scevgep167
  %bound1173 = icmp ult ptr %i.q, %scevgep166
  %found.conflict174 = and i1 %bound0172, %bound1173
  %bound0175 = icmp ult ptr %scevgep168, %scevgep171
  %bound1176 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %found.conflict174, %found.conflict177
  br i1 %conflict.rdx178, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck165
  %n.vec183 = and i64 %i.u, 2305843009213693948   ; 3 uses
  %i.ai = shl i64 %n.vec183, 4                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ai
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next195, %vector.body184 ] ; 2 uses
  %i.al = shl i64 %index185, 4                    ; 5 uses
  %next.gep186 = getelementptr i8, ptr %i.i, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.i, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.i, i64 %i.al
  %next.gep190 = getelementptr i8, ptr %i.q, i64 %i.al ; 2 uses
  %wide.vec191 = load <8 x ptr>, ptr %next.gep190, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep186, i64 8
  %i.aq = getelementptr i8, ptr %i.am, i64 24
  %i.ar = getelementptr i8, ptr %i.an, i64 40
  %i.as = getelementptr i8, ptr %i.ao, i64 56
  store ptr null, ptr %i.ap, align 8, !tbaa !25, !alias.scope !62, !noalias !65
  store ptr null, ptr %i.aq, align 8, !tbaa !25, !alias.scope !62, !noalias !65
  store ptr null, ptr %i.ar, align 8, !tbaa !25, !alias.scope !62, !noalias !65
  store ptr null, ptr %i.as, align 8, !tbaa !25, !alias.scope !62, !noalias !65
  store <8 x ptr> %wide.vec191, ptr %next.gep186, align 8, !tbaa !55
  store <8 x ptr> splat (ptr null), ptr %next.gep190, align 8, !tbaa !55
  %index.next195 = add nuw i64 %index185, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next195, %n.vec183
  br i1 %i.at, label %middle.block196, label %vector.body184, !llvm.loop !67

middle.block196:                                  ; preds = %vector.body184
  %cmp.n197 = icmp eq i64 %i.u, %n.vec183
  br i1 %cmp.n197, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck165, %bb.d, %middle.block196
  %.08.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck165 ], [ %i.i, %bb.d ], [ %i.aj, %middle.block196 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck165 ], [ %i.q, %bb.d ], [ %i.ak, %middle.block196 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store ptr null, ptr %i.au, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.aw = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !55
  store ptr null, ptr %i.av, align 8, !tbaa !25
  store <2 x ptr> %i.aw, ptr %.08.i.i.i.i.i, align 8, !tbaa !55
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.az = icmp eq ptr %i.ax, %i.i
  br i1 %i.az, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !70

_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block196
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !24
  %i.bb = ptrtoint ptr %i.q to i64
  %i.bc = sub i64 %i.bb, %i.m
  %i.bd = ashr exact i64 %i.bc, 4                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i ], [ %i.bd, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i ], [ %i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bf, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i ], [ %i.q, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bi = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !25 ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !55
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.bk, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !28
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #14, !inline_history !71
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #14, !inline_history !71
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.h ], [ %i.bx, %bb.i ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.j, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i, !prof !33

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #14
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i.i51
  %i.bz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ca = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit, !llvm.loop !72

_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.cb = icmp sgt i64 %i.e, 0
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.de, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i ], [ %i.e, %_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.dd, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i ], [ %1, %_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.dc, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i ], [ %2, %_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.cc = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !45
  store ptr %i.cc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEvNSA_IPS5_S7_EET_SG_St20forward_iterator_tag:bb.a
  %scevgep154 = getelementptr i8, ptr %1, i64 8
  %i.en = getelementptr i8, ptr %1, i64 %i.ed
  %scevgep155 = getelementptr i8, ptr %i.en, i64 16
  %bound0 = icmp ult ptr %i.dv, %scevgep151
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0156 = icmp ult ptr %scevgep152, %scevgep155
  %bound1157 = icmp ult ptr %scevgep154, %scevgep153
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx = or i1 %found.conflict, %found.conflict158
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i56.preheader272, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ea, 2305843009213693948     ; 3 uses
  %i.eo = shl i64 %n.vec, 4                       ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dv, i64 %i.eo
  %i.eq = getelementptr i8, ptr %1, i64 %i.eo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.er = shl i64 %index, 4                       ; 5 uses
  %next.gep = getelementptr i8, ptr %i.dv, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %i.dv, i64 %i.er
  %i.et = getelementptr i8, ptr %i.dv, i64 %i.er
  %i.eu = getelementptr i8, ptr %i.dv, i64 %i.er
  %next.gep162 = getelementptr i8, ptr %1, i64 %i.er ; 2 uses
  %wide.vec = load <8 x ptr>, ptr %next.gep162, align 8, !tbaa !55
  %i.ev = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ew = getelementptr i8, ptr %i.es, i64 24
  %i.ex = getelementptr i8, ptr %i.et, i64 40
  %i.ey = getelementptr i8, ptr %i.eu, i64 56
  store ptr null, ptr %i.ev, align 8, !tbaa !25, !alias.scope !76, !noalias !79
  store ptr null, ptr %i.ew, align 8, !tbaa !25, !alias.scope !76, !noalias !79
  store ptr null, ptr %i.ex, align 8, !tbaa !25, !alias.scope !76, !noalias !79
  store ptr null, ptr %i.ey, align 8, !tbaa !25, !alias.scope !76, !noalias !79
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !55
  store <8 x ptr> splat (ptr null), ptr %next.gep162, align 8, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60, label %.lr.ph.i.i.i.i.i56.preheader272

.lr.ph.i.i.i.i.i56.preheader272:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i56.preheader, %middle.block
  %.08.i.i.i.i.i57.ph = phi ptr [ %i.dv, %vector.memcheck ], [ %i.dv, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ep, %middle.block ]
  %.sroa.04.07.i.i.i.i.i58.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.eq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.preheader272, %.lr.ph.i.i.i.i.i56
  %.08.i.i.i.i.i57 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i56 ], [ %.08.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i56.preheader272 ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i58 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i56 ], [ %.sroa.04.07.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i56.preheader272 ] ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i57, i64 8
  store ptr null, ptr %i.fa, align 8, !tbaa !25
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i58, i64 8
  %i.fc = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i58, align 8, !tbaa !55
  store ptr null, ptr %i.fb, align 8, !tbaa !25
  store <2 x ptr> %i.fc, ptr %.08.i.i.i.i.i57, align 8, !tbaa !55
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i58, align 8, !tbaa !45
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i58, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i57, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.i
  br i1 %i.ff, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60, label %.lr.ph.i.i.i.i.i56, !llvm.loop !82

_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60: ; preds = %.lr.ph.i.i.i.i.i56, %middle.block, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.d
  store ptr %i.fg, ptr %i.h, align 8, !tbaa !24
  %i.fh = ashr exact i64 %i.n, 4                  ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i62:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75
  %.012.i.i.i.i.i63 = phi i64 [ %i.gl, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75 ], [ %i.fh, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60 ] ; 2 uses
  %.0811.i.i.i.i.i64 = phi ptr [ %i.gk, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75 ], [ %1, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60 ] ; 3 uses
  %.0910.i.i.i.i.i65 = phi ptr [ %i.gj, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75 ], [ %2, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60 ] ; 3 uses
  %i.fj = load ptr, ptr %.0910.i.i.i.i.i65, align 8, !tbaa !45
  store ptr %i.fj, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !45
  %i.fk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 8 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i65, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !25 ; 4 uses
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !25 ; 3 uses
  %.not.i.i.i.i.i.i.i.i66 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i66, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i62
  %.not7.i.i.i.i.i.i.i.i67 = icmp eq ptr %i.fm, null
  br i1 %.not7.i.i.i.i.i.i.i.i67, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i69, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i.i.i68 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i68, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i69

bb.aa:                                            ; preds = %bb.y
  %i.fs = atomicrmw volatile add ptr %i.fo, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i76 = load ptr, ptr %i.fk, align 8, !tbaa !25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i69

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i69: ; preds = %bb.aa, %bb.z, %bb.x
  %i.ft = phi ptr [ %i.fn, %bb.x ], [ %i.fn, %bb.z ], [ %.pr.pre.i.i.i.i.i.i.i.i76, %bb.aa ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i70 = icmp eq ptr %i.ft, null
  br i1 %.not8.i.i.i.i.i.i.i.i70, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i74, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i69
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4294967297
  %i.fx = trunc i64 %i.fv to i32                  ; 2 uses
  br i1 %i.fw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.fu, align 8, !tbaa !26
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 0, ptr %i.fy, align 4, !tbaa !28
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !29
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  tail call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #14, !inline_history !73
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #14, !inline_history !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i74

bb.ad:                                            ; preds = %bb.ab
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i9.i.i.i.i.i.i.i.i71 = icmp eq i8 %i.gf, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i71, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = add nsw i32 %i.fx, -1
  store i32 %i.gg, ptr %i.fu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i72

bb.af:                                            ; preds = %bb.ad
  %i.gh = atomicrmw volatile add ptr %i.fu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i72: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i.i.i73 = phi i32 [ %i.fx, %bb.ae ], [ %i.gh, %bb.af ]
  %i.gi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i73, 1
  br i1 %i.gi, label %bb.ag, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i74, !prof !33

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i72
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #14
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i74

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i74: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i72, %bb.ac, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i69
  store ptr %i.fm, ptr %i.fk, align 8, !tbaa !25
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i74, %.lr.ph.i.i.i.i.i62
  %i.gj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i65, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 16
  %i.gl = add nsw i64 %.012.i.i.i.i.i63, -1
  %i.gm = icmp sgt i64 %.012.i.i.i.i.i63, 1
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit, !llvm.loop !74

bb.ah:                                            ; preds = %bb.b
  %i.gn = load ptr, ptr %0, align 8, !tbaa !23    ; 14 uses
  %i.go = ptrtoint ptr %i.gn to i64               ; 4 uses
  %i.gp = sub i64 %i.k, %i.go
  %i.gq = ashr exact i64 %i.gp, 4                 ; 4 uses
  %i.gr = sub nsw i64 576460752303423487, %i.gq
  %i.gs = icmp ult i64 %i.gr, %i.e
  br i1 %i.gs, label %bb.ai, label %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.ah
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.gq, i64 %i.e)
  %i.gt = add nsw i64 %.sroa.speculated.i, %i.gq  ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gq
  %i.gv = tail call i64 @llvm.umin.i64(i64 %i.gt, i64 576460752303423487)
  %i.gw = select i1 %i.gu, i64 576460752303423487, i64 %i.gv ; 3 uses
  %.not.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_M_allocateEm.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.gx = shl nuw nsw i64 %i.gw, 4
  %i.gy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #17
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.aj
  %i.gz = phi ptr [ %i.gy, %bb.aj ], [ null, %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 11 uses
  %i.ha = icmp eq ptr %i.gn, %1
  br i1 %i.ha, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_M_allocateEm.exit
  %i.hb = sub i64 %4, %i.go
  %i.hc = add i64 %i.hb, -16                      ; 2 uses
  %i.hd = lshr i64 %i.hc, 4
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check215 = icmp ult i64 %i.hc, 304
  br i1 %min.iters.check215, label %.lr.ph.i.i.i.i.i78.preheader269, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader
  %i.hf = add i64 %4, -16
  %i.hg = sub i64 %i.hf, %i.go
  %i.hh = and i64 %i.hg, -16                      ; 2 uses
  %i.hi = or disjoint i64 %i.hh, 8                ; 2 uses
  %scevgep201 = getelementptr i8, ptr %i.gz, i64 %i.hi
  %scevgep202 = getelementptr i8, ptr %i.gn, i64 %i.hi
  %scevgep203 = getelementptr i8, ptr %i.gn, i64 8
  %i.hj = add i64 %i.hh, 16                       ; 2 uses
  %scevgep204 = getelementptr i8, ptr %i.gn, i64 %i.hj
  %scevgep205 = getelementptr i8, ptr %i.gz, i64 8
  %scevgep206 = getelementptr i8, ptr %i.gz, i64 %i.hj
  %bound0207 = icmp ult ptr %i.gz, %scevgep202
  %bound1208 = icmp ult ptr %i.gn, %scevgep201
  %found.conflict209 = and i1 %bound0207, %bound1208
  %bound0210 = icmp ult ptr %scevgep203, %scevgep206
  %bound1211 = icmp ult ptr %scevgep205, %scevgep204
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %found.conflict209, %found.conflict212
  br i1 %conflict.rdx213, label %.lr.ph.i.i.i.i.i78.preheader269, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck200
  %n.vec218 = and i64 %i.he, 2305843009213693948  ; 3 uses
  %i.hk = shl i64 %n.vec218, 4                    ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gz, i64 %i.hk  ; 2 uses
  %i.hm = getelementptr i8, ptr %i.gn, i64 %i.hk
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph216
  %index220 = phi i64 [ 0, %vector.ph216 ], [ %index.next227, %vector.body219 ] ; 2 uses
  %i.hn = shl i64 %index220, 4                    ; 2 uses
  %next.gep221 = getelementptr i8, ptr %i.gz, i64 %i.hn
  %next.gep222 = getelementptr i8, ptr %i.gn, i64 %i.hn ; 2 uses
  %wide.vec223 = load <8 x ptr>, ptr %next.gep222, align 8, !tbaa !55
  store <8 x ptr> %wide.vec223, ptr %next.gep221, align 8, !tbaa !55
  store <8 x ptr> splat (ptr null), ptr %next.gep222, align 8, !tbaa !55
  %index.next227 = add nuw i64 %index220, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next227, %n.vec218
  br i1 %i.ho, label %middle.block228, label %vector.body219, !llvm.loop !83

middle.block228:                                  ; preds = %vector.body219
  %cmp.n229 = icmp eq i64 %i.he, %n.vec218
  br i1 %cmp.n229, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i78.preheader269

.lr.ph.i.i.i.i.i78.preheader269:                  ; preds = %vector.memcheck200, %.lr.ph.i.i.i.i.i78.preheader, %middle.block228
  %.08.i.i.i.i.i79.ph = phi ptr [ %i.gz, %vector.memcheck200 ], [ %i.gz, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.hl, %middle.block228 ]
  %.sroa.04.07.i.i.i.i.i80.ph = phi ptr [ %i.gn, %vector.memcheck200 ], [ %i.gn, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.hm, %middle.block228 ]
  br label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader269, %.lr.ph.i.i.i.i.i78
  %.08.i.i.i.i.i79 = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i78 ], [ %.08.i.i.i.i.i79.ph, %.lr.ph.i.i.i.i.i78.preheader269 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i80 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i78 ], [ %.sroa.04.07.i.i.i.i.i80.ph, %.lr.ph.i.i.i.i.i78.preheader269 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i80, i64 8
  %i.hq = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i80, align 8, !tbaa !55
  store ptr null, ptr %i.hp, align 8, !tbaa !25
  store <2 x ptr> %i.hq, ptr %.08.i.i.i.i.i79, align 8, !tbaa !55
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i80, align 8, !tbaa !45
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i80, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i79, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %1
  br i1 %i.ht, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i78, !llvm.loop !84

_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i78, %middle.block228, %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.gz, %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_M_allocateEm.exit ], [ %i.hl, %middle.block228 ], [ %i.hs, %.lr.ph.i.i.i.i.i78 ] ; 4 uses
  %.0.lcssa.i.i.i.i.i81233 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i81 to i64
  br label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87
  %.08.i.i.i.i83 = phi ptr [ %i.id, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87 ], [ %.0.lcssa.i.i.i.i.i81, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.sroa.04.07.i.i.i.i84 = phi ptr [ %i.ic, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i84, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !25 ; 2 uses
  %i.hw = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i84, align 8, !tbaa !55
  store <2 x ptr> %i.hw, ptr %.08.i.i.i.i83, align 8, !tbaa !55
  %.not.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i.i85, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i82
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 3 uses
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i.i.i86 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i86, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hz = load i32, ptr %i.hx, align 4, !tbaa !3
  %i.ia = add nsw i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hx, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87

bb.am:                                            ; preds = %bb.ak
  %i.ib = atomicrmw volatile add ptr %i.hx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87: ; preds = %bb.am, %bb.al, %.lr.ph.i.i.i.i82
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i84, i64 16 ; 2 uses
  %i.id = getelementptr i8, ptr %.08.i.i.i.i83, i64 16 ; 11 uses
  %i.ie = icmp eq ptr %i.ic, %3
  br i1 %i.ie, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit89, label %.lr.ph.i.i.i.i82, !llvm.loop !75

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit89: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i87
  %i.if = icmp eq ptr %1, %i.i
  br i1 %i.if, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit94, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit89
  %i.ig = sub i64 %i.k, %4
  %i.ih = add i64 %i.ig, -16                      ; 2 uses
  %i.ii = lshr i64 %i.ih, 4
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check247 = icmp ult i64 %i.ih, 1264
  br i1 %min.iters.check247, label %.lr.ph.i.i.i.i.i90.preheader267, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %i.ik = add i64 %i.k, -16
  %i.il = sub i64 %i.ik, %4
  %i.im = and i64 %i.il, -16                      ; 4 uses
  %i.in = ptrtoaddr ptr %i.id to i64
  %reass.sub = sub i64 %i.in, %.0.lcssa.i.i.i.i.i81233
  %i.io = add i64 %reass.sub, -16                 ; 2 uses
  %i.ip = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i81, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 %i.im
  %scevgep234 = getelementptr i8, ptr %i.iq, i64 24
  %i.ir = getelementptr i8, ptr %1, i64 %i.im
  %scevgep235 = getelementptr i8, ptr %i.ir, i64 8
  %i.is = getelementptr i8, ptr %.08.i.i.i.i83, i64 24
  %i.it = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i81, i64 %i.io
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.im
  %scevgep236 = getelementptr i8, ptr %i.iu, i64 32
  %scevgep237 = getelementptr i8, ptr %1, i64 8
  %i.iv = getelementptr i8, ptr %1, i64 %i.im
  %scevgep238 = getelementptr i8, ptr %i.iv, i64 16
  %bound0239 = icmp ult ptr %i.id, %scevgep235
  %bound1240 = icmp ult ptr %1, %scevgep234
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0242 = icmp ult ptr %i.is, %scevgep238
  %bound1243 = icmp ult ptr %scevgep237, %scevgep236
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %found.conflict241, %found.conflict244
  br i1 %conflict.rdx245, label %.lr.ph.i.i.i.i.i90.preheader267, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck232
  %n.vec250 = and i64 %i.ij, 2305843009213693948  ; 3 uses
  %i.iw = shl i64 %n.vec250, 4                    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.id, i64 %i.iw  ; 2 uses
  %i.iy = getelementptr i8, ptr %1, i64 %i.iw
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph248
  %index252 = phi i64 [ 0, %vector.ph248 ], [ %index.next262, %vector.body251 ] ; 2 uses
  %i.iz = shl i64 %index252, 4                    ; 5 uses
  %next.gep253 = getelementptr i8, ptr %i.id, i64 %i.iz ; 2 uses
  %i.ja = getelementptr i8, ptr %i.id, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.id, i64 %i.iz
  %i.jc = getelementptr i8, ptr %i.id, i64 %i.iz
  %next.gep257 = getelementptr i8, ptr %1, i64 %i.iz ; 2 uses
  %wide.vec258 = load <8 x ptr>, ptr %next.gep257, align 8, !tbaa !55
  %i.jd = getelementptr inbounds nuw i8, ptr %next.gep253, i64 8
  %i.je = getelementptr i8, ptr %i.ja, i64 24
  %i.jf = getelementptr i8, ptr %i.jb, i64 40
  %i.jg = getelementptr i8, ptr %i.jc, i64 56
  store ptr null, ptr %i.jd, align 8, !tbaa !25, !alias.scope !85, !noalias !88
  store ptr null, ptr %i.je, align 8, !tbaa !25, !alias.scope !85, !noalias !88
  store ptr null, ptr %i.jf, align 8, !tbaa !25, !alias.scope !85, !noalias !88
  store ptr null, ptr %i.jg, align 8, !tbaa !25, !alias.scope !85, !noalias !88
  store <8 x ptr> %wide.vec258, ptr %next.gep253, align 8, !tbaa !55
  store <8 x ptr> splat (ptr null), ptr %next.gep257, align 8, !tbaa !55
  %index.next262 = add nuw i64 %index252, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next262, %n.vec250
  br i1 %i.jh, label %middle.block263, label %vector.body251, !llvm.loop !90

middle.block263:                                  ; preds = %vector.body251
  %cmp.n264 = icmp eq i64 %i.ij, %n.vec250
  br i1 %cmp.n264, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit94, label %.lr.ph.i.i.i.i.i90.preheader267

.lr.ph.i.i.i.i.i90.preheader267:                  ; preds = %vector.memcheck232, %.lr.ph.i.i.i.i.i90.preheader, %middle.block263
  %.08.i.i.i.i.i91.ph = phi ptr [ %i.id, %vector.memcheck232 ], [ %i.id, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.ix, %middle.block263 ]
  %.sroa.04.07.i.i.i.i.i92.ph = phi ptr [ %1, %vector.memcheck232 ], [ %1, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.iy, %middle.block263 ]
  br label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader267, %.lr.ph.i.i.i.i.i90
  %.08.i.i.i.i.i91 = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i90 ], [ %.08.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader267 ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i92 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i90 ], [ %.sroa.04.07.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i90.preheader267 ] ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i91, i64 8
  store ptr null, ptr %i.ji, align 8, !tbaa !25
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i92, i64 8
  %i.jk = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i92, align 8, !tbaa !55
  store ptr null, ptr %i.jj, align 8, !tbaa !25
  store <2 x ptr> %i.jk, ptr %.08.i.i.i.i.i91, align 8, !tbaa !55
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i92, align 8, !tbaa !45
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i92, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i91, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.i
  br i1 %i.jn, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit94, label %.lr.ph.i.i.i.i.i90, !llvm.loop !91

_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit94: ; preds = %.lr.ph.i.i.i.i.i90, %middle.block263, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit89
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.id, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit89 ], [ %i.ix, %middle.block263 ], [ %i.jm, %.lr.ph.i.i.i.i.i90 ]
  %.not4.i.i = icmp eq ptr %i.gn, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit94, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.kf, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i ], [ %i.gn, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit94 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.jq, align 8, !tbaa !26
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !28
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !29
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  tail call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #14, !inline_history !44
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !29
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  tail call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #14, !inline_history !44
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jt, %bb.aq ], [ %i.kd, %bb.ar ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ke, label %bb.as, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i, !prof !33

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #14
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ao, %.lr.ph.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kf, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !34

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit94
  %.not.i95 = icmp eq ptr %i.gn, null
  br i1 %.not.i95, label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEEEvT_S7_.exit
  %i.kg = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.kh, %i.go
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.ki) #15
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEEEvT_S7_.exit, %bb.at
  store ptr %i.gz, ptr %0, align 8, !tbaa !23
  store ptr %.0.lcssa.i.i.i.i.i93, ptr %i.h, align 8, !tbaa !24
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.gw
  store ptr %i.kj, ptr %i.f, align 8, !tbaa !16
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIKN8facebook5velox4TypeEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i75, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit60, %_ZSt13move_backwardIPSt10shared_ptrIKN8facebook5velox4TypeEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !29
end_hunk_1
