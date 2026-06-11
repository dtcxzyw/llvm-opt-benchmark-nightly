inline.NumInlined: 1925
inline.NumDeleted: 999
begin_hunk_0_@_ZN2v88internal6torque12CfgAssembler10DebugBreakEv:bb.a
  br label %_ZN2v88internal6torque16AbortInstructionD2Ev.exit

_ZN2v88internal6torque16AbortInstructionD2Ev.exit: ; preds = %_ZN2v88internal6torque11InstructionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  %i.ab = load ptr, ptr %3, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZN2v88internal6torque16AbortInstructionD2Ev.exit
  %i.ad = load i64, ptr %i.a, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal6torque16AbortInstructionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  ret void

bb.d:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit15

bb.e:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i13, label %_ZN2v88internal6torque11InstructionD2Ev.exit15, label %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i14

_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i14: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.ah) #23, !inline_history !19
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit15

_ZN2v88internal6torque11InstructionD2Ev.exit15:   ; preds = %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i14, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.af, %bb.d ], [ %i.ag, %bb.e ], [ %i.ag, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i14 ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal6torque16AbortInstructionE, i64 16), ptr %2, align 8
  %i.al = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.h
  br i1 %i.am, label %_ZN2v88internal6torque16AbortInstructionD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN2v88internal6torque11InstructionD2Ev.exit15
  %i.an = load i64, ptr %i.h, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #24
  br label %_ZN2v88internal6torque16AbortInstructionD2Ev.exit18

_ZN2v88internal6torque16AbortInstructionD2Ev.exit18: ; preds = %_ZN2v88internal6torque11InstructionD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.ap = load ptr, ptr %3, align 8               ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZN2v88internal6torque16AbortInstructionD2Ev.exit18
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZN2v88internal6torque16AbortInstructionD2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque22CountBlockPredecessorsERKNS1_16ControlFlowGraphE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.75") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.50", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp ugt i64 %i.b, 1152921504606846975
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #22 ; 8 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store ptr %i.i, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge40:                                    ; preds = %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit19, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  ret void

bb.b:                                             ; preds = %.lr.ph39, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit19
  %.sroa.028.037 = phi ptr [ %i.p, %.lr.ph39 ], [ %i.at, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit19 ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.028.037, align 8    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit19, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %2, align 8               ; 5 uses
  %.pre41 = load ptr, ptr %i.t, align 8           ; 2 uses
  %i.ab = icmp eq ptr %.pre, %.pre41
  br i1 %i.ab, label %._crit_edge36, label %.lr.ph35

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.024.032 = phi ptr [ %i.ah, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.024.032, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(36) %i.ad, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.024.032, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.z
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.u, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.idx = shl nuw nsw i64 %i.b, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx) #24
  resume { ptr, i32 } %i.aj

._crit_edge36:                                    ; preds = %.lr.ph35, %._crit_edge
  %.not.i.i.i18 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit19, label %bb.f

bb.f:                                             ; preds = %._crit_edge36
  %i.ap = load ptr, ptr %i.u, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.pre to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.as) #24
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit19

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit19: ; preds = %bb.b, %._crit_edge36, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 8 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.r
  br i1 %i.au, label %._crit_edge40, label %bb.b

.lr.ph35:                                         ; preds = %._crit_edge, %.lr.ph35
  %.sroa.020.033 = phi ptr [ %i.bb, %.lr.ph35 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.020.033, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.020.033, i64 8 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %.pre41
  br i1 %i.bc, label %._crit_edge36, label %.lr.ph35
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque12CfgAssembler11OptimizeCfgEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.75", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN2v88internal6torque22CountBlockPredecessorsERKNS1_16ControlFlowGraphE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.75") align 8 %1, ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %1, align 8                ; 5 uses
  %i.i = load i32, ptr @_ZN2v88internal6torque15GotoInstruction5kKindE, align 4
  br label %bb.n

._crit_edge.loopexit:                             ; preds = %.thread
  %.pre87 = load ptr, ptr %i.b, align 8
  %.pre88 = load ptr, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.j = phi ptr [ %.pre88, %._crit_edge.loopexit ], [ %i.e, %bb.a ] ; 6 uses
  %i.k = phi ptr [ %.pre87, %._crit_edge.loopexit ], [ %i.c, %bb.a ] ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = ashr i64 %i.n, 5                         ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge
  %.val21.val.i.i.i.i.i = load ptr, ptr %1, align 8 ; 8 uses
  %i.q = and i64 %i.n, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.k, i64 %i.q ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.058.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.ap, %bb.f ] ; 2 uses
  %.sroa.038.057.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.f ] ; 9 uses
  %i.r = load ptr, ptr %.sroa.038.057.i.i.i.i.i, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 96
  %.val1.i.i.i.i.i.i = load i64, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val21.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 96
  %.val1.i22.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val21.val.i.i.i.i.i, i64 %.val1.i22.i.i.i.i.i
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 96
  %.val1.i23.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val21.val.i.i.i.i.i, i64 %.val1.i23.i.i.i.i.i
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit101", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 96
  %.val1.i24.i.i.i.i.i = load i64, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val21.val.i.i.i.i.i, i64 %.val1.i24.i.i.i.i.i
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit103", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 32
  %i.ap = add nsw i64 %.058.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.058.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.b, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !23

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.f
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre66.i.i.i.i.i = sub i64 %i.l, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %._crit_edge
  %.pre-phi67.i.i.i.i.i = phi i64 [ %.pre66.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.n, %._crit_edge ]
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.k, %._crit_edge ] ; 5 uses
  %i.ar = ashr exact i64 %.pre-phi67.i.i.i.i.i, 3
  %.pre92 = load ptr, ptr %1, align 8             ; 7 uses
  switch i64 %i.ar, label %"_ZN2v88internal6torque16ControlFlowGraph14UnplaceBlockIfIZNS1_12CfgAssembler11OptimizeCfgEvE3$_0EEvOT_.exit" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.as = load ptr, ptr %.sroa.038.0.lcssa.i.i.i.i.i, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 96
  %.val1.i25.i.i.i.i.i = load i64, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.pre92, i64 %.val1.i25.i.i.i.i.i
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.h
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.ax, %bb.h ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ay = load ptr, ptr %.sroa.038.1.i.i.i.i.i, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 96
  %.val1.i26.i.i.i.i.i = load i64, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.pre92, i64 %.val1.i26.i.i.i.i.i
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.j
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.038.2.i.i.i.i.i, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 96
  %.val1.i27.i.i.i.i.i = load i64, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre92, i64 %.val1.i27.i.i.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  %spec.select.i.i.i.i.i = select i1 %i.bi, ptr %.sroa.038.2.i.i.i.i.i, ptr %i.j
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit": ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 8
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit101": ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 16
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit103": ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 24
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i": ; preds = %bb.b, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit101", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit103", %bb.k, %bb.i, %bb.g
  %.val.val.i.i.i.pre89 = phi ptr [ %.pre92, %bb.i ], [ %.pre92, %bb.k ], [ %.pre92, %bb.g ], [ %.val21.val.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit" ], [ %.val21.val.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit103" ], [ %.val21.val.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit101" ], [ %.val21.val.i.i.i.i.i, %bb.b ] ; 2 uses
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i, %bb.k ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %bb.g ], [ %i.bj, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit" ], [ %i.bl, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit103" ], [ %i.bk, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i.loopexit.split.loop.exit101" ], [ %.sroa.038.057.i.i.i.i.i, %bb.b ] ; 4 uses
  %i.bm = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.j
  %.sroa.07.026.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = icmp eq ptr %.sroa.07.026.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond.i.i.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i", %bb.m
  %.sroa.07.028.i.i.i.a = phi ptr [ %.val.val.i.i.i90, %bb.m ], [ %.val.val.i.i.i.pre89, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i" ] ; 2 uses
  %.sroa.013.027.i.i.i.a = phi ptr [ %.sroa.07.0.i.i.i, %bb.m ], [ %.sroa.07.026.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i" ] ; 2 uses
  %.sroa.013.027.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i" ] ; 3 uses
  %i.bo = load ptr, ptr %.sroa.013.027.i.i.i.a, align 8 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 96
  %.val1.i.i.i.i = load i64, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.07.028.i.i.i.a, i64 %.val1.i.i.i.i
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.bo, ptr %.sroa.013.027.i.i.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i, i64 8
  %.val.val.i.i.i.pre = load ptr, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.val.val.i.i.i90 = phi ptr [ %.sroa.07.028.i.i.i.a, %.lr.ph.i.i.i ], [ %.val.val.i.i.i.pre, %bb.l ] ; 2 uses
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %.lr.ph.i.i.i ], [ %i.bt, %bb.l ] ; 2 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i.a, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %.sroa.07.0.i.i.i, %i.j
  br i1 %i.bu, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.loopexit.i", label %.lr.ph.i.i.i, !llvm.loop !24

"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.loopexit.i": ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.i"

"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.i": ; preds = %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.loopexit.i", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i"
  %2 = phi ptr [ %.val.val.i.i.i90, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.loopexit.i" ], [ %.val.val.i.i.i.pre89, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i" ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.loopexit.i" ], [ %i.j, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i" ]
  %.sroa.013.2.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.loopexit.i" ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12CfgAssembler11OptimizeCfgEvE3$_0EEET_SH_SH_T0_.exit.i.i.i" ] ; 2 uses
  %i.bw = icmp eq ptr %.sroa.013.2.i.i.i, %i.bv
  br i1 %i.bw, label %"_ZN2v88internal6torque16ControlFlowGraph14UnplaceBlockIfIZNS1_12CfgAssembler11OptimizeCfgEvE3$_0EEvOT_.exit", label %_ZSt8_DestroyIPPN2v88internal6torque5BlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN2v88internal6torque5BlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.i"
  %i.bx = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.by = ptrtoint ptr %.sroa.013.2.i.i.i to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  store ptr %i.cb, ptr %i.d, align 8
  br label %"_ZN2v88internal6torque16ControlFlowGraph14UnplaceBlockIfIZNS1_12CfgAssembler11OptimizeCfgEvE3$_0EEvOT_.exit"

bb.n:                                             ; preds = %.lr.ph73, %.thread
  %.sroa.059.072 = phi ptr [ %i.c, %.lr.ph73 ], [ %i.eg, %.thread ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.059.072, align 8   ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.cd = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  %i.ce = icmp eq ptr %.sroa.0.0.copyload.i, %i.cc
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 4 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %i.cp = phi ptr [ %i.dx, %bb.r ], [ %i.cm, %.preheader ]
  %i.cq = phi ptr [ %i.dy, %bb.r ], [ %i.cn, %.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -16 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = icmp eq i32 %i.cs, %i.i
  br i1 %i.ct, label %bb.o, label %.thread

bb.o:                                             ; preds = %.lr.ph
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 -8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8            ; 5 uses
  %i.cy = icmp eq ptr %i.cx, %i.cc
  br i1 %i.cy, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i35 = load ptr, ptr %i.g, align 8
  %.sroa.2.0.copyload.i37 = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.cz = trunc nuw i8 %.sroa.2.0.copyload.i37 to i1
  %i.da = icmp eq ptr %.sroa.0.0.copyload.i35, %i.cx
  %or.cond68 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond68, label %.thread, label %.critedge2

.critedge2:                                       ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 96 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8
  %.not = icmp eq i64 %i.de, 1
  br i1 %.not, label %bb.q, label %.thread

bb.q:                                             ; preds = %.critedge2
  store ptr %i.cr, ptr %i.cl, align 8
  %i.df = load ptr, ptr %i.cu, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque11InstructionESaIS3_EE8pop_backEv.exit, label %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i.i.i: ; preds = %bb.q
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.df) #23, !inline_history !25
  %.pre = load ptr, ptr %i.cl, align 8
  %.pre86 = load ptr, ptr %i.ck, align 8
  br label %_ZNSt6vectorIN2v88internal6torque11InstructionESaIS3_EE8pop_backEv.exit

_ZNSt6vectorIN2v88internal6torque11InstructionESaIS3_EE8pop_backEv.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i.i.i
  %i.dj = phi ptr [ %i.cp, %bb.q ], [ %.pre86, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i.i.i ] ; 2 uses
  %i.dk = phi ptr [ %i.cr, %bb.q ], [ %.pre, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = ptrtoint ptr %i.dk to i64
  %i.dq = ptrtoint ptr %i.dj to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.dj, i64 %i.dr
  invoke void @_ZNSt6vectorIN2v88internal6torque11InstructionESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr %i.ds, ptr %i.dm, ptr %i.do)
          to label %bb.r unwind label %.thread63

bb.r:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque11InstructionESaIS3_EE8pop_backEv.exit
  %i.dt = load i64, ptr %i.db, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dt ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = add i64 %i.dv, -1
  store i64 %i.dw, ptr %i.du, align 8
  %i.dx = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.dy = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %.thread, label %.lr.ph

.thread63:                                        ; preds = %_ZNSt6vectorIN2v88internal6torque11InstructionESaIS3_EE8pop_backEv.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.h to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ef) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.ea

.thread:                                          ; preds = %bb.r, %.lr.ph, %bb.o, %.critedge2, %bb.p, %.preheader, %bb.n, %.critedge
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.059.072, i64 8 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.e
  br i1 %i.eh, label %._crit_edge.loopexit, label %bb.n

"_ZN2v88internal6torque16ControlFlowGraph14UnplaceBlockIfIZNS1_12CfgAssembler11OptimizeCfgEvE3$_0EEvOT_.exit": ; preds = %._crit_edge.i.i.i.i.i, %_ZSt8_DestroyIPPN2v88internal6torque5BlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.i"
  %3 = phi ptr [ %2, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal6torque5BlockESt6vectorIS6_SaIS6_EEEEZNS4_12CfgAssembler11OptimizeCfgEvE3$_0ET_SE_SE_T0_.exit.i" ], [ %2, %_ZSt8_DestroyIPPN2v88internal6torque5BlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i ], [ %.pre92, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %"_ZN2v88internal6torque16ControlFlowGraph14UnplaceBlockIfIZNS1_12CfgAssembler11OptimizeCfgEvE3$_0EEvOT_.exit"
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %3 to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.em) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %"_ZN2v88internal6torque16ControlFlowGraph14UnplaceBlockIfIZNS1_12CfgAssembler11OptimizeCfgEvE3$_0EEvOT_.exit", %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque12CfgAssembler23ComputeInputDefinitionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNK2v88internal6torque16ControlFlowGraph14ParameterCountEv.exit.lr.ph:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.v8::internal::torque::Worklist", align 8 ; 24 uses
  %2 = alloca %"class.v8::internal::torque::Stack.13", align 8 ; 13 uses
  %3 = alloca %"class.v8::internal::torque::Stack.13", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %1, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPN2v88internal6torque5BlockESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %.critedge, label %.lr.ph101

.critedge:                                        ; preds = %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit, %_ZNK2v88internal6torque16ControlFlowGraph14ParameterCountEv.exit.lr.ph
  %.lcssa97 = phi ptr [ %i.k, %_ZNK2v88internal6torque16ControlFlowGraph14ParameterCountEv.exit.lr.ph ], [ %i.aw, %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit ]
  invoke void @_ZN2v88internal6torque5Block21MergeInputDefinitionsERKNS1_5StackINS1_18DefinitionLocationEEEPNS1_8WorklistIPS2_EE(ptr noundef nonnull align 8 dereferenceable(105) %.lcssa97, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.e

.loopexit54:                                      ; preds = %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp55:                             ; preds = %bb.c
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph101:                                        ; preds = %_ZNK2v88internal6torque16ControlFlowGraph14ParameterCountEv.exit.lr.ph, %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit
  %.065100 = phi i64 [ %i.av, %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit ], [ 0, %_ZNK2v88internal6torque16ControlFlowGraph14ParameterCountEv.exit.lr.ph ] ; 3 uses
  %i.z = phi ptr [ %i.au, %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit ], [ null, %_ZNK2v88internal6torque16ControlFlowGraph14ParameterCountEv.exit.lr.ph ] ; 7 uses
  %i.aa = load ptr, ptr %i.j, align 8
  %.not.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph101
  store i32 1, ptr %i.z, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.065100, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  store ptr %i.ac, ptr %i.i, align 8
  br label %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit

bb.b:                                             ; preds = %.lr.ph101
  %i.ad = load ptr, ptr %2, align 8               ; 5 uses
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.c, label %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc unwind label %.loopexit.split-lp55

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.ai = sdiv exact i64 %i.ag, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 384307168202282325)
  %i.am = select i1 %i.ak, i64 384307168202282325, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #22
          to label %.noexc20 unwind label %.loopexit54 ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag ; 3 uses
  store i32 1, ptr %i.ap, align 8
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %.sroa.6.0..sroa_idx49, align 8
  %.sroa.7.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.065100, ptr %.sroa.7.0..sroa_idx51, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ao, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %.noexc20 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !26
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.noexc20 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #24
  br label %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  store ptr %i.ao, ptr %2, align 8
  store ptr %i.as, ptr %i.i, align 8
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.at, ptr %i.j, align 8
  br label %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit

_ZN2v88internal6torque5StackINS1_18DefinitionLocationEE4PushES3_.exit: ; preds = %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.a
  %i.au = phi ptr [ %i.as, %_ZNSt6vectorIN2v88internal6torque18DefinitionLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ac, %bb.a ]
  %i.av = add nuw i64 %.065100, 1                 ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = icmp ult i64 %i.av, %i.be
  br i1 %i.bf, label %.lr.ph101, label %.critedge

bb.e:                                             ; preds = %.lr.ph68, %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEED2Ev.exit
  %i.bg = phi ptr [ %i.s, %.lr.ph68 ], [ %i.cv, %_ZN2v88internal6torque5StackINS1_18DefinitionLocationEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bh = load ptr, ptr %i.bg, align 8
  store ptr %i.bh, ptr %i.a, align 8
  %i.bi = load ptr, ptr %i.u, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.not.i.i.i21 = icmp eq ptr %i.bg, %i.bj
  br i1 %.not.i.i.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %_ZNSt5queueIPN2v88internal6torque5BlockESt5dequeIS4_SaIS4_EEE3popEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bl = load ptr, ptr %i.v, align 8
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef 512) #24
  %i.bm = load ptr, ptr %i.w, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.w, align 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  store ptr %i.bo, ptr %i.v, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  store ptr %i.bp, ptr %i.u, align 8
  br label %_ZNSt5queueIPN2v88internal6torque5BlockESt5dequeIS4_SaIS4_EEE3popEv.exit.i

_ZNSt5queueIPN2v88internal6torque5BlockESt5dequeIS4_SaIS4_EEE3popEv.exit.i: ; preds = %bb.g, %bb.f
  %storemerge.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.bo, %bb.g ]
  store ptr %storemerge.i.i.i, ptr %i.q, align 8
  %i.bq = invoke noundef i64 @_ZNSt10_HashtableIPN2v88internal6torque5BlockES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.l       ; 0 uses
end_hunk_0
