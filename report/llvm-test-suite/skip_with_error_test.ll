inline.NumInlined: 919
inline.NumDeleted: 288
begin_hunk_0_@_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE:bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.as, i64 noundef %i.at)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bd = load ptr, ptr %2, align 8, !tbaa !13, !alias.scope !33 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.k
  br i1 %i.be, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !18, !alias.scope !33
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #25
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !13    ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.d
  %i.bj = load ptr, ptr %2, align 8, !tbaa !13    ; 5 uses
  %i.bk = icmp eq ptr %i.bj, %i.k                 ; 2 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  br i1 %i.bk, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  br i1 %i.bk, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bl = load i64, ptr %i.l, align 8, !tbaa !23  ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  switch i64 %i.bl, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !18
  store i8 %i.bn, ptr %i.bh, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bo = load i64, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !23
  %i.bp = load ptr, ptr %1, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 0, ptr %i.bq, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bj, ptr %1, align 8, !tbaa !13
  %i.br = load <2 x i64>, ptr %i.l, align 8, !tbaa !18
  store <2 x i64> %i.br, ptr %i.e, align 8, !tbaa !18
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !18
  store ptr %i.bj, ptr %1, align 8, !tbaa !13
  %i.bt = load <2 x i64>, ptr %i.l, align 8, !tbaa !18
  store <2 x i64> %i.bt, ptr %i.e, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !13
  store i64 %i.bs, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bu = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bh, %bb.m ], [ %i.k, %bb.n ]
  store i64 0, ptr %i.l, align 8, !tbaa !23
  store i8 0, ptr %i.bu, align 1, !tbaa !18
  %i.bv = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.k
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bx = load i64, ptr %i.k, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 8), align 8, !tbaa !12 ; 13 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 16), align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !22
  %i.cc = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.d
  br i1 %i.cd, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14

bb.p:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.cg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14: ; preds = %bb.o
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !13
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !18
  %.pre = load i64, ptr %i.e, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14, %bb.p
  %i.ci = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14 ], [ %i.ce, %bb.p ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !23
  store ptr %i.d, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.e, align 8, !tbaa !23
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cl = load i8, ptr %i.f, align 8, !tbaa !25, !range !28, !noundef !29
  store i8 %i.cl, ptr %i.ck, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 56 ; 3 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !22
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.h
  br i1 %i.cp, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.cq = load i64, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !13
  %i.ct = load i64, ptr %i.h, align 8, !tbaa !18
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !18
  %.pre26 = load i64, ptr %i.i, align 8, !tbaa !23
  br label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i
  %i.cu = phi i64 [ %.pre26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i ], [ %i.cq, %bb.q ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !23
  store ptr %i.h, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.h, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  store ptr %i.cw, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 8), align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load ptr, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, align 8, !tbaa !8 ; 5 uses
  %i.cy = ptrtoint ptr %i.bz to i64
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.s, label %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #27
          to label %.noexc unwind label %.loopexit.split-lp2

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.dc = sdiv exact i64 %i.da, 72                ; 3 uses
  %i.dd = icmp eq ptr %i.bz, %i.cx                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dd, i64 1, i64 %i.dc
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dc ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dc
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 128102389400760775)
  %i.dh = select i1 %i.df, i64 128102389400760775, i64 %i.dg ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i, label %3

3:                                                ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %4 = mul nuw nsw i64 %i.dh, 72
  %5 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #28
          to label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i unwind label %.loopexit1

_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %3, %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %6 = phi ptr [ null, %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %5, %3 ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 %i.da ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !22
  %i.dk = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.d
  br i1 %i.dl, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.do, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !13
  %i.dp = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !18
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.t
  %i.dq = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dm, %bb.t ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !23
  store ptr %i.d, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.e, align 8, !tbaa !23
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dt = load i8, ptr %i.f, align 8, !tbaa !25, !range !28, !noundef !29
  store i8 %i.dt, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 56 ; 3 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !22
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.h
  br i1 %i.dx, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.dy = load i64, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.ea, i1 false)
  br label %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !13
  %i.eb = load i64, ptr %i.h, align 8, !tbaa !18
  store i64 %i.eb, ptr %i.dv, align 8, !tbaa !18
  %.pre6.i.i.i = load i64, ptr %i.i, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i

_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i, %bb.u
  %i.ec = phi i64 [ %i.dy, %bb.u ], [ %.pre6.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !23
  store ptr %i.h, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.h, align 8, !tbaa !18
  br i1 %i.dd, label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %6, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i ] ; 9 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.fh, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.cx, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ee = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ee, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !36, !noalias !39
  %i.ef = load ptr, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !39, !noalias !36 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !23, !alias.scope !39, !noalias !36 ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nuw nsw i64 %i.ej, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.eg, i64 %i.el, i1 false), !alias.scope !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.ef, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !36, !noalias !39
  %i.em = load i64, ptr %i.eg, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  store i64 %i.em, ptr %i.ee, align 8, !tbaa !18, !alias.scope !36, !noalias !39
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.v
  %i.en = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ej, %bb.v ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !23, !alias.scope !36, !noalias !39
  store ptr %i.eg, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !39, !noalias !36
  store i64 0, ptr %i.eo, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  store i8 0, ptr %i.eg, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  %i.eq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 32
  %i.es = load i8, ptr %i.er, align 8, !tbaa !25, !range !28, !alias.scope !39, !noalias !36, !noundef !29
  store i8 %i.es, ptr %i.eq, align 8, !tbaa !25, !alias.scope !36, !noalias !39
  %i.et = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 56 ; 3 uses
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !22, !alias.scope !36, !noalias !39
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !13, !alias.scope !39, !noalias !36 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 56 ; 5 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !23, !alias.scope !39, !noalias !36 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ev, ptr noundef nonnull align 8 dereferenceable(1) %i.ex, i64 %i.fc, i1 false), !alias.scope !41
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !13, !alias.scope !36, !noalias !39
  %i.fd = load i64, ptr %i.ex, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  store i64 %i.fd, ptr %i.ev, align 8, !tbaa !18, !alias.scope !36, !noalias !39
  %.phi.trans.insert1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i, %bb.w
  %i.fe = phi i64 [ %i.fa, %bb.w ], [ %.pre2.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48
  store i64 %i.fe, ptr %i.fg, align 8, !tbaa !23, !alias.scope !36, !noalias !39
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !13, !alias.scope !39, !noalias !36
  store i64 0, ptr %i.ff, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  store i8 0, ptr %i.ex, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  %i.fh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fh, %i.bz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %6, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i ], [ %i.fi, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 72
  %.not.i32.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i32.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 16), align 8, !tbaa !21
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.fm) #25
  br label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, %bb.x
  store ptr %6, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, align 8, !tbaa !8
  store ptr %i.fj, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 8), align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %6, i64 %i.dh
  store ptr %i.fn, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 16), align 8, !tbaa !21
  %.pre27 = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.fo = icmp eq ptr %.pre27, %i.h
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit
  %i.fp = load i64, ptr %i.h, align 8, !tbaa !18
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %.pre27, i64 noundef %i.fq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.fr = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.d
  br i1 %i.fs, label %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17
  %i.ft = load i64, ptr %i.d, align 8, !tbaa !18
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit

_ZN12_GLOBAL__N_18TestCaseD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.fv = getelementptr inbounds nuw i8, ptr %.01025, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.fv, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.y

.loopexit1:                                       ; preds = %3
  %lpad.loopexit3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp2:                              ; preds = %bb.s
  %lpad.loopexit.split-lp4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit1, %.loopexit.split-lp2, %.body
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.body ], [ %lpad.loopexit3, %.loopexit1 ], [ %lpad.loopexit.split-lp4, %.loopexit.split-lp2 ]
  call fastcc void @_ZN12_GLOBAL__N_18TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18TestCaseD2Ev(ptr noundef nonnull readonly align 8 captures(address) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z23BM_error_before_runningRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !18
  invoke void @_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.h = load i64, ptr %0, align 64, !tbaa !43    ; 2 uses
  %.not.i = icmp slt i64 %i.h, 1
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !64

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !65, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66
  %.not = icmp ne i32 %i.m, 0
  %i.n = load i64, ptr %0, align 64               ; 2 uses
  %.not14.i = icmp slt i64 %i.n, 1
  %or.cond = select i1 %.not, i1 true, i1 %.not14.i
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %storemerge.in = phi i64 [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %bb.c ]
  %storemerge = add nsw i64 %storemerge.in, -1
  store i64 %storemerge, ptr %0, align 64, !tbaa !43
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 75, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE) #29
  unreachable

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !18
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_Z29BM_error_before_running_batchRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !18
  invoke void @_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.h = load i64, ptr %0, align 64, !tbaa !43    ; 3 uses
  %.not.i = icmp slt i64 %i.h, 17
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = add nsw i64 %i.h, -17
  br label %bb.g

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !65, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !66
  %.not = icmp ne i32 %i.n, 0
  %.pr.pre = load i64, ptr %0, align 64, !tbaa !43 ; 3 uses
  %.not14.i = icmp slt i64 %.pr.pre, 17
  %or.cond = select i1 %.not, i1 true, i1 %.not14.i
  br i1 %or.cond, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %.pr.pre, -17
  br label %bb.g

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %.pr.pre, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.not15.i = icmp eq i64 %i.p, 0
  br i1 %.not15.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %thread-pre-split
  %i.q = sub nsw i64 17, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.sink = phi i64 [ %i.i, %bb.b ], [ 0, %bb.f ], [ %i.o, %bb.e ]
  store i64 %.sink, ptr %0, align 64, !tbaa !43
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 84, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE) #29
  unreachable

end_hunk_0
