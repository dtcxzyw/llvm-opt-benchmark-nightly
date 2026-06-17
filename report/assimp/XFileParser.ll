inline.NumInlined: 2013
inline.NumDeleted: 808
begin_hunk_0_@_ZN6Assimp11XFileParser24ParseDataObjectAnimationEPNS_5XFile9AnimationE:bb.a
  br i1 %i.ak, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
  invoke void @_ZN6Assimp11XFileParser27ParseDataObjectAnimationKeyEPNS_5XFile8AnimBoneE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a)
          to label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit unwind label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11: ; preds = %bb.g
  %.pre30 = load ptr, ptr %3, align 8
  %bcmp.i10 = call i32 @bcmp(ptr %.pre30, ptr nonnull @.str.60, i64 %i.ah)
  %i.al = icmp eq i32 %bcmp.i10, 0
  br i1 %i.al, label %.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread

.invoke:                                          ; preds = %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  invoke void @_ZN6Assimp11XFileParser22ParseUnknownDataObjectEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit unwind label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i12 = call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull @.str.45, i64 %i.ah)
  %i.am = icmp eq i32 %bcmp.i12, 0
  br i1 %i.am, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ao = icmp eq ptr %i.an, %i.b
  %i.ap = load ptr, ptr %4, align 8               ; 5 uses
  %i.aq = icmp eq ptr %i.ap, %i.ac                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.l
  br i1 %i.aq, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.l
  br i1 %i.aq, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ar = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  switch i64 %i.ar, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.ap, align 1
  store i8 %i.at, ptr %i.an, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.au = load i64, ptr %i.ad, align 8            ; 2 uses
  store i64 %i.au, ptr %i.c, align 8
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ap, ptr %i.a, align 8
  %i.ax = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.ax, ptr %i.c, align 8
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ay = load i64, ptr %i.b, align 8
  store ptr %i.ap, ptr %i.a, align 8
  %i.az = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.az, ptr %i.c, align 8
  %.not.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i14, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.an, ptr %4, align 8
  store i64 %i.ay, ptr %i.ac, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ac, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %i.ba = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.an, %bb.p ], [ %i.ac, %bb.q ]
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %4, align 8               ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ac
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bd = load i64, ptr %i.ac, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 1
  %.pre.i15 = load ptr, ptr %2, align 8           ; 3 uses
  br i1 %i.bg, label %bb.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

bb.r:                                             ; preds = %.noexc
  %lhsc.i = load i8, ptr %.pre.i15, align 1
  %i.bh = icmp ne i8 %lhsc.i, 125
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.r, %.noexc
  %i.bi = phi i1 [ true, %.noexc ], [ %i.bh, %bb.r ]
  %i.bj = icmp eq ptr %.pre.i15, %i.af
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.bk = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.bl = load i64, ptr %i.af, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %.pre.i15, i64 noundef %i.bm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.bi, label %bb.s, label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA24_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(24) @.str.71) #29
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
  %i.bo = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bo, ptr noundef nonnull @.str.61)
          to label %.invoke unwind label %.loopexit

_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bp = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ true, %.invoke ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ true, %bb.j ]
  %i.bq = load ptr, ptr %3, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ag
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit
  %i.bs = load i64, ptr %i.ag, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.bp, label %bb.g, label %bb.w

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bu = load ptr, ptr %3, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ag
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.v
  %i.bw = load i64, ptr %i.ag, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser27ParseDataObjectAnimationKeyEPNS_5XFile8AnimBoneE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN6Assimp11XFileParser20readHeadOfDataObjectEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 3 uses
  store i32 %i.b, ptr %i.a, align 4
  %i.c = tail call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 4 uses
  %.not146 = icmp eq i32 %i.c, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.w = icmp eq i32 %i.b, 2
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.a, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 1
  %.pre.i = load ptr, ptr %5, align 8             ; 3 uses
  br i1 %i.z, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

bb.b:                                             ; preds = %._crit_edge
  %lhsc.i = load i8, ptr %.pre.i, align 1
  %i.aa = icmp ne i8 %lhsc.i, 125
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.b, %._crit_edge
  %i.ab = phi i1 [ true, %._crit_edge ], [ %i.aa, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %.pre.i, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.af = load i64, ptr %i.ac, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.ab, label %bb.c, label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA24_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(24) @.str.71) #29
  unreachable

_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit
  %.0145 = phi i32 [ 0, %.lr.ph ], [ %29, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit ] ; 4 uses
  %i.ah = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 3 uses
  switch i32 %i.b, label %bb.ak [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader180
    i32 2, label %.preheader180
    i32 3, label %bb.aa
    i32 4, label %bb.aa
  ]

.preheader.preheader:                             ; preds = %bb.d
  %6 = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not12273 = icmp eq i32 %6, 4
  br i1 %.not12273, label %bb.g, label %bb.f

.preheader180:                                    ; preds = %bb.d, %bb.d
  %7 = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not11269 = icmp eq i32 %7, 3
  br i1 %.not11269, label %bb.p, label %bb.o

.preheader:                                       ; preds = %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0
  %8 = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %9 = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not12 = icmp eq i32 %9, 4
  br i1 %.not12, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.a
  %10 = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ai = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not12.a = icmp eq i32 %i.ai, 3
  br i1 %.not12.a, label %bb.p, label %bb.o

bb.f:                                             ; preds = %.preheader, %.preheader.preheader
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA60_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(60) @.str.62) #29
  unreachable

bb.g:                                             ; preds = %.preheader.preheader, %.preheader
  %.0145178274 = phi i32 [ %30, %.preheader ], [ %.0145, %.preheader.preheader ]
  %11 = phi i32 [ %8, %.preheader ], [ %i.ah, %.preheader.preheader ]
  %i.aj = uitofp i32 %11 to double                ; 2 uses
  %i.ak = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.al = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.am = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.an = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8             ; 10 uses
  %i.ap = load ptr, ptr %i.r, align 8
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.aj, ptr %i.ao, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float %i.ak, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store float %i.al, ptr %.sroa.8127.0..sroa_idx, align 4
  %.sroa.10130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store float %i.am, ptr %.sroa.10130.0..sroa_idx, align 8
  %.sroa.12133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store float %i.an, ptr %.sroa.12133.0..sroa_idx, align 4
  %.sroa.14136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 1, ptr %.sroa.14136.0..sroa_idx, align 8
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.q, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.p, align 8             ; 5 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775776
  br i1 %i.aw, label %bb.j, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ax = ashr exact i64 %i.av, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 288230376151711743)
  %i.bb = select i1 %i.az, i64 288230376151711743, i64 %i.ba ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 5
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #30 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 6 uses
  store double %i.aj, ptr %i.be, align 8
  %.sroa.6.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float %i.ak, ptr %.sroa.6.0..sroa_idx125, align 8
  %.sroa.8127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store float %i.al, ptr %.sroa.8127.0..sroa_idx128, align 4
  %.sroa.10130.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store float %i.am, ptr %.sroa.10130.0..sroa_idx131, align 8
  %.sroa.12133.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store float %i.an, ptr %.sroa.12133.0..sroa_idx134, align 4
  %.sroa.14136.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 1, ptr %.sroa.14136.0..sroa_idx137, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.bd, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %i.as, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !51
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bd, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #31
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.bd, ptr %i.p, align 8
  store ptr %i.bh, ptr %i.q, align 8
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bi, ptr %i.r, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit: ; preds = %bb.h, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.bj = load i8, ptr %i.g, align 8, !range !5, !noundef !6
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bl = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 1
  %.pre.i13 = load ptr, ptr %4, align 8           ; 3 uses
  br i1 %i.bm, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14

bb.m:                                             ; preds = %bb.l
  %lhsc.i18 = load i8, ptr %.pre.i13, align 1
  %i.bn = icmp ne i8 %lhsc.i18, 59
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14: ; preds = %bb.m, %bb.l
  %i.bo = phi i1 [ true, %bb.l ], [ %i.bn, %bb.m ]
  %i.bp = icmp eq ptr %.pre.i13, %i.t
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14
  %i.bq = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i14
  %i.br = load i64, ptr %i.t, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.pre.i13, i64 noundef %i.bs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.bo, label %bb.n, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA20_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.72) #29
  unreachable

bb.o:                                             ; preds = %.preheader180, %bb.e
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA56_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.63) #29
  unreachable

bb.p:                                             ; preds = %.preheader180, %bb.e
  %.0145177270 = phi i32 [ %i.fu, %bb.e ], [ %.0145, %.preheader180 ] ; 3 uses
  %12 = phi i32 [ %10, %bb.e ], [ %i.ah, %.preheader180 ]
  %i.bt = uitofp i32 %12 to double                ; 4 uses
  %i.bu = call { <2 x float>, float } @_ZN6Assimp11XFileParser11ReadVector3Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.bu, 0 ; 4 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.bu, 1 ; 4 uses
  br i1 %i.w, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.n, align 8             ; 8 uses
  %i.bw = load ptr, ptr %i.o, align 8
  %.not.i19 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store double %i.bt, ptr %i.bv, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx, align 8
  %.sroa.10116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx, align 4
  %i.bx = load ptr, ptr %i.n, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.by, ptr %i.n, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2

bb.s:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.t, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.ce = sdiv exact i64 %i.cc, 24                ; 3 uses
  %.sroa.speculated.i.i.i20 = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i20, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 384307168202282325)
  %i.ci = select i1 %i.cg, i64 384307168202282325, i64 %i.ch ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i21)
  %i.cj = mul nuw nsw i64 %i.ci, 24
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #30 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc ; 4 uses
  store double %i.bt, ptr %i.cl, align 8
  %.sroa.8.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx103, align 8
  %.sroa.9109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx110, align 8
  %.sroa.10116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx117, align 4
  %.not10.i.i.i.i.i22 = icmp eq ptr %i.bz, %i.bv
  br i1 %.not10.i.i.i.i.i22, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i23
  %.012.i.i.i.i.i24 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i23 ], [ %i.ck, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i25 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i23 ], [ %i.bz, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i25, i64 24, i1 false), !alias.scope !56
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i25, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i24, i64 24 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.cm, %i.bv
  br i1 %.not.i.i.i.i.i26, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i23, !llvm.loop !60

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i23, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.ck, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i23 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i27, i64 24
  %.not.i23.i.i28 = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i28, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #31
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.ck, ptr %i.m, align 8
  store ptr %i.co, ptr %i.n, align 8
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cp, ptr %i.o, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2

bb.v:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.k, align 8             ; 8 uses
  %i.cr = load ptr, ptr %i.l, align 8
  %.not.i29 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store double %i.bt, ptr %i.cq, align 8
  %.sroa.8.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx105, align 8
  %.sroa.9109.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx112, align 8
  %.sroa.10116.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx119, align 4
  %i.cs = load ptr, ptr %i.k, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.ct, ptr %i.k, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit

bb.x:                                             ; preds = %bb.v
  %i.cu = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.y, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.x
  %i.cz = sdiv exact i64 %i.cx, 24                ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i31, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 384307168202282325)
  %i.dd = select i1 %i.db, i64 384307168202282325, i64 %i.dc ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i32)
  %i.de = mul nuw nsw i64 %i.dd, 24
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #30 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx ; 4 uses
  store double %i.bt, ptr %i.dg, align 8
  %.sroa.8.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store <2 x float> %.fca.0.extract, ptr %.sroa.8.0..sroa_idx107, align 8
  %.sroa.9109.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store float %.fca.1.extract, ptr %.sroa.9109.0..sroa_idx114, align 8
  %.sroa.10116.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i32 1, ptr %.sroa.10116.0..sroa_idx121, align 4
  %.not10.i.i.i.i.i33 = icmp eq ptr %i.cu, %i.cq
  br i1 %.not10.i.i.i.i.i33, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38, label %.lr.ph.i.i.i.i.i34

.lr.ph.i.i.i.i.i34:                               ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30, %.lr.ph.i.i.i.i.i34
  %.012.i.i.i.i.i35 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i34 ], [ %i.df, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30 ] ; 2 uses
  %.0911.i.i.i.i.i36 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i34 ], [ %i.cu, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i36, i64 24, i1 false), !alias.scope !61
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i36, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i35, i64 24 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dh, %i.cq
  br i1 %.not.i.i.i.i.i37, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38, label %.lr.ph.i.i.i.i.i34, !llvm.loop !60

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38: ; preds = %.lr.ph.i.i.i.i.i34, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %i.df, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i30 ], [ %i.di, %.lr.ph.i.i.i.i.i34 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i39, i64 24
  %.not.i23.i.i40 = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i.i40, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cx) #31
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41: ; preds = %bb.z, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i38
  store ptr %i.df, ptr %i.j, align 8
  store ptr %i.dj, ptr %i.k, align 8
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dk, ptr %i.l, align 8
  br label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit

bb.aa:                                            ; preds = %bb.d, %bb.d
  %i.dl = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.not = icmp eq i32 %i.dl, 16
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA56_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.64) #29
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dm = uitofp i32 %i.ah to double              ; 2 uses
  %i.dn = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.do = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dp = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dq = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dr = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ds = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dt = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.du = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dv = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dw = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dx = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dy = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dz = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ea = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.eb = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ec = call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ed = load ptr, ptr %i.e, align 8             ; 21 uses
  %i.ee = load ptr, ptr %i.f, align 8
  %.not.i43 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i43, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store double %i.dm, ptr %i.ed, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %i.dn, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store float %i.dr, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store float %i.dv, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store float %i.dz, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store float %i.do, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  store float %i.ds, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store float %i.dw, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  store float %i.ea, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store float %i.dp, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  store float %i.dt, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store float %i.dx, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  store float %i.eb, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store float %i.dq, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 60
  store float %i.du, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  store float %i.dy, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 68
  store float %i.ec, ptr %.sroa.26.0..sroa_idx, align 4
  %i.ef = load ptr, ptr %i.e, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  store ptr %i.eg, ptr %i.e, align 8
  br label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ei = ptrtoint ptr %i.ed to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 4 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.af, label %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.em = sdiv exact i64 %i.ek, 72                ; 3 uses
  %.sroa.speculated.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i44, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 128102389400760775)
  %i.eq = select i1 %i.eo, i64 128102389400760775, i64 %i.ep ; 3 uses
  %.not.i.i.i45 = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i45)
  %i.er = mul nuw nsw i64 %i.eq, 72
  %i.es = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #30 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek ; 17 uses
  store double %i.dm, ptr %i.et, align 8
  %.sroa.5.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store float %i.dn, ptr %.sroa.5.0..sroa_idx67, align 8
  %.sroa.7.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store float %i.dr, ptr %.sroa.7.0..sroa_idx69, align 4
  %.sroa.9.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store float %i.dv, ptr %.sroa.9.0..sroa_idx71, align 8
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  store float %i.dz, ptr %.sroa.10.0..sroa_idx73, align 4
  %.sroa.11.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store float %i.do, ptr %.sroa.11.0..sroa_idx75, align 8
  %.sroa.12.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  store float %i.ds, ptr %.sroa.12.0..sroa_idx77, align 4
  %.sroa.14.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store float %i.dw, ptr %.sroa.14.0..sroa_idx79, align 8
  %.sroa.16.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.et, i64 36
  store float %i.ea, ptr %.sroa.16.0..sroa_idx81, align 4
  %.sroa.17.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store float %i.dp, ptr %.sroa.17.0..sroa_idx83, align 8
  %.sroa.18.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.et, i64 44
  store float %i.dt, ptr %.sroa.18.0..sroa_idx85, align 4
  %.sroa.19.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store float %i.dx, ptr %.sroa.19.0..sroa_idx87, align 8
  %.sroa.21.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.et, i64 52
  store float %i.eb, ptr %.sroa.21.0..sroa_idx89, align 4
  %.sroa.23.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store float %i.dq, ptr %.sroa.23.0..sroa_idx91, align 8
  %.sroa.24.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.et, i64 60
  store float %i.du, ptr %.sroa.24.0..sroa_idx93, align 4
  %.sroa.25.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store float %i.dy, ptr %.sroa.25.0..sroa_idx95, align 8
  %.sroa.26.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.et, i64 68
  store float %i.ec, ptr %.sroa.26.0..sroa_idx97, align 4
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.eh, %i.ed
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i48 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i47 ], [ %i.es, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i49 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i47 ], [ %i.eh, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i48, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i49, i64 72, i1 false), !alias.scope !65
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 72 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 72 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.eu, %i.ed
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i47, !llvm.loop !69

_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i47, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i51 = phi ptr [ %i.es, %_ZNKSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ev, %.lr.ph.i.i.i.i.i47 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i51, i64 72
  %.not.i23.i.i52 = icmp eq ptr %i.eh, null
  br i1 %.not.i23.i.i52, label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ek) #31
  br label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.es, ptr %i.d, align 8
  store ptr %i.ew, ptr %i.e, align 8
  %i.ex = getelementptr inbounds nuw [72 x i8], ptr %i.es, i64 %i.eq
  store ptr %i.ex, ptr %i.f, align 8
  br label %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.ad, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ey = load i8, ptr %i.g, align 8, !range !5, !noundef !6
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.fa = load i64, ptr %i.h, align 8             ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 1
  %.pre.i53 = load ptr, ptr %3, align 8           ; 3 uses
  br i1 %i.fb, label %bb.ai, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54

bb.ai:                                            ; preds = %bb.ah
  %lhsc.i58 = load i8, ptr %.pre.i53, align 1
  %i.fc = icmp ne i8 %lhsc.i58, 59
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54: ; preds = %bb.ai, %bb.ah
  %i.fd = phi i1 [ true, %bb.ah ], [ %i.fc, %bb.ai ]
  %i.fe = icmp eq ptr %.pre.i53, %i.i
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54
  %i.ff = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.ff)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i54
  %i.fg = load i64, ptr %i.i, align 8
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %.pre.i53, i64 noundef %i.fh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.fd, label %bb.aj, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA20_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.72) #29
  unreachable

bb.ak:                                            ; preds = %bb.d
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA18_KcRjRA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(18) @.str.65, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.66) #29
  unreachable

_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit, %bb.w, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41
  %.0145179 = phi i32 [ %.0145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56 ], [ %.0145, %_ZNSt6vectorIN6Assimp5XFile9MatrixKeyESaIS2_EE9push_backERKS2_.exit ], [ %.0145177270, %bb.w ], [ %.0145177270, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41 ]
  %i.fi = load i8, ptr %i.g, align 8, !range !5, !noundef !6
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit, label %17

_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  %13 = load i8, ptr %i.g, align 8, !range !5, !noundef !6
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0, label %19

_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2: ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.r
  %15 = load i8, ptr %i.g, align 8, !range !5, !noundef !6
  %16 = trunc nuw i8 %15 to i1
  br i1 %16, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.a, label %bb.al

17:                                               ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %18 = load i64, ptr %i.u, align 8
  %cond.i = icmp eq i64 %18, 1
  br i1 %cond.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

19:                                               ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %20 = load i64, ptr %i.u, align 8
  %cond.i.jt0 = icmp eq i64 %20, 1
  br i1 %cond.i.jt0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

bb.al:                                            ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.fk = load i64, ptr %i.u, align 8
  %cond.i.a = icmp eq i64 %i.fk, 1
  br i1 %cond.i.a, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.a, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63: ; preds = %17
  %21 = load ptr, ptr %2, align 8                 ; 3 uses
  %lhsc.i64 = load i8, ptr %21, align 1
  switch i8 %lhsc.i64, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0: ; preds = %19
  %22 = load ptr, ptr %2, align 8                 ; 3 uses
  %lhsc.i64.jt0 = load i8, ptr %22, align 1
  switch i8 %lhsc.i64.jt0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.a: ; preds = %bb.al
  %i.fl = load ptr, ptr %2, align 8               ; 3 uses
  %lhsc.i64.a = load i8, ptr %i.fl, align 1
  switch i8 %lhsc.i64.a, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.a
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.a
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63, %17, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.a, %bb.al, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0, %19
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  unreachable

bb.an:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %2, align 8               ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.v
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.an
  %i.fp = load i64, ptr %i.v, align 8
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.fm

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63
  %23 = icmp eq ptr %21, %i.v
  br i1 %23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.jt0
  %24 = icmp eq ptr %22, %i.v
  br i1 %24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt0

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.a: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i63.a
  %i.fr = icmp eq ptr %i.fl, %i.v
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  %25 = load i64, ptr %i.v, align 8
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %26) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt0: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
  %27 = load i64, ptr %i.v, align 8
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef nonnull %22, i64 noundef %28) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.a: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.a
  %i.fs = load i64, ptr %i.v, align 8
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.ft) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.jt0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.a

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit: ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %29 = add nuw i32 %.0145179, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %29, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !70

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.jt0: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.jt0, %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt0
  %30 = add nuw i32 %.0145178274, 1               ; 2 uses
  %exitcond.not.jt0 = icmp eq i32 %30, %i.c
  br i1 %exitcond.not.jt0, label %._crit_edge, label %.preheader, !llvm.loop !70

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.a, %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit.jt2
  %i.fu = add nuw i32 %.0145177270, 1             ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.fu, %i.c
  br i1 %exitcond.not.a, label %._crit_edge, label %bb.e, !llvm.loop !70
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA60_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(60) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN17DeadlyImportErrorC2IJRA6_KcRjRA3_S1_RA60_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.110, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, ptr noundef nonnull align 1 dereferenceable(60) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.g, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA56_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN17DeadlyImportErrorC2IJRA6_KcRjRA3_S1_RA56_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.110, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, ptr noundef nonnull align 1 dereferenceable(56) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.g, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA18_KcRjRA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2IJRA18_KcRjRA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN17DeadlyImportErrorC2IJRA6_KcRjRA3_S1_RA18_S1_S4_RA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.110, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.111, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.g, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser17CheckForSeparatorEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %cond = icmp eq i64 %i.e, 1
  br i1 %cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8                ; 4 uses
  %lhsc = load i8, ptr %i.f, align 1
  %.not = icmp eq i8 %lhsc, 44
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %lhsc13 = load i8, ptr %i.f, align 1
  %.not9 = icmp eq i8 %lhsc13, 59
  br i1 %.not9, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread
  unreachable

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.g

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.f, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  ret void
}

end_hunk_0
