inline.NumInlined: 579
inline.NumDeleted: 279
begin_hunk_0_@_ZN6Assimp3FBX14AnimationLayerC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8DocumentE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %4, ptr %i.c, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.e, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 27, ptr %i.a, align 8
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %6, align 8
  %i.g = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.f, ptr noundef nonnull align 1 dereferenceable(27) @.str.16, i64 27, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = load ptr, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN6Assimp3FBX4Util16GetPropertyTableERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ElementERKNS0_5ScopeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load <2 x ptr>, ptr %5, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.l, align 8              ; 8 uses
  store <2 x ptr> %i.m, ptr %i.b, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !8
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !8
  br label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, !prof !9

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  br label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit

_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.ad = load ptr, ptr %i.k, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !10
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !10
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !9

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.at = load ptr, ptr %6, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.e
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %.noexc.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.q:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %6, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.e
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.q
  %i.bc = load i64, ptr %i.e, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.az, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.ax, %bb.o ]
  call void @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX6ObjectE, i64 16), ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bi = load i64, ptr %i.bg, align 8
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #19, !inline_history !6
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp3FBX14AnimationLayer5NodesEPKPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.83") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector.76", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8
  call void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.76") align 8 %4, ptr noundef nonnull align 8 dereferenceable(368) %i.d, i64 noundef %i.f, ptr noundef nonnull @.str.17)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = load ptr, ptr %4, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not149 = icmp eq ptr %i.h, %i.i
  br i1 %.not149, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_M_allocateEm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %0, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 2 uses
  store ptr %i.q, ptr %i.n, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE7reserveEm.exit: ; preds = %.noexc48, %bb.c
  %.promoted90 = phi ptr [ %i.q, %.noexc48 ], [ null, %bb.c ]
  %.promoted = phi ptr [ %i.o, %.noexc48 ], [ null, %bb.c ] ; 2 uses
  %.not7599 = icmp eq ptr %i.i, %i.h
  br i1 %.not7599, label %._crit_edge, label %.lr.ph101

.lr.ph101:                                        ; preds = %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE7reserveEm.exit
  %.not41 = icmp eq ptr %2, null
  %.not103 = icmp eq i64 %3, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %4, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE7reserveEm.exit
  %.lcssa = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE7reserveEm.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.lcssa to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_M_allocateEm.exit.i, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.f:                                             ; preds = %.lr.ph101, %.critedge
  %i.ad = phi ptr [ %.promoted, %.lr.ph101 ], [ %i.ck, %.critedge ] ; 9 uses
  %.sroa.072.0100 = phi ptr [ %i.i, %.lr.ph101 ], [ %i.cn, %.critedge ] ; 2 uses
  %i.ae = phi ptr [ %.promoted90, %.lr.ph101 ], [ %i.cm, %.critedge ] ; 7 uses
  %i.af = phi ptr [ %.promoted, %.lr.ph101 ], [ %i.cl, %.critedge ] ; 10 uses
  %i.ag = load ptr, ptr %.sroa.072.0100, align 8  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aj = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not36 = icmp eq ptr %i.aj, null
  br i1 %.not36, label %.noexc.i, label %bb.m

.noexc.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %i.v, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 82, ptr %i.b, align 8
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc49 unwind label %bb.k   ; 3 uses

.noexc49:                                         ; preds = %.noexc.i
  store ptr %i.ak, ptr %5, align 8
  %i.al = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.al, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(82) %i.ak, ptr noundef nonnull align 1 dereferenceable(82) @.str.18, i64 82, i1 false)
  store i64 %i.al, ptr %i.w, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.am, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.an = load ptr, ptr %i.u, align 8, !nonnull !11, !align !12
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.an)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %.noexc49
  %i.ao = load ptr, ptr %5, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.v
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.v, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.critedge

bb.j:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.l:                                             ; preds = %.noexc49
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %5, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.v
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.l
  %i.ax = load i64, ptr %i.v, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.k
  %.pn = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.az = call ptr @__dynamic_cast(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX18AnimationCurveNodeE, i64 0) #18 ; 4 uses
  %.not38 = icmp eq ptr %i.az, null
  br i1 %.not38, label %.noexc.i54, label %bb.q

.noexc.i54:                                       ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.s, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 68, ptr %i.a, align 8
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.o   ; 3 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.ba, ptr %6, align 8
  %i.bb = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.bb, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.ba, ptr noundef nonnull align 1 dereferenceable(68) @.str.19, i64 68, i1 false)
  store i64 %i.bb, ptr %i.t, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  store i8 0, ptr %i.bc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.bd = load ptr, ptr %i.u, align 8, !nonnull !11, !align !12
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.bd)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.noexc55
  %i.be = load ptr, ptr %6, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.s
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.n
  %i.bg = load i64, ptr %i.s, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.critedge

bb.o:                                             ; preds = %.noexc.i54
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.p:                                             ; preds = %.noexc55
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %6, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.s
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.p
  %i.bm = load i64, ptr %i.s, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.o
  %.pn39 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.bj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.y

bb.q:                                             ; preds = %bb.m
  br i1 %.not41, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bp = load ptr, ptr %i.bo, align 8
  br i1 %.not103, label %.critedge, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.bq = add nuw i64 %.082, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !14

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.082 = phi i64 [ %i.bq, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.082
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.bs) #21
  %.not42 = icmp eq i32 %i.bt, 0
  br i1 %.not42, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %.lr.ph, %bb.q
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  store ptr %i.az, ptr %i.ad, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.r, align 8
  br label %.critedge

bb.u:                                             ; preds = %.loopexit
  %i.bv = ptrtoint ptr %i.ad to i64
  %i.bw = ptrtoint ptr %i.af to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.v, label %_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i63 = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i63)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #23
          to label %.noexc65 unwind label %.loopexit76 ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  store ptr %i.az, ptr %i.cg, align 8
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.w, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.w:                                             ; preds = %.noexc65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.af, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.w, %.noexc65
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bx) #19
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.cf, ptr %0, align 8
  store ptr %i.ci, ptr %i.r, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.cj, ptr %i.n, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.t, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %i.ck = phi ptr [ %i.ad, %bb.f ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bu, %bb.t ], [ %i.ci, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %bb.r ], [ %i.ad, %bb.s ]
  %i.cl = phi ptr [ %i.af, %bb.f ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.af, %bb.t ], [ %i.cf, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %bb.r ], [ %i.af, %bb.s ]
  %i.cm = phi ptr [ %i.ae, %bb.f ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.ae, %bb.t ], [ %i.cj, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %bb.r ], [ %i.ae, %bb.s ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.072.0100, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.cn, %i.h
  br i1 %.not75, label %._crit_edge.loopexit, label %bb.f

.loopexit76:                                      ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit76, %.loopexit.split-lp, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.e
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.as, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %lpad.loopexit, %.loopexit76 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.co = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i66, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre90 = load ptr, ptr %0, align 8             ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %.pre90, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load ptr, ptr %7, align 8
  %i.cu = ptrtoint ptr %8 to i64
  %i.cv = ptrtoint ptr %.pre90 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %.pre90, i64 noundef %i.cw) #19
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX14AnimationStackC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8DocumentE(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(368) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::vector.76", align 8    ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @_ZN6Assimp3FBX6ObjectC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX14AnimationStackE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.f = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.g, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 27, ptr %i.c, align 8
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %6, align 8
  %i.i = load i64, ptr %i.c, align 8              ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.h, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, i64 27, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  invoke void @_ZN6Assimp3FBX4Util16GetPropertyTableERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ElementERKNS0_5ScopeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load <2 x ptr>, ptr %5, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.n, align 8              ; 8 uses
  store <2 x ptr> %i.o, ptr %i.d, align 8
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !8
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !8
  br label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.h, label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, !prof !9

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18
  br label %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit

_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.af = load ptr, ptr %i.m, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !10
  %i.ao = load ptr, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !10
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.l ], [ %i.at, %bb.m ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.n, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !9

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN6Assimp3FBX13PropertyTableEEaSEOS4_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.av = load ptr, ptr %6, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.g
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load i64, ptr %i.g, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load i64, ptr %i.az, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.76") align 8 %7, ptr noundef nonnull align 8 dereferenceable(368) %4, i64 noundef %i.ba, ptr noundef nonnull @.str.21)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = load ptr, ptr %7, align 8               ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp ugt i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #20
          to label %.noexc45 unwind label %bb.y

.noexc45:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bg
  br i1 %i.bo, label %_ZNSt12_Vector_baseIPKN6Assimp3FBX14AnimationLayerESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN6Assimp3FBX14AnimationLayerESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN6Assimp3FBX14AnimationLayerESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.q
end_hunk_0
