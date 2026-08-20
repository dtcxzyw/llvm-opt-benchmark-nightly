inline.NumInlined: 2277
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 7
begin_hunk_0_@_ZN6Assimp11NFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.qm = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i1025, ptr noundef nonnull align 4 dereferenceable(4) %22, i1 noundef zeroext true)
          to label %bb.dg unwind label %.loopexit.split-lp2991.loopexit ; 2 uses

bb.dg:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1027
  store ptr %i.qm, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit1027.thread

.loopexit2990:                                    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1086, %_ZN6Assimp9IsLineEndIcEEbT_.exit1094, %_ZN6Assimp9IsLineEndIcEEbT_.exit1102, %_ZN6Assimp9IsLineEndIcEEbT_.exit1131, %_ZN6Assimp9IsLineEndIcEEbT_.exit1138, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1105, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1140
  %lpad.loopexit2992 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2991

.loopexit.split-lp2991.loopexit:                  ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027
  %.sroa.252645.2.ph.ph = phi ptr [ %.sroa.252645.5, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.252645.5, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.252645.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.252645.03955, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.252645.03955, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.252645.03955, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.252645.03955, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.02633.2.ph.ph = phi ptr [ %.sroa.02633.5, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.02633.5, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.02633.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.02633.03957, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.02633.03957, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.02633.03957, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.02633.03957, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.252663.2.ph.ph = phi ptr [ %.sroa.252663.5, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.252663.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.252663.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.252663.03958, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.252663.03958, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.252663.03958, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.252663.03958, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.02650.2.ph.ph = phi ptr [ %.sroa.02650.5, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.02650.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.02650.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.02650.03960, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.02650.03960, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.02650.03960, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.02650.03960, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.252684.2.ph.ph = phi ptr [ %.sroa.252684.6, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.252684.6, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.252684.6, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.252684.03961, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.252684.03961, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.252684.03961, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.152677.03962, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.02668.2.ph.ph = phi ptr [ %.sroa.02668.6, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.02668.6, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.02668.6, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.02668.03963, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.02668.03963, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.02668.03963, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.02668.03963, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.252701.2.ph.ph = phi ptr [ %.sroa.252701.3, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.252701.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.252701.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.252701.03964, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.252701.03964, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.252701.03964, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.252701.03964, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.02688.2.ph.ph = phi ptr [ %.sroa.02688.3, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1188 ], [ %.sroa.02688.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1172 ], [ %.sroa.02688.3, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i1156 ], [ %.sroa.02688.03966, %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 ], [ %.sroa.02688.03966, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 ], [ %.sroa.02688.03966, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027 ], [ %.sroa.02688.03966, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit3010 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2991

.loopexit.split-lp2991.loopexit.split-lp:         ; preds = %.invoke, %bb.gb, %bb.fw, %bb.dr
  %.sroa.252645.2.ph.ph3002 = phi ptr [ %.sroa.252645.03955, %bb.dr ], [ %.sroa.252645.5, %bb.fw ], [ %.sroa.252645.5, %bb.gb ], [ %.sroa.252645.3, %.invoke ]
  %.sroa.02633.2.ph.ph3003 = phi ptr [ %.sroa.02633.03957, %bb.dr ], [ %.sroa.02633.5, %bb.fw ], [ %.sroa.02633.5, %bb.gb ], [ %.sroa.02633.3, %.invoke ]
  %.sroa.252663.2.ph.ph3004 = phi ptr [ %.sroa.252663.03958, %bb.dr ], [ %.sroa.252663.3, %bb.fw ], [ %.sroa.252663.5, %bb.gb ], [ %.sroa.252663.3, %.invoke ]
  %.sroa.02650.2.ph.ph3005 = phi ptr [ %.sroa.02650.03960, %bb.dr ], [ %.sroa.02650.3, %bb.fw ], [ %.sroa.02650.5, %bb.gb ], [ %.sroa.02650.3, %.invoke ]
  %.sroa.252684.2.ph.ph3006 = phi ptr [ %.sroa.152677.03962, %bb.dr ], [ %.sroa.252684.6, %bb.fw ], [ %.sroa.252684.6, %bb.gb ], [ %.sroa.252684.6, %.invoke ]
  %.sroa.02668.2.ph.ph3007 = phi ptr [ %.sroa.02668.03963, %bb.dr ], [ %.sroa.02668.6, %bb.fw ], [ %.sroa.02668.6, %bb.gb ], [ %.sroa.02668.6, %.invoke ]
  %.sroa.252701.2.ph.ph3008 = phi ptr [ %.sroa.252701.03964, %bb.dr ], [ %.sroa.252701.3, %bb.fw ], [ %.sroa.252701.3, %bb.gb ], [ %.sroa.252701.3, %.invoke ]
  %.sroa.02688.2.ph.ph3009 = phi ptr [ %.sroa.02688.03966, %bb.dr ], [ %.sroa.02688.3, %bb.fw ], [ %.sroa.02688.3, %bb.gb ], [ %.sroa.02688.3, %.invoke ]
  %lpad.loopexit.split-lp3011 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2991

_ZN6Assimp9IsLineEndIcEEbT_.exit1027.thread:      ; preds = %.critedge.i.i1024, %.critedge.i.i1024, %.critedge.i.i1024, %.critedge.i.i1024, %bb.dg
  %i.qn = phi ptr [ %.0.lcssa.i.i1025, %.critedge.i.i1024 ], [ %.0.lcssa.i.i1025, %.critedge.i.i1024 ], [ %.0.lcssa.i.i1025, %.critedge.i.i1024 ], [ %.0.lcssa.i.i1025, %.critedge.i.i1024 ], [ %i.qm, %bb.dg ] ; 3 uses
  %i.qo = ptrtoaddr ptr %i.qn to i64
  %i.qp = sub i64 %i.fj, %i.qo
  %scevgep.i.i1029 = getelementptr i8, ptr %i.qn, i64 %i.qp
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dj, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027.thread
  %.0.i.i1030 = phi ptr [ %i.qn, %_ZN6Assimp9IsLineEndIcEEbT_.exit1027.thread ], [ %i.qr, %bb.dj ] ; 4 uses
  %i.qq = load i8, ptr %.0.i.i1030, align 1
  switch i8 %i.qq, label %.critedge.i.i1032 [
    i8 32, label %bb.di
    i8 9, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh, %bb.dh
  %.not.i.i1031 = icmp eq ptr %.0.i.i1030, %i.bg
  br i1 %.not.i.i1031, label %.critedge.i.i1032, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i.i1030, i64 1
  br label %bb.dh, !llvm.loop !7

.critedge.i.i1032:                                ; preds = %bb.di, %bb.dh
  %.0.lcssa.i.i1033 = phi ptr [ %.0.i.i1030, %bb.dh ], [ %scevgep.i.i1029, %bb.di ] ; 7 uses
  store ptr %.0.lcssa.i.i1033, ptr %i.j, align 8
  %i.qs = load i8, ptr %.0.lcssa.i.i1033, align 1
  switch i8 %i.qs, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1035 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit1035:             ; preds = %.critedge.i.i1032
  %i.qt = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i1033, ptr noundef nonnull align 4 dereferenceable(4) %i.fu, i1 noundef zeroext true)
          to label %bb.dk unwind label %.loopexit.split-lp2991.loopexit ; 2 uses

bb.dk:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1035
  store ptr %i.qt, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread:      ; preds = %.critedge.i.i1032, %.critedge.i.i1032, %.critedge.i.i1032, %.critedge.i.i1032, %bb.dk
  %i.qu = phi ptr [ %.0.lcssa.i.i1033, %.critedge.i.i1032 ], [ %.0.lcssa.i.i1033, %.critedge.i.i1032 ], [ %.0.lcssa.i.i1033, %.critedge.i.i1032 ], [ %.0.lcssa.i.i1033, %.critedge.i.i1032 ], [ %i.qt, %bb.dk ] ; 3 uses
  %i.qv = ptrtoaddr ptr %i.qu to i64
  %i.qw = sub i64 %i.fj, %i.qv
  %scevgep.i.i1037 = getelementptr i8, ptr %i.qu, i64 %i.qw
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread
  %.0.i.i1038 = phi ptr [ %i.qu, %_ZN6Assimp9IsLineEndIcEEbT_.exit1035.thread ], [ %i.qy, %bb.dn ] ; 4 uses
  %i.qx = load i8, ptr %.0.i.i1038, align 1
  switch i8 %i.qx, label %.critedge.i.i1040 [
    i8 32, label %bb.dm
    i8 9, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl, %bb.dl
  %.not.i.i1039 = icmp eq ptr %.0.i.i1038, %i.bg
  br i1 %.not.i.i1039, label %.critedge.i.i1040, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.qy = getelementptr inbounds nuw i8, ptr %.0.i.i1038, i64 1
  br label %bb.dl, !llvm.loop !7

.critedge.i.i1040:                                ; preds = %bb.dm, %bb.dl
  %.0.lcssa.i.i1041 = phi ptr [ %.0.i.i1038, %bb.dl ], [ %scevgep.i.i1037, %bb.dm ] ; 3 uses
  store ptr %.0.lcssa.i.i1041, ptr %i.j, align 8
  %i.qz = load i8, ptr %.0.lcssa.i.i1041, align 1
  switch i8 %i.qz, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1043 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit1043:             ; preds = %.critedge.i.i1040
  %i.ra = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i1041, ptr noundef nonnull align 4 dereferenceable(4) %i.fv, i1 noundef zeroext true)
          to label %bb.do unwind label %.loopexit.split-lp2991.loopexit

bb.do:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1043
  store ptr %i.ra, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread:      ; preds = %.critedge.i.i1040, %.critedge.i.i1040, %.critedge.i.i1040, %.critedge.i.i1040, %bb.do
  %.not.i1045 = icmp eq ptr %.sroa.152677.03962, %.sroa.252684.03961
  br i1 %.not.i1045, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.152677.03962, ptr noundef nonnull align 8 dereferenceable(12) %22, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.dq:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1043.thread
  %i.rb = ptrtoint ptr %.sroa.152677.03962 to i64
  %i.rc = ptrtoint ptr %.sroa.02668.03963 to i64
  %i.rd = sub i64 %i.rb, %i.rc                    ; 4 uses
  %i.re = icmp eq i64 %i.rd, 9223372036854775800
  br i1 %i.re, label %bb.dr, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #31
          to label %.noexc1046 unwind label %.loopexit.split-lp2991.loopexit.split-lp

.noexc1046:                                       ; preds = %bb.dr
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dq
  %i.rf = sdiv exact i64 %i.rd, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.rf, i64 1)
  %i.rg = add nsw i64 %.sroa.speculated.i.i.i, %i.rf ; 2 uses
  %i.rh = icmp ult i64 %i.rg, %i.rf
  %i.ri = call i64 @llvm.umin.i64(i64 %i.rg, i64 768614336404564650)
  %i.rj = select i1 %i.rh, i64 768614336404564650, i64 %i.ri ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.rj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.rk = mul nuw nsw i64 %i.rj, 12
  %i.rl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rk) #29
          to label %.noexc1047 unwind label %.loopexit.split-lp2991.loopexit ; 5 uses

.noexc1047:                                       ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rm, ptr noundef nonnull align 8 dereferenceable(12) %22, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.02668.03963, %.sroa.152677.03962
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc1047, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ro, %.lr.ph.i.i.i.i.i ], [ %i.rl, %.noexc1047 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.rn, %.lr.ph.i.i.i.i.i ], [ %.sroa.02668.03963, %.noexc1047 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !22
  %i.rn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.rn, %.sroa.152677.03962
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc1047
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.rl, %.noexc1047 ], [ %i.ro, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.02668.03963, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02668.03963, i64 noundef %i.rd) #28
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ds, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.rp = getelementptr inbounds nuw [12 x i8], ptr %i.rl, i64 %i.rj
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.dp, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.252684.6 = phi ptr [ %i.rp, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.252684.03961, %bb.dp ] ; 11 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.152677.03962, %bb.dp ]
  %.sroa.02668.6 = phi ptr [ %i.rl, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.02668.03963, %bb.dp ] ; 12 uses
  %.sroa.152677.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 3 uses
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.sroa.252645.3 = phi ptr [ %.sroa.252645.03955, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.252645.3.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 21 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.03956, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.14.1.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 15 uses
  %.sroa.02633.3 = phi ptr [ %.sroa.02633.03957, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.02633.3.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 24 uses
  %.sroa.252663.3 = phi ptr [ %.sroa.252663.03958, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.252663.3.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 23 uses
  %.sroa.142657.1 = phi ptr [ %.sroa.142657.03959, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.142657.1.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 15 uses
  %.sroa.02650.3 = phi ptr [ %.sroa.02650.03960, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.02650.3.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 26 uses
  %.sroa.252701.3 = phi ptr [ %.sroa.252701.03964, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.252701.3.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 25 uses
  %.sroa.142695.1 = phi ptr [ %.sroa.142695.03965, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.142695.1.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 14 uses
  %.sroa.02688.3 = phi ptr [ %.sroa.02688.03966, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.02688.3.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 28 uses
  %.1701 = phi i1 [ %.07003967, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.1701.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 8 uses
  %.1698 = phi i1 [ %.06973968, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.1698.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 8 uses
  %.1692 = phi i1 [ %.06913969, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %.1692.be, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge ] ; 8 uses
  %i.rq = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.rr = ptrtoaddr ptr %i.rq to i64
  %i.rs = sub i64 %i.fj, %i.rr
  %scevgep.i.i1048 = getelementptr i8, ptr %i.rq, i64 %i.rs
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dv, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %.0.i.i1049 = phi ptr [ %i.rq, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.ru, %bb.dv ] ; 4 uses
  %i.rt = load i8, ptr %.0.i.i1049, align 1
  switch i8 %i.rt, label %.critedge.i.i1051 [
    i8 32, label %bb.du
    i8 9, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt
  %.not.i.i1050 = icmp eq ptr %.0.i.i1049, %i.bg
  br i1 %.not.i.i1050, label %.critedge.i.i1051, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ru = getelementptr inbounds nuw i8, ptr %.0.i.i1049, i64 1
  br label %bb.dt, !llvm.loop !7

.critedge.i.i1051:                                ; preds = %bb.du, %bb.dt
  %i.rv = phi ptr [ %.0.i.i1049, %bb.dt ], [ %scevgep.i.i1048, %bb.du ] ; 11 uses
  store ptr %i.rv, ptr %i.j, align 8
  %i.rw = load i8, ptr %i.rv, align 1             ; 4 uses
  switch i8 %i.rw, label %sub_02888 [
    i8 13, label %bb.fo
    i8 10, label %bb.fo
    i8 0, label %bb.fo
    i8 12, label %bb.fo
  ]

sub_02888:                                        ; preds = %.critedge.i.i1051
  %i.rx = zext i8 %i.rw to i32                    ; 2 uses
  %i.ry = sub nsw i32 48, %i.rx
  %.not4115 = icmp eq i8 %i.rw, 48
  br i1 %.not4115, label %sub_12889, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1054.tail

sub_12889:                                        ; preds = %sub_02888
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %i.sa = load i8, ptr %i.rz, align 1
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sub nsw i32 120, %i.sb
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit1054.tail

_ZN6Assimp9IsLineEndIcEEbT_.exit1054.tail:        ; preds = %sub_02888, %sub_12889
  %i.sd = phi i32 [ %i.ry, %sub_02888 ], [ %i.sc, %sub_12889 ]
  %.not.i1055 = icmp eq i32 %i.sd, 0
  br i1 %.not.i1055, label %bb.dw, label %bb.ej

bb.dw:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1054.tail
  %i.se = getelementptr inbounds nuw i8, ptr %i.rv, i64 2 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1             ; 2 uses
  switch i8 %i.sf, label %bb.ej [
    i8 32, label %bb.dx
    i8 9, label %bb.dx
    i8 13, label %bb.dx
    i8 10, label %bb.dx
    i8 0, label %bb.dx
    i8 12, label %bb.dx
  ]

bb.dx:                                            ; preds = %bb.dw, %bb.dw, %bb.dw, %bb.dw, %bb.dw, %bb.dw
  %.not11.i1057 = icmp eq i8 %i.sf, 0
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rv, i64 3
  %storemerge.i1058 = select i1 %.not11.i1057, ptr %i.se, ptr %i.sg ; 2 uses
  store ptr %storemerge.i1058, ptr %i.j, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ee, %bb.dx
  %.016.i = phi ptr [ %storemerge.i1058, %bb.dx ], [ %i.sw, %bb.ee ] ; 3 uses
  %.0.i1060 = phi i32 [ 0, %bb.dx ], [ %.1.i, %bb.ee ] ; 6 uses
  %i.sh = load i8, ptr %.016.i, align 1           ; 3 uses
  %i.si = add i8 %i.sh, -48                       ; 2 uses
  %or.cond.i1061 = icmp ult i8 %i.si, 10
  br i1 %or.cond.i1061, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.sj = shl i32 %.0.i1060, 4
  %i.sk = zext nneg i8 %i.si to i32
  %i.sl = or disjoint i32 %i.sj, %i.sk
  br label %bb.ee

bb.ea:                                            ; preds = %bb.dy
  %i.sm = add i8 %i.sh, -65                       ; 2 uses
  %or.cond23.i = icmp ult i8 %i.sm, 6
  br i1 %or.cond23.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.sn = shl i32 %.0.i1060, 4
  %i.so = zext nneg i8 %i.sm to i32
  %i.sp = or disjoint i32 %i.sn, 10
  %i.sq = add nuw i32 %i.sp, %i.so
  br label %bb.ee

bb.ec:                                            ; preds = %bb.ea
  %i.sr = add i8 %i.sh, -97                       ; 2 uses
  %or.cond24.i = icmp ult i8 %i.sr, 6
  br i1 %or.cond24.i, label %bb.ed, label %_ZN6Assimp9strtoul16EPKcPS1_.exit

bb.ed:                                            ; preds = %bb.ec
  %i.ss = shl i32 %.0.i1060, 4
  %i.st = zext nneg i8 %i.sr to i32
  %i.su = or disjoint i32 %i.ss, 10
  %i.sv = add nuw i32 %i.su, %i.st
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.eb, %bb.dz
  %.1.i = phi i32 [ %i.sl, %bb.dz ], [ %i.sq, %bb.eb ], [ %i.sv, %bb.ed ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.dy, !llvm.loop !27

_ZN6Assimp9strtoul16EPKcPS1_.exit:                ; preds = %bb.ec
  store ptr %.016.i, ptr %i.j, align 8
  %i.sx = lshr i32 %.0.i1060, 16
  %i.sy = lshr i32 %.0.i1060, 8
  %i.sz = and i32 %.0.i1060, 255
  %i.ta = uitofp nneg i32 %i.sz to float
  %i.tb = and i32 %i.sy, 255
  %i.tc = and i32 %i.sx, 255
  %i.td = uitofp nneg i32 %i.tb to float
  %i.te = uitofp nneg i32 %i.tc to float
  %i.tf = insertelement <4 x float> poison, float %i.te, i64 0
  %i.tg = insertelement <4 x float> %i.tf, float %i.td, i64 1
  %i.th = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ta, i64 2
  %i.ti = shufflevector <4 x float> %i.tg, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tj = fdiv <4 x float> %i.ti, <float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 1.000000e+00> ; 2 uses
  %.not.i1063 = icmp eq ptr %.sroa.142695.1, %.sroa.252701.3
  br i1 %.not.i1063, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit
  %46 = insertelement <4 x float> %i.tj, float 1.000000e+00, i64 3
  store <4 x float> %46, ptr %.sroa.142695.1, align 4
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.142695.1, i64 16
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge

bb.eg:                                            ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit
  %i.tl = ptrtoint ptr %.sroa.252701.3 to i64
  %i.tm = ptrtoint ptr %.sroa.02688.3 to i64
  %i.tn = sub i64 %i.tl, %i.tm                    ; 4 uses
  %i.to = icmp eq i64 %i.tn, 9223372036854775792
  br i1 %i.to, label %bb.eh, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #31
          to label %.noexc1073 unwind label %.loopexit.split-lp2986

.noexc1073:                                       ; preds = %bb.eh
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.eg
  %i.tp = ashr exact i64 %i.tn, 4                 ; 3 uses
  %.sroa.speculated.i.i.i1064 = call i64 @llvm.umax.i64(i64 %i.tp, i64 1)
  %i.tq = add nsw i64 %.sroa.speculated.i.i.i1064, %i.tp ; 2 uses
  %i.tr = icmp ult i64 %i.tq, %i.tp
  %i.ts = call i64 @llvm.umin.i64(i64 %i.tq, i64 576460752303423487)
  %i.tt = select i1 %i.tr, i64 576460752303423487, i64 %i.ts ; 3 uses
  %.not.i.i.i1065 = icmp ne i64 %i.tt, 0
  call void @llvm.assume(i1 %.not.i.i.i1065)
  %i.tu = shl nuw nsw i64 %i.tt, 4
  %i.tv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tu) #29
          to label %.noexc1074 unwind label %.loopexit2985 ; 5 uses

.noexc1074:                                       ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.tn
  store <4 x float> %i.tj, ptr %i.tw, align 4
  %.not10.i.i.i.i.i1066 = icmp eq ptr %.sroa.02688.3, %.sroa.252701.3
  br i1 %.not10.i.i.i.i.i1066, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i1067

.lr.ph.i.i.i.i.i1067:                             ; preds = %.noexc1074, %.lr.ph.i.i.i.i.i1067
  %.012.i.i.i.i.i1068 = phi ptr [ %i.ty, %.lr.ph.i.i.i.i.i1067 ], [ %i.tv, %.noexc1074 ] ; 2 uses
  %.0911.i.i.i.i.i1069 = phi ptr [ %i.tx, %.lr.ph.i.i.i.i.i1067 ], [ %.sroa.02688.3, %.noexc1074 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i1068, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i1069, i64 16, i1 false), !alias.scope !28
  %i.tx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1069, i64 16 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1068, i64 16 ; 2 uses
  %.not.i.i.i.i.i1070 = icmp eq ptr %i.tx, %.sroa.252701.3
  br i1 %.not.i.i.i.i.i1070, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i1067, !llvm.loop !32

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i1067, %.noexc1074
  %.0.lcssa.i.i.i.i.i1071 = phi ptr [ %i.tv, %.noexc1074 ], [ %i.ty, %.lr.ph.i.i.i.i.i1067 ]
  %i.tz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i1071, i64 16
  %.not.i23.i.i1072 = icmp eq ptr %.sroa.02688.3, null
  br i1 %.not.i23.i.i1072, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02688.3, i64 noundef %i.tn) #28
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ei, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %i.tv, i64 %i.tt
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit.backedge

.loopexit2985:                                    ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit2987 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2991

.loopexit.split-lp2986:                           ; preds = %bb.eh
  %lpad.loopexit.split-lp2988 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2991

bb.ej:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1054.tail, %bb.dw
  %i.ub = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.30, ptr noundef nonnull dereferenceable(1) %i.rv, i64 noundef 4) #30
  %.not.i1075 = icmp eq i32 %i.ub, 0
  br i1 %.not.i1075, label %bb.ek, label %sub_02892

bb.ek:                                            ; preds = %bb.ej
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rv, i64 4 ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 1             ; 2 uses
  switch i8 %i.ud, label %sub_02892 [
    i8 32, label %bb.el
    i8 9, label %bb.el
    i8 13, label %bb.el
    i8 10, label %bb.el
    i8 0, label %bb.el
    i8 12, label %bb.el
  ]

bb.el:                                            ; preds = %bb.ek, %bb.ek, %bb.ek, %bb.ek, %bb.ek, %bb.ek
  %.not11.i1077 = icmp eq i8 %i.ud, 0
  %i.ue = getelementptr inbounds nuw i8, ptr %i.rv, i64 5
  %storemerge.i1078 = select i1 %.not11.i1077, ptr %i.uc, ptr %i.ue ; 4 uses
  store ptr %storemerge.i1078, ptr %i.j, align 8
  %i.uf = ptrtoaddr ptr %storemerge.i1078 to i64
  %i.ug = sub i64 %i.fj, %i.uf
  %scevgep.i.i1080 = getelementptr i8, ptr %storemerge.i1078, i64 %i.ug
  br label %bb.em

bb.em:                                            ; preds = %bb.eo, %bb.el
  %.0.i.i1081 = phi ptr [ %storemerge.i1078, %bb.el ], [ %i.ui, %bb.eo ] ; 4 uses
  %i.uh = load i8, ptr %.0.i.i1081, align 1
  switch i8 %i.uh, label %.critedge.i.i1083 [
    i8 32, label %bb.en
    i8 9, label %bb.en
  ]

bb.en:                                            ; preds = %bb.em, %bb.em
  %.not.i.i1082 = icmp eq ptr %.0.i.i1081, %i.bg
  br i1 %.not.i.i1082, label %.critedge.i.i1083, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ui = getelementptr inbounds nuw i8, ptr %.0.i.i1081, i64 1
  br label %bb.em, !llvm.loop !7

.critedge.i.i1083:                                ; preds = %bb.en, %bb.em
  %.0.lcssa.i.i1084 = phi ptr [ %.0.i.i1081, %bb.em ], [ %scevgep.i.i1080, %bb.en ] ; 7 uses
  store ptr %.0.lcssa.i.i1084, ptr %i.j, align 8
  %i.uj = load i8, ptr %.0.lcssa.i.i1084, align 1
  switch i8 %i.uj, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1086 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit1086:             ; preds = %.critedge.i.i1083
  %i.uk = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i1084, ptr noundef nonnull align 4 dereferenceable(4) %22, i1 noundef zeroext true)
          to label %bb.ep unwind label %.loopexit2990 ; 2 uses

bb.ep:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1086
  store ptr %i.uk, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread:      ; preds = %.critedge.i.i1083, %.critedge.i.i1083, %.critedge.i.i1083, %.critedge.i.i1083, %bb.ep
  %i.ul = phi ptr [ %.0.lcssa.i.i1084, %.critedge.i.i1083 ], [ %.0.lcssa.i.i1084, %.critedge.i.i1083 ], [ %.0.lcssa.i.i1084, %.critedge.i.i1083 ], [ %.0.lcssa.i.i1084, %.critedge.i.i1083 ], [ %i.uk, %bb.ep ] ; 3 uses
  %i.um = ptrtoaddr ptr %i.ul to i64
  %i.un = sub i64 %i.fj, %i.um
  %scevgep.i.i1088 = getelementptr i8, ptr %i.ul, i64 %i.un
  br label %bb.eq

bb.eq:                                            ; preds = %bb.es, %_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread
  %.0.i.i1089 = phi ptr [ %i.ul, %_ZN6Assimp9IsLineEndIcEEbT_.exit1086.thread ], [ %i.up, %bb.es ] ; 4 uses
  %i.uo = load i8, ptr %.0.i.i1089, align 1
  switch i8 %i.uo, label %.critedge.i.i1091 [
    i8 32, label %bb.er
    i8 9, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq, %bb.eq
  %.not.i.i1090 = icmp eq ptr %.0.i.i1089, %i.bg
  br i1 %.not.i.i1090, label %.critedge.i.i1091, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.up = getelementptr inbounds nuw i8, ptr %.0.i.i1089, i64 1
  br label %bb.eq, !llvm.loop !7

.critedge.i.i1091:                                ; preds = %bb.er, %bb.eq
  %.0.lcssa.i.i1092 = phi ptr [ %.0.i.i1089, %bb.eq ], [ %scevgep.i.i1088, %bb.er ] ; 7 uses
  store ptr %.0.lcssa.i.i1092, ptr %i.j, align 8
  %i.uq = load i8, ptr %.0.lcssa.i.i1092, align 1
  switch i8 %i.uq, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1094 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit1094:             ; preds = %.critedge.i.i1091
  %i.ur = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i1092, ptr noundef nonnull align 4 dereferenceable(4) %i.fu, i1 noundef zeroext true)
          to label %bb.et unwind label %.loopexit2990 ; 2 uses

bb.et:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1094
  store ptr %i.ur, ptr %i.j, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread:      ; preds = %.critedge.i.i1091, %.critedge.i.i1091, %.critedge.i.i1091, %.critedge.i.i1091, %bb.et
  %i.us = phi ptr [ %.0.lcssa.i.i1092, %.critedge.i.i1091 ], [ %.0.lcssa.i.i1092, %.critedge.i.i1091 ], [ %.0.lcssa.i.i1092, %.critedge.i.i1091 ], [ %.0.lcssa.i.i1092, %.critedge.i.i1091 ], [ %i.ur, %bb.et ] ; 3 uses
  %i.ut = ptrtoaddr ptr %i.us to i64
  %i.uu = sub i64 %i.fj, %i.ut
  %scevgep.i.i1096 = getelementptr i8, ptr %i.us, i64 %i.uu
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ew, %_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread
  %.0.i.i1097 = phi ptr [ %i.us, %_ZN6Assimp9IsLineEndIcEEbT_.exit1094.thread ], [ %i.uw, %bb.ew ] ; 4 uses
  %i.uv = load i8, ptr %.0.i.i1097, align 1
  switch i8 %i.uv, label %.critedge.i.i1099 [
    i8 32, label %bb.ev
    i8 9, label %bb.ev
  ]

bb.ev:                                            ; preds = %bb.eu, %bb.eu
  %.not.i.i1098 = icmp eq ptr %.0.i.i1097, %i.bg
  br i1 %.not.i.i1098, label %.critedge.i.i1099, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.uw = getelementptr inbounds nuw i8, ptr %.0.i.i1097, i64 1
  br label %bb.eu, !llvm.loop !7

.critedge.i.i1099:                                ; preds = %bb.ev, %bb.eu
  %.0.lcssa.i.i1100 = phi ptr [ %.0.i.i1097, %bb.eu ], [ %scevgep.i.i1096, %bb.ev ] ; 3 uses
  store ptr %.0.lcssa.i.i1100, ptr %i.j, align 8
  %i.ux = load i8, ptr %.0.lcssa.i.i1100, align 1
end_hunk_0
begin_hunk_1_@_Z18ai_str_toprintableB5cxx11PKcic:bb.a
  br label %.critedge24

.critedge:                                        ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.an = load i64, ptr %i.f, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.critedge24

.critedge24:                                      ; preds = %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.h
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %i.c = add i8 %i.b, -58
  %or.cond = icmp ult i8 %i.c, -10
  br i1 %or.cond, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %narrow.us134 = add nsw i8 %i.b, -48
  %i.d = zext nneg i8 %narrow.us134 to i64
  br label %bb.b

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.e = mul i64 %i.i, 10
  %narrow.us = add nsw i8 %i.m, -48
  %i.f = zext nneg i8 %narrow.us to i64
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.i
  br i1 %i.h, label %.split.us, label %bb.b, !llvm.loop !161

bb.b:                                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.i = phi i64 [ %i.d, %.lr.ph.split.us.preheader ], [ %i.g, %.lr.ph.split.us ] ; 3 uses
  %i.j = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.k, %.lr.ph.split.us ]
  %.02663.us135 = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.l, %.lr.ph.split.us ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  %i.l = add i32 %.02663.us135, 1                 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1               ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond42.us = icmp ult i8 %i.n, -10
  br i1 %or.cond42.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !161

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %2, align 4
  %narrow132 = add nsw i8 %i.b, -48
  %i.p = zext nneg i8 %narrow132 to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30
  %i.s = trunc i64 %i.r to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %0, i32 noundef %i.s, i8 noundef signext 63)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(13) @.str.101, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.102)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.021 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.021, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.021, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #27
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46 = phi { ptr, i32 } [ %.pn47, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn46

bb.i:                                             ; preds = %bb.l
  %i.aa = mul i64 %i.af, 10
  %narrow = add nsw i8 %i.aq, -48
  %i.ab = zext nneg i8 %narrow to i64
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.af
  br i1 %i.ad, label %.split.us, label %bb.j, !llvm.loop !161

.split.us:                                        ; preds = %bb.i, %.lr.ph.split.us
  %.lcssa108.sink = phi ptr [ %i.k, %.lr.ph.split.us ], [ %i.ah, %bb.i ]
  store ptr %.lcssa108.sink, ptr %i.a, align 8
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 1 dereferenceable(24) @.str.103, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.104)
  br label %.thread

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.af = phi i64 [ %i.p, %.lr.ph.split ], [ %i.ac, %bb.i ] ; 5 uses
  %i.ag = phi ptr [ %0, %.lr.ph.split ], [ %i.ah, %bb.i ]
  %.02663133 = phi i32 [ 0, %.lr.ph.split ], [ %i.ai, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 8 uses
  %i.ai = add nuw i32 %.02663133, 1               ; 3 uses
  %i.aj = icmp eq i32 %i.o, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ah, ptr %i.a, align 8
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ak = load i8, ptr %i.ah, align 1
  %i.al = add i8 %i.ak, -48
  %or.cond4370 = icmp ult i8 %i.al, 10
  br i1 %or.cond4370, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %i.am = phi ptr [ %i.an, %.lr.ph71 ], [ %i.ah, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond43 = icmp ult i8 %i.ap, 10
  br i1 %or.cond43, label %.lr.ph71, label %.critedge, !llvm.loop !162

.critedge:                                        ; preds = %.lr.ph71, %.preheader
  %.lcssa = phi ptr [ %i.ah, %.preheader ], [ %i.an, %.lr.ph71 ]
  store ptr %.lcssa, ptr %1, align 8
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond42 = icmp ult i8 %i.ar, -10
  br i1 %or.cond42, label %._crit_edge, label %bb.i, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %.lcssa110.sink = phi ptr [ %i.k, %bb.b ], [ %i.ah, %bb.l ] ; 2 uses
  %.026.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ai, %bb.l ]
  %.024.lcssa = phi i64 [ %i.i, %bb.b ], [ %i.af, %bb.l ] ; 2 uses
  store ptr %.lcssa110.sink, ptr %i.a, align 8
  %.not39 = icmp eq ptr %1, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  store ptr %.lcssa110.sink, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.026.lcssa, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.k, %.split.us, %bb.n, %bb.o
  %.2 = phi i64 [ %.024.lcssa, %bb.n ], [ %.024.lcssa, %bb.o ], [ %i.af, %.critedge ], [ %i.af, %bb.k ], [ 0, %.split.us ]
  ret i64 %.2

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #27
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #27
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #27
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(82) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(82) %2) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(82) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #27
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI9aiColor4tIfESaIS1_EEaSERKS3_:bb.a
bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 16
  br i1 %i.y, label %bb.h, label %bb.i, !prof !192

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 16
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.x, 16
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !192

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %i.x, 16
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit

_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit:     ; preds = %bb.l, %bb.m, %bb.n
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !214

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %0, align 4        ; 4 uses
  %i.d = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = extractelement <2 x float> %i.c, i64 0   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load <2 x float>, ptr %i.a, align 4      ; 5 uses
  %i.j = load float, ptr %i.g, align 4            ; 5 uses
  %i.k = load <2 x float>, ptr %i.b, align 4      ; 6 uses
  %i.l = load float, ptr %i.h, align 4            ; 2 uses
  %i.m = extractelement <2 x float> %i.i, i64 0   ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.i, %i.k
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = tail call float @llvm.fmuladd.f32(float %i.f, float %i.e, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.o) ; 5 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fcmp ogt float %i.q, f0x3F7FFF58
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp ogt float %i.f, 0.000000e+00
  %i.t = fneg float %i.f
  %i.u = select i1 %i.s, float %i.f, float %i.t   ; 2 uses
  %i.v = fcmp ogt float %i.m, 0.000000e+00
  %i.w = fneg float %i.m
  %i.x = select i1 %i.v, float %i.m, float %i.w   ; 2 uses
  %i.y = fcmp ogt float %i.j, 0.000000e+00
  %i.z = fneg float %i.j
  %i.aa = select i1 %i.y, float %i.j, float %i.z  ; 2 uses
  %i.ab = fcmp olt float %i.u, %i.x
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = fcmp olt float %i.u, %i.aa
  br i1 %i.ac, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.ad = fcmp olt float %i.x, %i.aa
  br i1 %i.ad, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %i.ae = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00, float undef, float undef>, %bb.d ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.c ] ; 2 uses
  %i.af = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.ag = phi <2 x float> [ zeroinitializer, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.c ] ; 2 uses
  %i.ah = shufflevector <2 x float> %i.k, <2 x float> %i.d, <2 x i32> <i32 1, i32 2>
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 5 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ak = fneg float %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float 1.000000e+00, i64 3
  %i.aq = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ar = insertelement <4 x float> %i.aq, float 0.000000e+00, i64 3
  %i.as = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ar, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.au = fsub <4 x float> %i.ap, %i.at           ; 13 uses
  %i.av = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ae, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.aw = shufflevector <4 x float> %i.ae, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ax = shufflevector <2 x float> %i.d, <2 x float> %i.k, <4 x i32> <i32 1, i32 3, i32 3, i32 poison> ; 2 uses
  %i.ay = insertelement <4 x float> %i.ax, float 0.000000e+00, i64 3
  %i.az = fsub <4 x float> %i.aw, %i.ay           ; 10 uses
  %i.ba = extractelement <4 x float> %i.au, i64 1 ; 2 uses
  %i.bb = extractelement <4 x float> %i.az, i64 1 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.au, <4 x float> %i.az, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.bd = fmul <2 x float> %i.bc, %i.bc
  %i.be = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bf = shufflevector <4 x float> %i.au, <4 x float> %i.be, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = shufflevector <4 x float> %i.au, <4 x float> %i.az, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bh, <2 x float> %i.bg)
  %i.bj = fdiv <2 x float> splat (float 2.000000e+00), %i.bi ; 4 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %i.bl = fneg float %i.bk                        ; 4 uses
  %i.bm = insertelement <2 x float> %i.af, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bo = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bp = fsub <4 x float> %i.bn, %i.bo
  %i.bq = extractelement <2 x float> %i.bj, i64 1 ; 3 uses
  %i.br = fmul float %i.bk, %i.bq
  %shift = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop179 = fmul <4 x float> %shift, %i.az
  %i.bs = extractelement <4 x float> %foldExtExtBinop179, i64 0
  %i.bt = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x float> %i.bt, float 0.000000e+00, i64 1
  %i.bv = shufflevector <2 x float> %i.ai, <2 x float> <float poison, float -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bs, i64 0
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bw)
  %i.by = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bz = insertelement <2 x float> %i.by, float 0.000000e+00, i64 1
  %i.ca = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x float> %i.ca, float -0.000000e+00, i64 1
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cb, <2 x float> %i.bx)
  %i.cd = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.br, i64 0
  %i.ce = fmul <2 x float> %i.cc, %i.cd           ; 3 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cg = fmul float %i.bq, %i.aj
  %i.ch = fmul float %i.cg, %i.ak
  %i.ci = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.cj = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = fmul <4 x float> %i.ci, %i.ck
  %i.cm = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cn = shufflevector <4 x float> %i.be, <4 x float> %i.az, <4 x i32> <i32 1, i32 4, i32 1, i32 4> ; 2 uses
  %i.co = fmul <4 x float> %i.cm, %i.cn
  %i.cp = shufflevector <4 x float> %i.az, <4 x float> %i.be, <4 x i32> <i32 0, i32 5, i32 1, i32 0>
  %i.cq = fneg <4 x float> %i.cp
  %i.cr = fmul <4 x float> %i.co, %i.cq
  %i.cs = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cs, <4 x float> %i.cr)
  %i.cu = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul <4 x float> %i.cu, %i.cn
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.cs, <4 x float> %i.ct)
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.cx, ptr %i.al, align 4
  %i.cy = load float, ptr %i.an, align 4
  %i.cz = fadd float %i.cy, 1.000000e+00
  store float %i.cz, ptr %i.an, align 4
  %i.da = fneg <2 x float> %i.ai
  %i.db = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.au, <4 x float> %i.db, <2 x i32> <i32 0, i32 4>
  %i.dd = insertelement <2 x float> %i.ai, float %i.bl, i64 0
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = fmul float %i.bq, %i.bb
  %i.dg = fmul float %i.ba, %i.bl
  %3 = fneg float %i.bb
  %i.dh = fmul float %i.df, %3
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.ba, float %i.ch)
  %i.dj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.di, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.by, <2 x float> %i.dk) ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 1
  %i.dn = fadd float %i.dm, 1.000000e+00
  store float %i.dn, ptr %2, align 4
  %i.do = shufflevector <2 x float> %i.bj, <2 x float> %i.dl, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.dp = fmul <4 x float> %i.do, %i.az
  %i.dq = fneg <4 x float> %i.az
  %i.dr = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dq, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.ds = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.du = fmul <4 x float> %i.dp, %i.dt
  %i.dv = fmul <4 x float> %i.cf, %i.az
  %i.dw = shufflevector <4 x float> %i.au, <4 x float> %i.db, <4 x i32> <i32 2, i32 0, i32 0, i32 4>
  %i.dx = fmul <4 x float> %i.dw, %i.bp
  %i.dy = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dy, <4 x float> %i.du)
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.au, <4 x float> %i.dz)
  store <4 x float> %i.ea, ptr %i.am, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.eb = extractelement <2 x float> %i.k, i64 0
  %i.ec = fneg float %i.eb
  %i.ed = fmul float %i.j, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.m, float %i.l, float %i.ed) ; 4 uses
  %i.ef = fadd float %i.p, 1.000000e+00
  %i.eg = fdiv float 1.000000e+00, %i.ef          ; 3 uses
  %i.eh = fmul float %i.ee, %i.eg                 ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.ee, float %i.p)
  store float %i.ei, ptr %2, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = shufflevector <2 x float> %i.k, <2 x float> %i.d, <2 x i32> <i32 1, i32 2>
  %i.em = fneg <2 x float> %i.el
  %i.en = shufflevector <2 x float> %i.c, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.eo = fmul <2 x float> %i.en, %i.em
  %i.ep = shufflevector <2 x float> %i.i, <2 x float> %i.k, <2 x i32> <i32 1, i32 2>
  %i.eq = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 0, i32 2>
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.eq, <2 x float> %i.eo) ; 6 uses
  %i.es = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.et = fmul float %i.es, %i.eg                 ; 2 uses
  %i.eu = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ev = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.ev, %i.ew           ; 3 uses
  %i.ey = extractelement <2 x float> %i.er, i64 0 ; 3 uses
  %i.ez = fmul float %i.ey, %i.et                 ; 2 uses
  %foldExtExtBinop181 = fsub <2 x float> %i.ex, %i.er
  %i.fa = extractelement <2 x float> %foldExtExtBinop181, i64 1
  store float %i.fa, ptr %i.ej, align 4
  %i.fb = fadd <2 x float> %i.er, %i.ex
  store <2 x float> %i.fb, ptr %i.ek, align 4
  %i.fc = fmul float %i.ey, %i.eg
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ey, float %i.p)
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.fd, ptr %i.fe, align 4
  %i.ff = fsub float %i.ez, %i.ee
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ff, ptr %i.fg, align 4
  %foldExtExtBinop183 = fsub <2 x float> %i.ex, %i.er
  %i.fh = extractelement <2 x float> %foldExtExtBinop183, i64 0
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.fh, ptr %i.fi, align 4
  %i.fj = fadd float %i.ee, %i.ez
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.fj, ptr %i.fk, align 4
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.et, float %i.es, float %i.p)
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.fl, ptr %i.fm, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12aiMatrix3x3tIfEixEj.exit.2, %bb.f
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{null, null}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!16 = distinct !{!16, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!19 = distinct !{!19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!30 = distinct !{!30, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!31 = distinct !{!31, !30, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!32 = distinct !{!32, !5}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!36 = distinct !{!36, !35, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!37 = distinct !{!37, !5}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!40 = distinct !{!40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!41 = distinct !{!41, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
end_hunk_2
