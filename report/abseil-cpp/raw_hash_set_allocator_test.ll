Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_allocator_test?download=true
inline.NumInlined: 4327
inline.NumDeleted: 1426
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131PropagateOnAll_RehashMoves_Test8TestBodyEv:bb.a

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.aa = load ptr, ptr %3, align 8, !tbaa !89    ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i30, label %_ZN7testing7MessageD2Ev.exit32, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i31

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i31: ; preds = %bb.l
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit32

_ZN7testing7MessageD2Ev.exit32:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i31, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.bf

bb.m:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83 ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.af, null
  br i1 %.not.i.i33, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !67
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.val = load i64, ptr %i.i, align 8
  %i.al = and i64 %.val, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.al          ; 4 uses
  %i.am = xor i64 %notmask.i.i.i, -1
  %i.an = add nsw i64 %notmask.i.i.i, 8589934591
  %i.ao = or i64 %i.an, %notmask.i.i.i
  %i.ap = icmp eq i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ugt i64 %notmask.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.aq)
  %i.ar = shl nuw nsw i64 %i.am, 1
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 range(i64 0, 17179869183) %i.ar, i64 8589934591)
  call void @_ZN4absl12lts_2026052618container_internal6RehashERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi7EEEEE18GetPolicyFunctionsEvE5value, i64 noundef %.sroa.speculated.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 2, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val23 = load ptr, ptr %i.as, align 8, !tbaa !66
  %.val23.val = load i64, ptr %.val23, align 8, !tbaa !97 ; 2 uses
  store i64 %.val23.val, ptr %i.d, align 8, !tbaa !98
  %i.at = icmp eq i64 %.val23.val, 2
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit34

bb.p:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.70, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit34

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit34: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.au = load i8, ptr %5, align 8, !tbaa !80, !range !81, !noundef !82
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i35, label %_ZNK7testing15AssertionResult15failure_messageEv.exit36, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit36

_ZNK7testing15AssertionResult15failure_messageEv.exit36: ; preds = %bb.s, %bb.r
  %i.az = phi ptr [ %i.ay, %bb.s ], [ @.str.61, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 239, ptr noundef %i.az)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit36
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ba = load ptr, ptr %6, align 8, !tbaa !89    ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i37, label %_ZN7testing7MessageD2Ev.exit39, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38: ; preds = %bb.u
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit39

_ZN7testing7MessageD2Ev.exit39:                   ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit42

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit36
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn13 = phi { ptr, i32 } [ %i.bg, %bb.x ], [ %i.bf, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.bh = load ptr, ptr %6, align 8, !tbaa !89    ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit42, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.y
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit42

_ZN7testing7MessageD2Ev.exit42:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41, %bb.y, %bb.v
  %.pn13.pn = phi { ptr, i32 } [ %i.be, %bb.v ], [ %.pn13, %bb.y ], [ %.pn13, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.bf

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit34, %_ZN7testing7MessageD2Ev.exit39
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !83 ; 4 uses
  %.not.i.i43 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i43, label %_ZN7testing15AssertionResultD2Ev.exit47, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !87 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44: ; preds = %bb.aa
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !67
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit47

_ZN7testing15AssertionResultD2Ev.exit47:          ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %.val.i = load i64, ptr %i.i, align 8           ; 5 uses
  %i.bs = and i64 %.val.i, 254
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit47
  %i.bu = icmp ult i64 %.val.i, 562949953552384
  call void @llvm.assume(i1 %i.bu)
  %.not.i.i.i = icmp samesign ugt i64 %.val.i, 131071
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i.i = load ptr, ptr %i.bv, align 8, !tbaa !67
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi7EEEEE4findIiEENSC_8iteratorERKi.exit

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit47
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !67 ; 3 uses
  %i.bx = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bx
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.by = lshr i64 %.val.i, 8
  %i.bz = and i64 %i.by, 255
  %i.ca = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val14.i.i = load ptr, ptr %i.cb, align 8, !tbaa !67 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i, %bb.ac
  %.pn.i9.i = phi i64 [ %i.bz, %bb.ac ], [ %i.cw, %._crit_edge.i.i ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.ac ], [ %i.cv, %._crit_edge.i.i ]
  %.sroa.629.0.i.i = and i64 %.pn.i9.i, %i.ca     ; 4 uses
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %.val14.i.i, i64 %.sroa.629.0.i.i
  call void @llvm.prefetch.p0(ptr %i.cc, i32 0, i32 3, i32 1)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.629.0.i.i
  %i.ce = load <16 x i8>, ptr %i.cd, align 1, !tbaa !67 ; 2 uses
  %i.cf = icmp eq <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = zext i16 %i.cg to i32
  %i.ci = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ch) #38, !srcloc !112 ; 2 uses
  %.not50.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.ae
  %.sroa.020.051.i.i = phi i32 [ %i.cq, %bb.ae ], [ %i.ci, %bb.ad ] ; 3 uses
  %i.cj = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.051.i.i, i1 true)
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = add nuw i64 %.sroa.629.0.i.i, %i.ck
  %i.cm = and i64 %i.cl, %i.ca
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %.val14.i.i, i64 %i.cm ; 2 uses
  %.val16.i.i = load i32, ptr %i.cn, align 4, !tbaa !68
  %i.co = icmp eq i32 %.val16.i.i, 0
  br i1 %i.co, label %.thread37.i.i, label %bb.ae, !prof !113

.thread37.i.i:                                    ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi7EEEEE4findIiEENSC_8iteratorERKi.exit

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.cp = add i32 %.sroa.020.051.i.i, -1
  %i.cq = and i32 %i.cp, %.sroa.020.051.i.i       ; 2 uses
  %.not.i.i48 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i48, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.ae, %bb.ad
  %i.cr = icmp eq <16 x i8> %i.ce, splat (i8 -128)
  %i.cs = bitcast <16 x i1> %i.cr to i16
  %i.ct = zext i16 %i.cs to i32
  %i.cu = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ct) #38, !srcloc !112 ; 0 uses
  %i.cv = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.629.0.i.i
  br label %bb.ad, !llvm.loop !6

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi7EEEEE4findIiEENSC_8iteratorERKi.exit: ; preds = %.thread37.i.i, %bb.ab
  %.pn.i = phi ptr [ %.val3.i.i, %bb.ab ], [ %i.cn, %.thread37.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i32 1, ptr %i.e, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !110
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !98 ; 2 uses
  store i64 %i.cz, ptr %i.f, align 8, !tbaa !98
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi7EEEEE4findIiEENSC_8iteratorERKi.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit49

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi7EEEEE4findIiEENSC_8iteratorERKi.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit49

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit49: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.db = load i8, ptr %8, align 8, !tbaa !80, !range !81, !noundef !82
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.de, null
  br i1 %.not.i.i50, label %_ZNK7testing15AssertionResult15failure_messageEv.exit51, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit51

_ZNK7testing15AssertionResult15failure_messageEv.exit51: ; preds = %bb.aj, %bb.ai
  %i.dg = phi ptr [ %i.df, %bb.aj ], [ @.str.61, %bb.ai ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 241, ptr noundef %i.dg)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit51
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.dh = load ptr, ptr %9, align 8, !tbaa !89    ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i52, label %_ZN7testing7MessageD2Ev.exit54, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53: ; preds = %bb.al
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit54

_ZN7testing7MessageD2Ev.exit54:                   ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit57

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit51
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn16 = phi { ptr, i32 } [ %i.dn, %bb.ao ], [ %i.dm, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.do = load ptr, ptr %9, align 8, !tbaa !89    ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.do, null
  br i1 %.not.i.i55, label %_ZN7testing7MessageD2Ev.exit57, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56: ; preds = %bb.ap
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.do) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit57

_ZN7testing7MessageD2Ev.exit57:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56, %bb.ap, %bb.am
  %.pn16.pn = phi { ptr, i32 } [ %i.dl, %bb.am ], [ %.pn16, %bb.ap ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.bf

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit49, %_ZN7testing7MessageD2Ev.exit54
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !83 ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i58, label %_ZN7testing15AssertionResultD2Ev.exit62, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !87 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i59: ; preds = %bb.ar
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !67
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i59
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit62

_ZN7testing15AssertionResultD2Ev.exit62:          ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  store i32 0, ptr %i.g, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !110
end_hunk_0
