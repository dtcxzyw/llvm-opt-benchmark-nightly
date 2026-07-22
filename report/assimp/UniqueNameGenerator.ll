inline.NumInlined: 535
inline.NumDeleted: 238
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.j = load ptr, ptr %0, align 8, !noalias !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !3 ; 3 uses
  %i.m = load ptr, ptr %i.i, align 8, !noalias !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noalias !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !alias.scope !6
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !6
  store i8 0, ptr %i.p, align 8, !alias.scope !6
  %i.r = add i64 %i.o, %i.l
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.r)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.q, align 8, !alias.scope !6
  %i.t = sub i64 4611686018427387903, %i.s
  %i.u = icmp ult i64 %i.t, %i.l
  br i1 %i.u, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.w = load i64, ptr %i.q, align 8, !alias.scope !6
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.o
  br i1 %i.y, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8, !alias.scope !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.p
  br i1 %i.ac, label %_ZNSt6vectorImSaImEED2Ev.exit120.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.p, align 8, !alias.scope !6
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit120.thread

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %2, ptr %5, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %1, align 8               ; 2 uses
  %.not289 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not289, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.av = icmp eq ptr %.sroa.9.2, %.sroa.0150.3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %.sroa.14.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.14.3, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.9.0.lcssa = phi i1 [ true, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %i.av, %._crit_edge.loopexit ]
  %.sroa.0150.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.0150.3, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.16.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.16.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.10.1, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0158.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.0158.1, %._crit_edge.loopexit ] ; 9 uses
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not185277 = icmp eq ptr %.val, %i.d
  br i1 %.not185277, label %._crit_edge281, label %.lr.ph280

.lr.ph280:                                        ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %bb.av

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ay = phi ptr [ %i.aj, %.lr.ph ], [ %i.hi, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %storemerge265 = phi i64 [ 0, %.lr.ph ], [ %i.hg, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0158.0263 = phi ptr [ null, %.lr.ph ], [ %.sroa.0158.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.10.0262 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %.sroa.16.0260 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %.sroa.0150.0259 = phi ptr [ null, %.lr.ph ], [ %.sroa.0150.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 12 uses
  %.sroa.9.0258 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.14.0257 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %storemerge265
  %i.ba = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 noundef signext 32, i64 noundef 0) #22
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.sroa.10.0262, %.sroa.16.0260
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %storemerge265, ptr %.sroa.10.0262, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.10.0262, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = ptrtoint ptr %.sroa.10.0262 to i64
  %i.be = ptrtoint ptr %.sroa.0158.0263 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #24
          to label %.noexc43 unwind label %.loopexit191 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 2 uses
  store i64 %storemerge265, ptr %i.bo, align 8
  %i.bp = icmp sgt i64 %i.bf, 0
  br i1 %i.bp, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr align 8 %.sroa.0158.0263, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0158.0263, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0263, i64 noundef %i.bf) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit191:                                     ; preds = %bb.at, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48, %bb.au
  %.sroa.16.0260.lcssa317 = phi ptr [ %.sroa.16.0260, %bb.at ], [ %.sroa.10.0262, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.16.0260, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.16.0260, %bb.au ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.14.2, %bb.at ], [ %.sroa.14.0257, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.9.0258, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.14.2, %bb.au ]
  %.sroa.0150.1.ph = phi ptr [ %.sroa.0150.2, %bb.at ], [ %.sroa.0150.0259, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0150.0259, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.0150.2, %bb.au ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %bb.h, %bb.u
  %.sroa.16.0260323 = phi ptr [ %.sroa.10.0262, %bb.h ], [ %.sroa.16.0260, %bb.u ]
  %.sroa.14.0257307 = phi ptr [ %.sroa.14.0257, %bb.h ], [ %.sroa.9.0258, %bb.u ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.k:                                             ; preds = %bb.d
  %i.bs = load ptr, ptr %1, align 8
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %storemerge265 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8            ; 4 uses
  %i.bw = load i64, ptr %i.k, align 8
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.l, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %i.bt, align 8, !noalias !9
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168

bb.l:                                             ; preds = %bb.k
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %.critedge.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.l
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = load ptr, ptr %i.bt, align 8            ; 2 uses
  %bcmp.i = call i32 @bcmp(ptr %i.ca, ptr %i.bz, i64 %i.bv)
  %i.cb = icmp eq i32 %bcmp.i, 0
  br i1 %i.cb, label %.critedge.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %12 = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168_crit_edge ], [ %i.ca, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cc = load i64, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  store ptr %i.ak, ptr %6, align 8, !alias.scope !9
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bv) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !9
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !noalias !9
  %i.cd = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.cd, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc44 unwind label %bb.x   ; 2 uses

.noexc44:                                         ; preds = %.noexc10.i.i
  store ptr %i.ce, ptr %6, align 8, !alias.scope !9
  %i.cf = load i64, ptr %i.c, align 8, !noalias !9
  store i64 %i.cf, ptr %i.ak, align 8, !alias.scope !9
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc44, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168
  %i.cg = phi ptr [ %i.ce, %.noexc44 ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread168 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = load i8, ptr %12, align 1
  store i8 %i.ch, ptr %i.cg, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %12, i64 %spec.select.i.i.i, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.ci = load i64, ptr %i.c, align 8, !noalias !9 ; 2 uses
  store i64 %i.ci, ptr %i.al, align 8, !alias.scope !9
  %i.cj = load ptr, ptr %6, align 8, !alias.scope !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 0, ptr %i.ck, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !9
  %i.cl = load i64, ptr %i.al, align 8            ; 4 uses
  %i.cm = load i64, ptr %i.q, align 8
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.p, label %._crit_edge338

._crit_edge338:                                   ; preds = %bb.o
  %.pre339.a = load ptr, ptr %6, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.co = icmp eq i64 %i.cl, 0
  %.pre340 = load ptr, ptr %6, align 8            ; 3 uses
  br i1 %i.co, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %3, align 8
  %bcmp.i45 = call i32 @bcmp(ptr %.pre340, ptr %i.cp, i64 %i.cl)
  %i.cq = icmp eq i32 %bcmp.i45, 0
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge338, %bb.p, %bb.q
  %i.cr = phi ptr [ %.pre340, %bb.p ], [ %.pre340, %bb.q ], [ %.pre339.a, %._crit_edge338 ] ; 2 uses
  %.ph = phi i1 [ true, %bb.p ], [ %i.cq, %bb.q ], [ false, %._crit_edge338 ]
  %i.cs = icmp eq ptr %i.cr, %i.ak
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.r
  %i.ct = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.ct)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cu = load i64, ptr %i.ak, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #23
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.ph, label %.critedge.thread, label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

.critedge.thread:                                 ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.critedge
  %.not.i47 = icmp eq ptr %.sroa.9.0258, %.sroa.14.0257
  br i1 %.not.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  store i64 %storemerge265, ptr %.sroa.9.0258, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.9.0258, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

bb.t:                                             ; preds = %.critedge.thread
  %i.cx = ptrtoint ptr %.sroa.9.0258 to i64
  %i.cy = ptrtoint ptr %.sroa.0150.0259 to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.t
  %i.db = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i49 = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i49, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i50)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #24
          to label %.noexc55 unwind label %.loopexit191 ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cz ; 2 uses
  store i64 %storemerge265, ptr %i.di, align 8
  %i.dj = icmp sgt i64 %i.cz, 0
  br i1 %i.dj, label %bb.v, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51

bb.v:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr align 8 %.sroa.0150.0259, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51: ; preds = %bb.v, %.noexc55
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.not.i17.i.i52 = icmp eq ptr %.sroa.0150.0259, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0259, i64 noundef %i.cz) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

bb.x:                                             ; preds = %.noexc10.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.by

_ZNSt6vectorImSaImEE9push_backERKm.exit56:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, %bb.s, %.critedge
  %.sroa.14.2 = phi ptr [ %.sroa.14.0257, %.critedge ], [ %i.dl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %.sroa.14.0257, %bb.s ] ; 5 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0258, %.critedge ], [ %i.dk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %i.cw, %bb.s ] ; 2 uses
  %.sroa.0150.2 = phi ptr [ %.sroa.0150.0259, %.critedge ], [ %i.dh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %.sroa.0150.0259, %bb.s ] ; 5 uses
  %i.dn = load ptr, ptr %1, align 8
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %storemerge265 ; 4 uses
  %.val30 = load ptr, ptr %i.do, align 8          ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 8      ; 2 uses
  %.val31 = load i64, ptr %i.dp, align 8          ; 4 uses
  %.val.i.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit56, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %.val.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit56 ] ; 6 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.d, %_ZNSt6vectorImSaImEE9push_backERKm.exit56 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val31, i64 %i.dr) ; 2 uses
  %i.ds = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ds, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call i32 @memcmp(ptr noundef %i.du, ptr noundef readonly %.val30, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dw = sub i64 %i.dr, %.val31
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.dx = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.dx, ptr %.083.i.i.i, ptr %.04.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.dx, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i57, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.dy = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.dy, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dx, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.dz = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 %.val31) ; 2 uses
  %i.ea = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ea, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.y
  %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel.v = select i1 %i.dx, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.eb = load ptr, ptr %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel, align 8
  %i.ec = call i32 @memcmp(ptr noundef readonly %.val30, ptr noundef %i.eb, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.y
  %i.ed = sub i64 %.val31, %i.dz
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ed, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ec, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ee = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ee, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread, label %bb.at

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit56, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %8, ptr %i.am, align 8
  store ptr %8, ptr %8, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.ao, ptr %7, align 8
end_hunk_0
