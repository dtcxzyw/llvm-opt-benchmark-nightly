Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/glob?download=true
inline.NumInlined: 1084
inline.NumDeleted: 505
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNKSt6ranges11__unique_fnclITkSt10permutableN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt29indirect_equivalence_relationINSt8__detail11__projectedISD_T1_E6__typeEENS_8equal_toEEENS_8subrangeISD_SD_Xqu18sized_sentinel_forISD_SD_ELNS_13subrange_kindE1ELST_0EEEESD_T0_T2_SO_:bb.a
.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = icmp eq ptr %i.b, %2
  br i1 %i.c, label %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %1, i64 %3
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert16.i, align 8, !tbaa !26
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i, %.lr.ph.preheader.i
  %i.d = phi i64 [ %i.i, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.e = phi ptr [ %i.o, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i ], [ %i.b, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.09.012.i = phi ptr [ %i.e, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.09.012.i, i64 %3
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = icmp eq i64 %i.d, %i.i
  br i1 %i.j, label %bb.b, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = icmp eq i64 %i.d, 0
  br i1 %i.k, label %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i

_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !33
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.m, ptr %i.l, i64 %i.d)
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.n, label %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i

_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i: ; preds = %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.p = icmp eq ptr %i.o, %2
  br i1 %i.p, label %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit, label %.lr.ph.i, !llvm.loop !330

_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit: ; preds = %bb.b, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i, %bb.a, %.preheader.i
  %.sroa.0.1.i = phi ptr [ %1, %bb.a ], [ %i.b, %.preheader.i ], [ %.sroa.09.012.i, %bb.b ], [ %i.o, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread11.i ], [ %.sroa.09.012.i, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i ] ; 7 uses
  %i.q = icmp eq ptr %.sroa.0.1.i, %2
  br i1 %i.q, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 80 ; 3 uses
  %i.s = icmp eq ptr %i.r, %2
  br i1 %i.s, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 40
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread
  %i.u = phi ptr [ %i.bj, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread ], [ %i.r, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.022 = phi ptr [ %.sroa.0.1, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread ], [ %.sroa.0.1.i, %.lr.ph.preheader ] ; 10 uses
  %.sroa.013.021 = phi ptr [ %i.u, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread ], [ %i.t, %.lr.ph.preheader ] ; 7 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.022, i64 %3 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread20

bb.d:                                             ; preds = %.lr.ph
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit

_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !33
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %i.af = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.af, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread, label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread20

_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread20: ; preds = %.lr.ph, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 40 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 56 ; 4 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !33  ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 56 ; 6 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread20
  br i1 %i.am, label %bb.e, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread20
  br i1 %i.am, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 48 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %.not21.i.i = icmp eq ptr %.sroa.013.021, %.sroa.0.022
  br i1 %.not21.i.i, label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit, label %bb.f, !prof !76

bb.f:                                             ; preds = %bb.e
  switch i64 %i.ao, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !10
  store i8 %i.aq, ptr %i.ah, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 48
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !26
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !10
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !33
  br label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 48
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !26
  %i.ay = load i64, ptr %i.al, align 8, !tbaa !10
  store i64 %i.ay, ptr %i.ai, align 8, !tbaa !10
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !10
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 48
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !26
  %i.bd = load i64, ptr %i.al, align 8, !tbaa !10
  store i64 %i.bd, ptr %i.ai, align 8, !tbaa !10
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !33
  store i64 %i.az, ptr %i.al, align 8, !tbaa !10
  br label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.al, ptr %i.u, align 8, !tbaa !33
  br label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit

_ZN4mold4Glob14LiteralPatternaSEOS1_.exit:        ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.i, %bb.j
  %i.be = phi ptr [ %i.ah, %bb.i ], [ %i.al, %bb.j ], [ %i.ak, %bb.e ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 48
  store i64 0, ptr %i.bf, align 8, !tbaa !26
  store i8 0, ptr %i.be, align 1, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 72
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 72
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !78
  br label %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread

_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread: ; preds = %bb.d, %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.022, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit ], [ %i.ag, %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit ], [ %.sroa.0.022, %bb.d ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, %2
  br i1 %i.bk, label %._crit_edge, label %.lr.ph, !llvm.loop !331

._crit_edge:                                      ; preds = %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread, %bb.c
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.1.i, %bb.c ], [ %.sroa.0.1, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread ]
  %.lcssa = phi ptr [ %i.r, %bb.c ], [ %i.bj, %_ZSt8__invokeIRNSt6ranges8equal_toEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 40
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit, %._crit_edge
  %.sroa.019.0 = phi ptr [ %i.bl, %._crit_edge ], [ %.sroa.0.1.i, %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit ]
  %.sroa.3.0 = phi ptr [ %.lcssa, %._crit_edge ], [ %.sroa.0.1.i, %_ZNKSt6ranges18__adjacent_find_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt25indirect_binary_predicateINSt8__detail11__projectedISD_T1_E6__typeESQ_ENS_8equal_toEEESD_SD_T0_T2_SO_.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE15_M_erase_at_endEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.d = icmp eq ptr %2, %i.c
  br i1 %i.d, label %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit_crit_edge, label %bb.c

._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit_crit_edge: ; preds = %bb.b
  %.pre11 = ptrtoint ptr %2 to i64                ; 2 uses
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.i = udiv exact i64 %i.g, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.an, %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.am, %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 11 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.al, %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i ], [ %2, %.lr.ph.preheader.i.i.i.i.i ] ; 12 uses
  %i.j = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !33 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !33 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.o, label %bb.d, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i, label %bb.e, !prof !76

bb.e:                                             ; preds = %bb.d
  switch i64 %i.q, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.m, align 1, !tbaa !10
  store i8 %i.s, ptr %i.j, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load i64, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !26
  %i.v = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !10
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !33
  br label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.m, ptr %.0811.i.i.i.i.i, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26
  store i64 %i.z, ptr %i.x, align 8, !tbaa !26
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !10
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !10
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !10
  store ptr %i.m, ptr %.0811.i.i.i.i.i, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !26
  %i.af = load i64, ptr %i.n, align 8, !tbaa !10
  store i64 %i.af, ptr %i.k, align 8, !tbaa !10
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.j, ptr %.0910.i.i.i.i.i, align 8, !tbaa !33
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !10
  br label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.n, ptr %.0910.i.i.i.i.i, align 8, !tbaa !33
  br label %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i

_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i, %bb.d
  %i.ag = phi ptr [ %i.j, %bb.h ], [ %i.n, %bb.i ], [ %i.m, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !26
  store i8 0, ptr %i.ag, align 1, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.an = add nsw i64 %.013.i.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit, !llvm.loop !332

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %_ZN4mold4Glob14LiteralPatternaSEOS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %.pre12 = ptrtoint ptr %.pre to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit, %bb.c
  %.pre-phi13 = phi i64 [ %.pre11, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit_crit_edge ], [ %.pre12, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.e, %bb.c ]
  %.pre-phi = phi i64 [ %.pre11, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit_crit_edge ], [ %i.f, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.f, %bb.c ]
  %i.ap = phi ptr [ %2, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit_crit_edge ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.c, %bb.c ] ; 2 uses
  %i.aq = sub i64 %.pre-phi13, %.pre-phi
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq ; 3 uses
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt8_DestroyIN4mold4Glob14LiteralPatternEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN4mold4Glob14LiteralPatternEEvPT_.exit.i.i.i ], [ %i.ar, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyIN4mold4Glob14LiteralPatternEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !10
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #17
  br label %_ZSt8_DestroyIN4mold4Glob14LiteralPatternEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4mold4Glob14LiteralPatternEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ap
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4mold4Glob14LiteralPatternEEvT_S4_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !333

_ZSt8_DestroyIPN4mold4Glob14LiteralPatternEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIN4mold4Glob14LiteralPatternEEvPT_.exit.i.i.i
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !79
  br label %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN4mold4Glob14LiteralPatternEEvT_S4_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %bb.a
  ret ptr %1
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !32}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"_ZTSN4mold4Glob7Pattern4KindE", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTSN4mold4Glob7Pattern5TokenE", !9, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7Pattern5TokenESaIS3_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!14, !13, i64 16}
!17 = !{!"p1 omnipotent char", !9, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !5, i64 16}
!21 = !{!"_ZTSSt12_Base_bitsetILm4EE", !5, i64 0}
!22 = !{!"_ZTSSt6bitsetILm256EE", !21, i64 0}
!23 = !{!"_ZTSN4mold4Glob7Pattern5TokenE", !11, i64 0, !20, i64 8, !22, i64 40}
!24 = !{!23, !11, i64 0}
!25 = !{!18, !17, i64 0}
!26 = !{!20, !19, i64 8}
!27 = !{!13, !13, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSSt22_Optional_payload_baseIN4mold4Glob7PatternEE", !5, i64 0, !28, i64 32}
!30 = !{!29, !28, i64 32}
!31 = !{!19, !19, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!20, !17, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7Pattern5TokenESaIS3_EE12_Vector_implE", !14, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN4mold4Glob7Pattern5TokenESaIS3_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE", !35, i64 0}
!37 = !{!"_ZTSN4mold4Glob7PatternE", !36, i64 0, !19, i64 24}
!38 = !{!37, !19, i64 24}
!39 = !{!14, !13, i64 0}
!40 = !{!"p1 long", !9, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !40, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!45 = !{!44, !40, i64 8}
!46 = !{!44, !40, i64 0}
!47 = !{!40, !40, i64 0}
!48 = !{!41, !40, i64 16}
!49 = !{!"_ZTSSt9once_flag", !6, i64 0}
!50 = !{!"p1 _ZTSN4mold4Glob14LiteralPatternE", !9, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE", !53, i64 0}
!55 = !{!"p1 _ZTSN4mold4Glob7PatternE", !9, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIN4mold4Glob7PatternESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !41, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseImSaImEE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorImSaImEE", !61, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !44, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIlSaIlEE", !64, i64 0}
!66 = !{!"_ZTSN4mold4Glob3NfaE", !62, i64 0, !62, i64 24, !62, i64 48, !62, i64 72, !65, i64 96}
!67 = !{!"_ZTSSt5arrayIiLm256EE", !5, i64 0}
!68 = !{!"p1 _ZTSN4mold11AhoCorasick8TrieNodeE", !9, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE", !71, i64 0}
!73 = !{!"_ZTSN4mold11AhoCorasickE", !67, i64 0, !72, i64 1024}
!74 = !{!"_ZTSN4mold4GlobE", !49, i64 0, !28, i64 4, !28, i64 5, !19, i64 8, !54, i64 16, !54, i64 40, !54, i64 64, !59, i64 88, !66, i64 112, !73, i64 232}
!75 = !{!74, !19, i64 8}
!76 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!77 = !{!"_ZTSN4mold4Glob14LiteralPatternE", !20, i64 0, !19, i64 32}
!78 = !{!77, !19, i64 32}
!79 = !{!51, !50, i64 8}
!80 = !{!51, !50, i64 16}
!81 = !{!56, !55, i64 8}
!82 = !{!56, !55, i64 16}
!83 = !{!"p1 _ZTSN4mold4GlobE", !9, i64 0}
!84 = !{!"_ZTSZN4mold4Glob4findESt17basic_string_viewIcSt11char_traitsIcEEE3$_0", !83, i64 0}
!85 = !{!84, !83, i64 0}
!86 = !{!9, !9, i64 0}
!87 = !{!50, !50, i64 0}
!88 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!89 = !{!56, !55, i64 0}
!90 = !{!"any p2 pointer", !9, i64 0}
!91 = !{!"p2 _ZTSN4mold7CounterE", !90, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!92, !91, i64 0}
!94 = !{!92, !91, i64 16}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !101}
!100 = distinct !{!100, !32}
!101 = !{!"llvm.loop.peeled.count", i32 1}
!102 = distinct !{!102, !32, !105, !106}
!103 = distinct !{!103, !32, !105}
!104 = distinct !{!104, !32}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !32}
!110 = !{!"branch_weights", i32 1023, i32 1}
!111 = distinct !{!111, !32}
!112 = !{!74, !28, i64 4}
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = distinct !{!115, !32}
!116 = !{!55, !55, i64 0}
!117 = distinct !{!117, i1 true, !"_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_"}
end_hunk_0
