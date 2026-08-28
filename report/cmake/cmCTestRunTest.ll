Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestRunTest?download=true
inline.NumInlined: 2455
inline.NumDeleted: 757
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14cmCTestRunTest11ForkProcessEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.w = load i64, ptr %i.e, align 8, !tbaa !127  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !61
  %i.y = load ptr, ptr %3, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  invoke void @_ZN9cmProcess19SetWorkingDirectoryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(388) %i.g, ptr noundef nonnull align 8 %3)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !60
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !61 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !127
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i98, label %._crit_edge.i.i97

.noexc.i98:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !82
  %i.am = load i64, ptr %i.d, align 8, !tbaa !127
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !62
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %.noexc.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = phi ptr [ %i.al, %.noexc.i98 ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.aj, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit99
  ]

bb.e:                                             ; preds = %._crit_edge.i.i97
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !62
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit99

bb.f:                                             ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit99: ; preds = %._crit_edge.i.i97, %bb.e, %bb.f
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !127 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !61
  %i.ar = load ptr, ptr %4, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  invoke void @_ZN9cmProcess10SetCommandENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(388) %i.ae, ptr noundef nonnull align 8 %4)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit99
  %i.at = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ag
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.g
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !144 ; 3 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !563 ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.bf = icmp ugt i64 %i.be, 9223372036854775776
  br i1 %i.bf, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !613

.noexc.i.i:                                       ; preds = %bb.h
  call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #25
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !142
  %.pre378 = load ptr, ptr %i.az, align 8, !tbaa !142
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.bh = phi ptr [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pre378, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.bi = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.bj = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.bg, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.bj, ptr %5, align 8, !tbaa !563
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !143
  %i.bn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bi, ptr %i.bh, ptr noundef %i.bj)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !563   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !143
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.o, %.body, %bb.ds, %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.j ], [ %i.bo, %bb.k ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.cy, %bb.q ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn58, %.body ], [ %i.co, %bb.o ], [ %.pn83.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ds ], [ %i.ct, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.i
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !144
  invoke void @_ZN9cmProcess19SetCommandArgumentsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(388) %i.ax, ptr noundef nonnull align 8 %5)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %i.bu = load ptr, ptr %5, align 8, !tbaa !563   ; 3 uses
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bu, %bb.l ] ; 3 uses
  %i.bw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !82 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !62
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.cb, %i.bv
  br i1 %.not.i.i.i103, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !612

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !563
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.l
  %i.cc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bu, %bb.l ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cd = load ptr, ptr %i.bm, align 8, !tbaa !143
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.m
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 472
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !64, !range !304, !noundef !259
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 464
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !164 ; 4 uses
  %i.cn = fcmp uge double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.r, label %bb.s

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.n
  br i1 %i.cq, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.o
  %i.cr = load i64, ptr %i.n, align 8, !tbaa !62
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %common.resume

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit99
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ag
  br i1 %i.cv, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.p
  %i.cw = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #27
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  br label %common.resume

bb.r:                                             ; preds = %bb.n
  %30 = fcmp oeq double %i.cm, 0.000000e+00
  br i1 %30, label %31, label %bb.u

31:                                               ; preds = %bb.r
  br label %bb.u

bb.s:                                             ; preds = %bb.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !107
  %i.db = call double @_ZNK7cmCTest16GetGlobalTimeoutEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !107 ; 2 uses
  br i1 %i.dc, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  %i.de = call double @_ZNK7cmCTest16GetGlobalTimeoutEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.df = call double @_ZNK7cmCTest10GetTimeOutEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) ; 2 uses
  %i.dg = fcmp ogt double %i.df, 0.000000e+00
  br i1 %i.dg, label %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit, label %bb.u

_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit: ; preds = %bb.t
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit, %.thread, %bb.r, %31
  %.sroa.0358.3 = phi double [ %i.cm, %31 ], [ %i.cm, %bb.r ], [ %i.de, %.thread ], [ %i.df, %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit ], [ undef, %bb.t ] ; 2 uses
  %.sroa.13.3 = phi i1 [ false, %31 ], [ true, %bb.r ], [ true, %.thread ], [ true, %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit ], [ false, %bb.t ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !107
  %i.dj = call double @_ZNK7cmCTest23GetRemainingTimeAllowedEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di) ; 3 uses
  %i.dk = call double @_ZN7cmCTest11MaxDurationEv()
  %i.dl = fcmp une double %i.dj, %i.dk
  %i.dm = fadd double %i.dj, -1.200000e+02
  %.sroa.0347.0 = select i1 %i.dl, double %i.dm, double %i.dj ; 2 uses
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !107
  %i.do = call i64 @_ZNK7cmCTest11GetStopTimeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) ; 2 uses
  %.not = icmp eq i64 %i.do, 0
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #26
  %i.dq = sub nsw i64 %i.do, %i.dp
  %i.dr = srem i64 %i.dq, 86400000000000
  %i.ds = sitofp i64 %i.dr to double
  %i.dt = fdiv double %i.ds, 1.000000e+09
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !163 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !64, !range !304, !noundef !259
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZN9cmProcess14SetStopTimeoutENSt6chrono8durationIdSt5ratioILl1ELl1EEEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.dv, align 8, !tbaa !64
  br label %_ZN9cmProcess14SetStopTimeoutENSt6chrono8durationIdSt5ratioILl1ELl1EEEE.exit

_ZN9cmProcess14SetStopTimeoutENSt6chrono8durationIdSt5ratioILl1ELl1EEEE.exit: ; preds = %bb.v, %bb.w
  store double %i.dt, ptr %i.du, align 8, !tbaa !164
  br label %bb.x

bb.x:                                             ; preds = %_ZN9cmProcess14SetStopTimeoutENSt6chrono8durationIdSt5ratioILl1ELl1EEEE.exit, %bb.u
  %.inv = fcmp ogt double %.sroa.0347.0, 0.000000e+00
  %.sroa.0347.1 = select i1 %.inv, double %.sroa.0347.0, double 0.000000e+00 ; 3 uses
  br i1 %.sroa.13.3, label %bb.y, label %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit111

bb.y:                                             ; preds = %bb.x
  %i.dy = fcmp olt double %.sroa.0347.1, %.sroa.0358.3
  br i1 %i.dy, label %.thread374, label %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit111

.thread374:                                       ; preds = %bb.y
  br label %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit111

_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit111: ; preds = %bb.x, %bb.y, %.thread374
  %.sroa.0358.4 = phi double [ %.sroa.0358.3, %bb.y ], [ %.sroa.0347.1, %.thread374 ], [ %.sroa.0347.1, %bb.x ] ; 2 uses
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !163 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !64, !range !304, !noundef !259
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit111
  store i8 1, ptr %i.ea, align 8, !tbaa !64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt8optionalINSt6chrono8durationIdSt5ratioILl1ELl1EEEEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit111
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store double %.sroa.0358.4, ptr %i.ed, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNK9cmProcess18GetComputedTimeoutEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.259") align 8 %6, ptr noundef nonnull align 8 dereferenceable(388) %i.dz)
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !683, !range !304, !noundef !259
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ei = load double, ptr %i.eh, align 8
  %.sroa.0358.5 = select i1 %i.eg, double %i.ei, double %.sroa.0358.4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  %i.ej = load i32, ptr %i.h, align 8, !tbaa !12
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.ej)
          to label %bb.ab unwind label %bb.ai     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ab
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull @.str.75, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.en = invoke noundef i32 @_Z12cmDurationToIjET_NSt6chrono8durationIdSt5ratioILl1ELl1EEEE(double %.sroa.0358.5)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113
  %i.eo = zext i32 %i.en to i64
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i64 noundef %i.eo)
          to label %_ZNSolsEj.exit unwind label %bb.ai

_ZNSolsEj.exit:                                   ; preds = %bb.ac
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114: ; preds = %_ZNSolsEj.exit
  %i.er = load ptr, ptr %i.dh, align 8, !tbaa !107
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.es, ptr %8, align 8, !tbaa !60, !alias.scope !691
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.et, align 8, !tbaa !61, !alias.scope !691
  store i8 0, ptr %i.es, align 8, !tbaa !62, !alias.scope !691
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !115, !noalias !691 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ev, null
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !691 ; 2 uses
  %i.ey = icmp ugt ptr %i.ev, %i.ex
  %.08.i.i.i = select i1 %i.ey, ptr %i.ev, ptr %i.ex ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !117, !noalias !691 ; 2 uses
  %i.fb = ptrtoint ptr %.08.i.i.i to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.fa, i64 noundef %i.fd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %8, align 8, !tbaa !82, !alias.scope !691 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.es
  br i1 %i.fh, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ae
  %i.fi = load i64, ptr %i.es, align 8, !tbaa !62, !alias.scope !691
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #27
  br label %.body

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ae

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.af, %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !118
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 9
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !498, !range !304, !noundef !259
  %i.fp = trunc nuw i8 %i.fo to i1
  invoke void @_ZN7cmCTest3LogENS_7LogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i32 noundef 5, ptr noundef nonnull align 8 %8, i1 noundef zeroext %i.fp)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fq = load ptr, ptr %8, align 8, !tbaa !82    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.es
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ag
  %i.fs = load i64, ptr %i.es, align 8, !tbaa !62
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  %i.fu = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.fu, ptr %7, align 8, !tbaa !83
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 -24    ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds i8, ptr %7, i64 %i.fx
  store ptr %i.fv, ptr %i.fy, align 8, !tbaa !83
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fz, align 8, !tbaa !83
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !82 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !62
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fz, align 8, !tbaa !83
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gg) #26
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gh) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.gi = load ptr, ptr %i.f, align 8, !tbaa !163 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !64, !range !304, !noundef !259
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store i8 1, ptr %i.gj, align 8, !tbaa !64
  br label %bb.ak
end_hunk_0
