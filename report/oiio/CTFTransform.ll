inline.NumInlined: 3285
inline.NumDeleted: 896
begin_hunk_0_@_ZNK16OpenColorIO_v2_515TransformWriter5writeEv:._crit_edge.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bf = load i64, ptr %i.ar, align 8, !tbaa !16 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !11
  %i.bi = load i64, ptr %i.aj, align 8, !tbaa !17
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !17
  %.pre237 = load i64, ptr %i.ar, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.bj = phi i64 [ %.pre237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.bf, %bb.k ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !16
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !11
  store i64 0, ptr %i.ar, align 8, !tbaa !16
  store i8 0, ptr %i.aj, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.l:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.o

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.l
  %.pre238 = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.bm = icmp eq ptr %.pre238, %i.aj
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.bn = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %.pre238, i64 noundef %i.bo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bp = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.af
  br i1 %i.bq, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.br = load i64, ptr %i.af, align 8, !tbaa !17
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bt = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.o
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.bv = load i64, ptr %i.o, align 8, !tbaa !17
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.dh

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.n:                                             ; preds = %.noexc89, %bb.cy, %.noexc87, %bb.cx, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit, %bb.b
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.o:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #27
  %i.ca = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.o
  br i1 %i.cb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.e
  %.sink = phi ptr [ %i.ac, %bb.e ], [ %i.ca, %bb.o ]
  %.pn38.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.bz, %bb.o ]
  %i.cc = load i64, ptr %i.o, align 8, !tbaa !17
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cd) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.e
  %.pn38.pn = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.bz, %bb.o ], [ %.pn38.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body82

bb.p:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.ce, align 8, !tbaa !113 ; 2 uses
  %i.cf = getelementptr i8, ptr %.val, i64 280
  %.val.val = load ptr, ptr %i.cf, align 8, !tbaa !114 ; 2 uses
  %i.cg = getelementptr i8, ptr %.val, i64 288
  %.val.val67 = load ptr, ptr %i.cg, align 8, !tbaa !114 ; 2 uses
  %i.ch = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !20, !noalias !115 ; 2 uses
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !22, !noalias !115 ; 2 uses
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !23, !noalias !115 ; 2 uses
  %.not12.i = icmp eq ptr %.val.val, %.val.val67
  br i1 %.not12.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit, label %.noexc.lr.ph.i

.noexc.lr.ph.i:                                   ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.noexc.i78

.noexc.i78:                                       ; preds = %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i, %.noexc.lr.ph.i
  %.sroa.0221.0 = phi i32 [ %i.ch, %.noexc.lr.ph.i ], [ %.sroa.0221.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 4 uses
  %.sroa.7.0 = phi i32 [ %i.ci, %.noexc.lr.ph.i ], [ %.sroa.7.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 4 uses
  %.sroa.11.0 = phi i32 [ %i.cj, %.noexc.lr.ph.i ], [ %.sroa.11.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 3 uses
  %.sroa.01.013.i = phi ptr [ %.val.val, %.noexc.lr.ph.i ], [ %i.lk, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 14 uses
  %.b400 = load i1, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.0, align 4
  %i.cl = select i1 %.b400, i32 2, i32 0          ; 4 uses
  %.b401 = load i1, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.1, align 4
  %i.cm = select i1 %.b401, i32 5, i32 0          ; 4 uses
  %i.cn = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !118, !noalias !121 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !43, !noalias !121
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !121
  %i.cr = invoke noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(168) %i.cn)
          to label %.noexc80 unwind label %.loopexit226, !inline_history !124

.noexc80:                                         ; preds = %.noexc.i78
  switch i32 %i.cr, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i [
    i32 0, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.af
    i32 5, label %bb.ap
    i32 6, label %bb.ap
    i32 8, label %bb.ap
    i32 9, label %bb.ap
    i32 7, label %bb.aq
    i32 1, label %bb.ar
    i32 4, label %bb.bb
    i32 10, label %bb.bp
    i32 11, label %bb.cf
    i32 12, label %bb.cq
    i32 13, label %bb.cq
    i32 14, label %bb.cr
    i32 15, label %bb.ct
  ]

bb.q:                                             ; preds = %.noexc80
  %.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.0, align 4
  %i.cs = zext i1 %.b to i32
  %.b399 = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.1, align 4
  %i.ct = select i1 %.b399, i32 7, i32 0
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.r:                                             ; preds = %.noexc80
  %i.cu = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !20, !noalias !121
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !23, !noalias !121
  %i.cx = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !118, !noalias !125 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = call ptr @__dynamic_cast(ptr nonnull %i.cx, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_522ExposureContrastOpDataE, i64 0) #27, !noalias !125 ; 4 uses
  %.not.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.not.i.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !37, !noalias !125 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !125
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !125
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3, !noalias !125
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dg = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4, !noalias !125 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.0111.0.i.i = phi ptr [ %i.cz, %bb.v ], [ %i.cz, %bb.t ], [ %i.cz, %bb.w ], [ null, %bb.s ], [ null, %bb.r ] ; 2 uses
  %.sroa.6.0.i.i = phi ptr [ %i.db, %bb.v ], [ null, %bb.t ], [ %i.db, %bb.w ], [ null, %bb.s ], [ null, %bb.r ] ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0111.0.i.i, i64 232
  %i.di = load double, ptr %i.dh, align 8, !tbaa !128, !noalias !121
  %i.dj = fcmp une double %i.di, f0x3FB6872B020C49BA
  br i1 %i.dj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0111.0.i.i, i64 240
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !146, !noalias !121
  %i.dm = fcmp oeq double %i.dl, 4.350000e-01
  br i1 %i.dm, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.dn = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !20, !noalias !121
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i: ; preds = %bb.y, %bb.x
  %.sroa.43.0.i = phi i32 [ %i.dp, %bb.y ], [ %i.cw, %bb.x ] ; 4 uses
  %.sroa.23.0.i = phi i32 [ %i.do, %bb.y ], [ %i.cv, %bb.x ] ; 4 uses
  %.sroa.0.0.i = phi i32 [ %i.dn, %bb.y ], [ %i.cu, %bb.x ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.6.0.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8, !noalias !121 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.dq, align 8, !tbaa !40, !noalias !121
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !42, !noalias !121
  %i.dv = load ptr, ptr %.sroa.6.0.i.i, align 8, !tbaa !43, !noalias !121
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !121
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0.i.i) #27, !noalias !121, !inline_history !147
  %i.dy = load ptr, ptr %.sroa.6.0.i.i, align 8, !tbaa !43, !noalias !121
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !121
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0.i.i) #27, !noalias !121, !inline_history !147
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !121
  %.not.i.i.i.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i = phi i32 [ %i.dt, %bb.ac ], [ %i.ed, %bb.ad ]
  %i.ee = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ee, label %bb.ae, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !46

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0.i.i) #27, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.af:                                            ; preds = %.noexc80
  %i.ef = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !20, !noalias !121
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.eh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23, !noalias !121
  %i.ei = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !118, !noalias !148, !nonnull !96, !noundef !96
  %i.ej = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 0) #27, !noalias !148 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !37, !noalias !148 ; 9 uses
  %.not.i.i.i.i21.i.i = icmp eq ptr %i.el, null   ; 2 uses
  br i1 %.not.i.i.i.i21.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 3 uses
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !148
  %.not.i.i.i.i.i22.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i22.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !148
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !3, !noalias !148
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.eq = atomicrmw volatile add ptr %i.em, i32 1 acq_rel, align 4, !noalias !148 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 168
  %i.es = load i32, ptr %i.er, align 8, !tbaa !151, !noalias !121
  %switch.tableidx = add i32 %i.es, -10           ; 5 uses
  %i.et = icmp ult i32 %switch.tableidx, 32
  %switch.shifted = lshr i32 -4093, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond408 = select i1 %i.et, i1 %switch.lobit, i1 false
  br i1 %or.cond408, label %switch.lookup, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i

switch.lookup:                                    ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.eu = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv, i64 %i.eu
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ev = zext nneg i32 %switch.tableidx to i64
  %switch.gep404 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv.11, i64 %i.ev
  %switch.load405 = load ptr, ptr %switch.gep404, align 8
  %i.ew = zext nneg i32 %switch.tableidx to i64
  %switch.gep406 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv.12, i64 %i.ew
  %switch.load407 = load ptr, ptr %switch.gep406, align 8
  %.sroa.0.1.i = load i32, ptr %switch.load405, align 4, !tbaa !20, !noalias !121
  %.sroa.23.1.i = load i32, ptr %switch.load, align 4, !tbaa !22, !noalias !121
  %.sink.i.i = load i32, ptr %switch.load407, align 4, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i: ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %switch.lookup
  %.sroa.43.1.i = phi i32 [ %i.eh, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sink.i.i, %switch.lookup ] ; 4 uses
  %.sroa.23.2.i = phi i32 [ %i.eg, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sroa.23.1.i, %switch.lookup ] ; 4 uses
  %.sroa.0.2.i = phi i32 [ %i.ef, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sroa.0.1.i, %switch.lookup ] ; 4 uses
  br i1 %.not.i.i.i.i21.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8, !noalias !121 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ex, align 8, !tbaa !40, !noalias !121
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !42, !noalias !121
  %i.fc = load ptr, ptr %i.el, align 8, !tbaa !43, !noalias !121
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !121
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #27, !noalias !121, !inline_history !159
  %i.ff = load ptr, ptr %i.el, align 8, !tbaa !43, !noalias !121
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !121
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #27, !noalias !121, !inline_history !159
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !121
  %.not.i.i.i30.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i30.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !3, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

bb.an:                                            ; preds = %bb.al
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i32.i.i = phi i32 [ %i.fa, %bb.am ], [ %i.fk, %bb.an ]
  %i.fl = icmp eq i32 %.0.i.i.i.i32.i.i, 1
  br i1 %i.fl, label %bb.ao, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !46

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #27, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ap:                                            ; preds = %.noexc80, %.noexc80, %.noexc80, %.noexc80
  %i.fm = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !20, !noalias !121
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.aq:                                            ; preds = %.noexc80
  %i.fp = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, align 4, !tbaa !20, !noalias !121
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 8), align 4, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ar:                                            ; preds = %.noexc80
  %i.fs = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !118, !noalias !160, !nonnull !96, !noundef !96
  %i.ft = call ptr @__dynamic_cast(ptr nonnull %i.fs, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_514ExponentOpDataE, i64 0) #27, !noalias !160 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !37, !noalias !160 ; 9 uses
  %.not.i.i.i.i38.i.i = icmp eq ptr %i.fv, null   ; 2 uses
  br i1 %.not.i.i.i.i38.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !160
  %.not.i.i.i.i.i39.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i39.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !160
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !3, !noalias !160
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.ga = atomicrmw volatile add ptr %i.fw, i32 1 acq_rel, align 4, !noalias !160 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.au, %bb.at, %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 192
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !163, !noalias !121
  %i.gd = fcmp oeq double %i.gc, 1.000000e+00     ; 3 uses
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val10.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !115
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i.b to i32
  %i.ge = select i1 %i.gd, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val10.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i ; 4 uses
  %.val120.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !121
  %.val121.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  %.val121.i.i = select i1 %.val121.i.i.b, i32 5, i32 0
  %i.gf = select i1 %i.gd, i32 %.val120.i.i, i32 %.val121.i.i ; 4 uses
  %.val122.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !121
  %i.gg = select i1 %i.gd, i32 %.val122.i.i, i32 0 ; 4 uses
  br i1 %.not.i.i.i.i38.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 4 uses
  %i.gi = load atomic i64, ptr %i.gh acquire, align 8, !noalias !121 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 4294967297
  %i.gk = trunc i64 %i.gi to i32                  ; 2 uses
  br i1 %i.gj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.gh, align 8, !tbaa !40, !noalias !121
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store i32 0, ptr %i.gl, align 4, !tbaa !42, !noalias !121
  %i.gm = load ptr, ptr %i.fv, align 8, !tbaa !43, !noalias !121
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !121
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #27, !noalias !121, !inline_history !164
  %i.gp = load ptr, ptr %i.fv, align 8, !tbaa !43, !noalias !121
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !121
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #27, !noalias !121, !inline_history !164
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.gs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !121
  %.not.i.i.i43.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i43.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gt = add nsw i32 %i.gk, -1
  store i32 %i.gt, ptr %i.gh, align 8, !tbaa !3, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

bb.az:                                            ; preds = %bb.ax
  %i.gu = atomicrmw volatile add ptr %i.gh, i32 -1 acq_rel, align 4, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i45.i.i = phi i32 [ %i.gk, %bb.ay ], [ %i.gu, %bb.az ]
  %i.gv = icmp eq i32 %.0.i.i.i.i45.i.i, 1
  br i1 %i.gv, label %bb.ba, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !46

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #27, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.bb:                                            ; preds = %.noexc80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !121
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.gw = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !118, !noalias !168, !nonnull !96, !noundef !96
  %i.gx = call ptr @__dynamic_cast(ptr nonnull %i.gw, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511GammaOpDataE, i64 0) #27, !noalias !168 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gx) ]
  store ptr %i.gx, ptr %1, align 8, !tbaa !169, !alias.scope !165, !noalias !121
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !37, !noalias !168 ; 3 uses
  store ptr %i.gz, ptr %i.ck, align 8, !tbaa !37, !alias.scope !165, !noalias !121
  %.not.i.i.i.i47.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i47.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 3 uses
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !168
  %.not.i.i.i.i.i48.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i48.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !3, !noalias !168
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.ha, align 4, !tbaa !3, !noalias !168
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.he = atomicrmw volatile add ptr %i.ha, i32 1 acq_rel, align 4, !noalias !168 ; 0 uses
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !169, !noalias !121
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bb
  %i.hf = phi ptr [ %i.gx, %bb.bb ], [ %i.gx, %bb.bd ], [ %.pre.i.i, %bb.be ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 168
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !172, !noalias !121
  switch i32 %i.hh, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i [
    i32 0, label %bb.bf
    i32 1, label %bb.bf
    i32 6, label %bb.bf
    i32 7, label %bb.bf
    i32 2, label %bb.bi
    i32 3, label %bb.bi
    i32 4, label %bb.bi
    i32 5, label %bb.bi
    i32 8, label %bb.bi
    i32 9, label %bb.bi
  ]

bb.bf:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.hi = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511GammaOpData24isAlphaComponentIdentityEv(ptr noundef nonnull align 8 dereferenceable(272) %i.hf)
          to label %bb.bg unwind label %bb.bh, !noalias !121 ; 3 uses

bb.bg:                                            ; preds = %bb.bf
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val9.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !115
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i.b to i32
  %i.hj = select i1 %i.hi, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val9.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i
  %.val116.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !121
  %.val117.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  %.val117.i.i = select i1 %.val117.i.i.b, i32 5, i32 0
  %i.hk = select i1 %i.hi, i32 %.val116.i.i, i32 %.val117.i.i
  %.val118.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !121
  %i.hl = select i1 %i.hi, i32 %.val118.i.i, i32 0
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #27, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !121
  br label %.body82

bb.bi:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.hn = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !20, !noalias !121
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i: ; preds = %bb.bi, %bb.bg, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.2.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.hl, %bb.bg ], [ %i.hp, %bb.bi ]
  %.sroa.23.4.i = phi i32 [ %i.cm, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.hk, %bb.bg ], [ %i.ho, %bb.bi ]
  %.sroa.0.4.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.hj, %bb.bg ], [ %i.hn, %bb.bi ]
  %i.hq = load ptr, ptr %i.ck, align 8, !tbaa !37, !noalias !121 ; 8 uses
  %.not.i.i53.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i53.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8, !noalias !121 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.hr, align 8, !tbaa !40, !noalias !121
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !42, !noalias !121
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !43, !noalias !121
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !121
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #27, !noalias !121, !inline_history !175
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !43, !noalias !121
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !121
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #27, !noalias !121, !inline_history !175
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !121
  %.not.i.i.i54.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i54.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !3, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i56.i.i = phi i32 [ %i.hu, %bb.bm ], [ %i.ie, %bb.bn ]
  %i.if = icmp eq i32 %.0.i.i.i.i56.i.i, 1
  br i1 %i.if, label %bb.bo, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !46

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #27, !noalias !121
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i, %bb.bk, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.bp:                                            ; preds = %.noexc80
  %i.ig = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !118, !noalias !176 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ii = call ptr @__dynamic_cast(ptr nonnull %i.ig, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511Lut1DOpDataE, i64 0) #27, !noalias !176 ; 4 uses
  %.not.not.i57.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.not.i57.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !37, !noalias !176 ; 4 uses
  %.not.i.i.i.i58.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i58.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 3 uses
  %i.im = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !176
  %.not.i.i.i.i.i59.i.i = icmp eq i8 %i.im, 0
  br i1 %.not.i.i.i.i.i59.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.in = load i32, ptr %i.il, align 4, !tbaa !3, !noalias !176
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %i.il, align 4, !tbaa !3, !noalias !176
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ip = atomicrmw volatile add ptr %i.il, i32 1 acq_rel, align 4, !noalias !176 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bp
  %.sroa.083.0.i.i = phi ptr [ %i.ii, %bb.bt ], [ %i.ii, %bb.br ], [ %i.ii, %bb.bu ], [ null, %bb.bq ], [ null, %bb.bp ] ; 4 uses
  %.sroa.8.0.i.i = phi ptr [ %i.ik, %bb.bt ], [ null, %bb.br ], [ %i.ik, %bb.bu ], [ null, %bb.bq ], [ null, %bb.bp ] ; 8 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.083.0.i.i, i64 232
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !179, !noalias !121
  switch i32 %i.ir, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i [
    i32 0, label %bb.bv
    i32 1, label %bb.bw
  ]

bb.bv:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.083.0.i.i, i64 228
  %i.it = load i32, ptr %i.is, align 4, !tbaa !194, !noalias !121
  %.not12.i.i = icmp eq i32 %i.it, 0              ; 3 uses
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !115
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i.b to i32
  %i.iu = select i1 %.not12.i.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i
  %.val.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !121
  %.val113.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.1, align 4
  %.val113.i.i = select i1 %.val113.i.i.b, i32 4, i32 0
  %i.iv = select i1 %.not12.i.i, i32 %.val.i.i, i32 %.val113.i.i
  %.val114.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !121
  %i.iw = select i1 %.not12.i.i, i32 %.val114.i.i, i32 0
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i

bb.bw:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.083.0.i.i, i64 228
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !194, !noalias !121
  %.not.i.i79 = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i79, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.083.0.i.i, i64 224
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !195, !noalias !121
  %i.jb = trunc i32 %i.ja to i1
  %spec.select.i.i = select i1 %i.jb, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.jc = phi ptr [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, %bb.bw ], [ %spec.select.i.i, %bb.bx ] ; 3 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !20, !noalias !121
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !22, !noalias !121
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i: ; preds = %bb.by, %bb.bv, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.3.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.iw, %bb.bv ], [ %i.jh, %bb.by ] ; 4 uses
  %.sroa.23.6.i = phi i32 [ %i.cm, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.iv, %bb.bv ], [ %i.jf, %bb.by ] ; 4 uses
  %.sroa.0.6.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.iu, %bb.bv ], [ %i.jd, %bb.by ] ; 4 uses
  %.not.i.i64.i.i = icmp eq ptr %.sroa.8.0.i.i, null
  br i1 %.not.i.i64.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i, i64 8 ; 4 uses
  %i.jj = load atomic i64, ptr %i.ji acquire, align 8, !noalias !121 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 4294967297
  %i.jl = trunc i64 %i.jj to i32                  ; 2 uses
  br i1 %i.jk, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.ji, align 8, !tbaa !40, !noalias !121
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i, i64 12
  store i32 0, ptr %i.jm, align 4, !tbaa !42, !noalias !121
  %i.jn = load ptr, ptr %.sroa.8.0.i.i, align 8, !tbaa !43, !noalias !121
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !121
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0.i.i) #27, !noalias !121, !inline_history !196
  %i.jq = load ptr, ptr %.sroa.8.0.i.i, align 8, !tbaa !43, !noalias !121
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !121
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0.i.i) #27, !noalias !121, !inline_history !196
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !121
  %.not.i.i.i65.i.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i65.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ju = add nsw i32 %i.jl, -1
  store i32 %i.ju, ptr %i.ji, align 8, !tbaa !3, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.jv = atomicrmw volatile add ptr %i.ji, i32 -1 acq_rel, align 4, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i67.i.i = phi i32 [ %i.jl, %bb.cc ], [ %i.jv, %bb.cd ]
  %i.jw = icmp eq i32 %.0.i.i.i.i67.i.i, 1
  br i1 %i.jw, label %bb.ce, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !46

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0.i.i) #27, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cf:                                            ; preds = %.noexc80
  %i.jx = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !118, !noalias !197, !nonnull !96, !noundef !96
  %i.jy = call ptr @__dynamic_cast(ptr nonnull %i.jx, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511Lut3DOpDataE, i64 0) #27, !noalias !197 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jy) ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !37, !noalias !197 ; 9 uses
  %.not.i.i.i.i69.i.i = icmp eq ptr %i.ka, null   ; 2 uses
  br i1 %.not.i.i.i.i69.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 3 uses
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !197
  %.not.i.i.i.i.i70.i.i = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i.i.i70.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !3, !noalias !197
  %i.ke = add nsw i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kb, align 4, !tbaa !3, !noalias !197
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.kf = atomicrmw volatile add ptr %i.kb, i32 1 acq_rel, align 4, !noalias !197 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.ci, %bb.ch, %bb.cf
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 224
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !200, !noalias !121
  switch i32 %i.kh, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i [
    i32 0, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i
    i32 1, label %bb.cj
  ]

bb.cj:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i: ; preds = %bb.cj, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %storemerge8.in.i = phi ptr [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, %bb.cj ], [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %storemerge.in.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 4), %bb.cj ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %.sink140.in.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 8), %bb.cj ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %storemerge8.i = load i32, ptr %storemerge8.in.i, align 4, !tbaa !20, !noalias !121
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4, !tbaa !22, !noalias !121
  %.sink140.i.i = load i32, ptr %.sink140.in.i.i, align 4, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i: ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.4.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sink140.i.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  %.sroa.23.7.i = phi i32 [ %i.cm, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %storemerge.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  %.sroa.0.7.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %storemerge8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  br i1 %.not.i.i.i.i69.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 4 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8, !noalias !121 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 4294967297
  %i.kl = trunc i64 %i.kj to i32                  ; 2 uses
  br i1 %i.kk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.ki, align 8, !tbaa !40, !noalias !121
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 0, ptr %i.km, align 4, !tbaa !42, !noalias !121
  %i.kn = load ptr, ptr %i.ka, align 8, !tbaa !43, !noalias !121
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !121
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #27, !noalias !121, !inline_history !203
  %i.kq = load ptr, ptr %i.ka, align 8, !tbaa !43, !noalias !121
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !121
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #27, !noalias !121, !inline_history !203
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.kt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !121
  %.not.i.i.i76.i.i = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i76.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 8, !tbaa !3, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

bb.co:                                            ; preds = %bb.cm
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4, !noalias !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i78.i.i = phi i32 [ %i.kl, %bb.cn ], [ %i.kv, %bb.co ]
  %i.kw = icmp eq i32 %.0.i.i.i.i78.i.i, 1
  br i1 %i.kw, label %bb.cp, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !46

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #27, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cq:                                            ; preds = %.noexc80, %.noexc80
  %i.kx = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !20, !noalias !121
  %i.ky = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cr:                                            ; preds = %.noexc80
  %i.la = call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !121 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull @.str.28)
          to label %.noexc7.i unwind label %bb.cs, !noalias !121

.noexc7.i:                                        ; preds = %bb.cr
  invoke void @__cxa_throw(ptr nonnull %i.la, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %.noexc81 unwind label %.loopexit.split-lp227

.noexc81:                                         ; preds = %.noexc7.i
  unreachable

bb.cs:                                            ; preds = %bb.cr
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.la) #27, !noalias !121
  br label %.body82

bb.ct:                                            ; preds = %.noexc80
  %i.lc = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !20, !noalias !121
  %i.ld = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !22, !noalias !121
  %i.le = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !23, !noalias !121
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i: ; preds = %bb.ct, %bb.cq, %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i, %bb.cl, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i, %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i, %bb.ca, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i, %bb.aw, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %bb.aq, %bb.ap, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i, %bb.ak, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i, %bb.q, %.noexc80
  %.sroa.43.5.i = phi i32 [ 0, %.noexc80 ], [ 0, %bb.q ], [ %.sroa.43.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.43.0.i, %bb.aa ], [ %.sroa.43.0.i, %bb.ae ], [ %.sroa.43.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.43.1.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.43.1.i, %bb.ak ], [ %.sroa.43.1.i, %bb.ao ], [ %.sroa.43.1.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fo, %bb.ap ], [ %i.fr, %bb.aq ], [ %i.gg, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.gg, %bb.aw ], [ %i.gg, %bb.ba ], [ %i.gg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.43.2.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.43.3.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.43.3.i, %bb.ca ], [ %.sroa.43.3.i, %bb.ce ], [ %.sroa.43.3.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.43.4.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.43.4.i, %bb.cl ], [ %.sroa.43.4.i, %bb.cp ], [ %.sroa.43.4.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.kz, %bb.cq ], [ %i.le, %bb.ct ] ; 2 uses
  %.sroa.23.8.i = phi i32 [ %i.cm, %.noexc80 ], [ %i.ct, %bb.q ], [ %.sroa.23.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.23.0.i, %bb.aa ], [ %.sroa.23.0.i, %bb.ae ], [ %.sroa.23.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.23.2.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.23.2.i, %bb.ak ], [ %.sroa.23.2.i, %bb.ao ], [ %.sroa.23.2.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fn, %bb.ap ], [ %i.fq, %bb.aq ], [ %i.gf, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.gf, %bb.aw ], [ %i.gf, %bb.ba ], [ %i.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.23.4.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.23.6.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.23.6.i, %bb.ca ], [ %.sroa.23.6.i, %bb.ce ], [ %.sroa.23.6.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.23.7.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.23.7.i, %bb.cl ], [ %.sroa.23.7.i, %bb.cp ], [ %.sroa.23.7.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.ky, %bb.cq ], [ %i.ld, %bb.ct ] ; 3 uses
  %.sroa.0.8.i = phi i32 [ %i.cl, %.noexc80 ], [ %i.cs, %bb.q ], [ %.sroa.0.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.0.0.i, %bb.aa ], [ %.sroa.0.0.i, %bb.ae ], [ %.sroa.0.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.0.2.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.0.2.i, %bb.ak ], [ %.sroa.0.2.i, %bb.ao ], [ %.sroa.0.2.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fm, %bb.ap ], [ %i.fp, %bb.aq ], [ %i.ge, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %i.ge, %bb.aw ], [ %i.ge, %bb.ba ], [ %i.ge, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.0.4.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.0.6.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.0.6.i, %bb.ca ], [ %.sroa.0.6.i, %bb.ce ], [ %.sroa.0.6.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.0.7.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.0.7.i, %bb.cl ], [ %.sroa.0.7.i, %bb.cp ], [ %.sroa.0.7.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.kx, %bb.cq ], [ %i.lc, %bb.ct ] ; 3 uses
  %i.lf = icmp ult i32 %.sroa.0221.0, %.sroa.0.8.i
  br i1 %i.lf, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i
  %i.lg = icmp ugt i32 %.sroa.0221.0, %.sroa.0.8.i
  br i1 %i.lg, label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lh = icmp ult i32 %.sroa.7.0, %.sroa.23.8.i
  br i1 %i.lh, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.li = icmp ule i32 %.sroa.7.0, %.sroa.23.8.i
  %i.lj = icmp ult i32 %.sroa.11.0, %.sroa.43.5.i
  %or.cond = select i1 %i.li, i1 %i.lj, i1 false
  br i1 %or.cond, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i: ; preds = %bb.cw, %bb.cv, %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i
  br label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i

_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i: ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, %bb.cw, %bb.cu
  %.sroa.0221.1 = phi i32 [ %.sroa.0.8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.0221.0, %bb.cu ], [ %.sroa.0221.0, %bb.cw ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.sroa.23.8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.7.0, %bb.cu ], [ %.sroa.7.0, %bb.cw ] ; 2 uses
  %.sroa.11.1 = phi i32 [ %.sroa.43.5.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.11.0, %bb.cu ], [ %.sroa.11.0, %bb.cw ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.lk, %.val.val67
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit, label %.noexc.i78

_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit: ; preds = %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i, %bb.p
  %.sroa.0221.2 = phi i32 [ %i.ch, %bb.p ], [ %.sroa.0221.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 2 uses
  %.sroa.7.2 = phi i32 [ %i.ci, %bb.p ], [ %.sroa.7.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 3 uses
  %.sroa.11.2 = phi i32 [ %i.cj, %bb.p ], [ %.sroa.11.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 3 uses
  store i32 %.sroa.0221.2, ptr %4, align 8, !tbaa !20
  store i32 %.sroa.7.2, ptr %i.g, align 4, !tbaa !22
  store i32 %.sroa.11.2, ptr %i.i, align 8, !tbaa !23
  %i.ll = zext i32 %.sroa.0221.2 to i64
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.ll)
          to label %.noexc86 unwind label %bb.n   ; 0 uses

.noexc86:                                         ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit
  %.not.i85 = icmp eq i32 %.sroa.7.2, 0
  %.not10.i = icmp eq i32 %.sroa.11.2, 0          ; 2 uses
  %or.cond.i = select i1 %.not.i85, i1 %.not10.i, i1 false
  br i1 %or.cond.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.cx

bb.cx:                                            ; preds = %.noexc86
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %.noexc87 unwind label %bb.n   ; 0 uses

.noexc87:                                         ; preds = %bb.cx
  %i.lo = zext i32 %.sroa.7.2 to i64
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.lo)
          to label %.noexc88 unwind label %bb.n   ; 0 uses

.noexc88:                                         ; preds = %.noexc87
  br i1 %.not10.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.cy

bb.cy:                                            ; preds = %.noexc88
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %.noexc89 unwind label %bb.n   ; 0 uses

.noexc89:                                         ; preds = %bb.cy
  %i.lr = zext i32 %.sroa.11.2 to i64
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.lr)
          to label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit unwind label %bb.n ; 0 uses

_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit: ; preds = %.noexc88, %.noexc86, %.noexc89
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.lt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.lt, ptr %9, align 8, !tbaa !24, !alias.scope !210
  %i.lu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.lu, align 8, !tbaa !16, !alias.scope !210
  store i8 0, ptr %i.lt, align 8, !tbaa !17, !alias.scope !210
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !104, !noalias !210 ; 3 uses
  %.not.i.not.i.i91 = icmp eq ptr %i.lw, null
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !210 ; 2 uses
  %i.lz = icmp ugt ptr %i.lw, %i.ly
  %.08.i.i.i92 = select i1 %i.lz, ptr %i.lw, ptr %i.ly ; 2 uses
  %.not5.i.i93 = icmp eq ptr %.08.i.i.i92, null
  %.not.i.i94 = select i1 %.not.i.not.i.i91, i1 true, i1 %.not5.i.i93
  br i1 %.not.i.i94, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !108, !noalias !210 ; 2 uses
  %i.mc = ptrtoint ptr %.08.i.i.i92 to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.mb, i64 noundef %i.me)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100 unwind label %bb.da ; 0 uses

bb.da:                                            ; preds = %bb.db, %bb.cz
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_515TransformWriter8writeOpsERKNS_10CTFVersionE:bb.a
  %50 = alloca %"class.std::shared_ptr.78", align 16 ; 4 uses
  %51 = alloca %"class.std::shared_ptr.86", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.OpenColorIO_v2_5::(anonymous namespace)::Lut3DWriter", align 8 ; 13 uses
  %54 = alloca %"class.std::shared_ptr.86", align 16 ; 4 uses
  %55 = alloca %"class.std::shared_ptr.89", align 8 ; 8 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %57 = alloca %"class.std::shared_ptr.93", align 16 ; 8 uses
  %58 = alloca %"class.OpenColorIO_v2_5::(anonymous namespace)::MatrixWriter", align 8 ; 15 uses
  %59 = alloca %"class.std::shared_ptr.89", align 16 ; 4 uses
  %60 = alloca %"class.std::shared_ptr.96", align 8 ; 7 uses
  %61 = alloca %"class.std::shared_ptr.99", align 16 ; 8 uses
  %62 = alloca %"class.OpenColorIO_v2_5::(anonymous namespace)::RangeWriter", align 8 ; 13 uses
  %63 = alloca %"class.std::shared_ptr.96", align 16 ; 4 uses
  %64 = alloca %"class.std::shared_ptr.93", align 8 ; 6 uses
  %65 = alloca %"class.OpenColorIO_v2_5::(anonymous namespace)::MatrixWriter", align 8 ; 15 uses
  %66 = alloca %"class.std::shared_ptr.89", align 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 280 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33   ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.k, align 8, !tbaa !63
  store <2 x ptr> %i.s, ptr %2, align 16, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.y = invoke fastcc noundef i32 @_ZN16OpenColorIO_v2_512_GLOBAL__N_114GetInputFileBDESt10shared_ptrIKNS_6OpDataEE(ptr noundef %2)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.aa, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !42
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #27, !inline_history !64
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #27, !inline_history !64
  br label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i208 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i208, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.j ], [ %i.an, %bb.k ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.l, label %.lr.ph, !prof !46

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #27
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 30 uses
  %i.as = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %62, i64 20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %58, i64 20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %58, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %58, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %58, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %53, i64 20 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %49, i64 20 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %45, i64 20 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %42, i64 20 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %38, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %34, i64 20 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %30, i64 20 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  br label %common.resume

bb.n:                                             ; preds = %.lr.ph, %bb.ul
  %.0818 = phi i32 [ %i.y, %.lr.ph ], [ %.4, %bb.ul ] ; 14 uses
  %.079817 = phi i64 [ 0, %.lr.ph ], [ %i.et, %bb.ul ] ; 2 uses
  %i.er = load ptr, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %.079817 ; 30 uses
  %i.et = add nuw i64 %.079817, 1                 ; 4 uses
  %i.eu = icmp ult i64 %i.et, %i.o
  br i1 %i.eu, label %bb.o, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216

bb.o:                                             ; preds = %bb.n
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.et ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !37 ; 2 uses
  %i.ey = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !63
  store <2 x ptr> %i.ey, ptr %3, align 16, !tbaa !63
  %.not.i.i.i209 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i209, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit211, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 3 uses
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i210 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i.i210, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit211

bb.r:                                             ; preds = %bb.p
  %i.fd = atomicrmw volatile add ptr %i.ez, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit211

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit211: ; preds = %bb.o, %bb.q, %bb.r
  %i.fe = invoke fastcc noundef i32 @_ZN16OpenColorIO_v2_512_GLOBAL__N_114GetInputFileBDESt10shared_ptrIKNS_6OpDataEE(ptr noundef %3)
          to label %bb.s unwind label %bb.z       ; 4 uses

bb.s:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit211
  %i.ff = load ptr, ptr %i.ap, align 8, !tbaa !37 ; 8 uses
  %.not.i.i212 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i212, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.fg, align 8, !tbaa !40
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !42
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !43
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #27, !inline_history !64
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !43
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #27, !inline_history !64
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216

bb.v:                                             ; preds = %bb.t
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i213 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i213, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i214

bb.x:                                             ; preds = %bb.v
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i214

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i214: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i215 = phi i32 [ %i.fj, %bb.w ], [ %i.ft, %bb.x ]
  %i.fu = icmp eq i32 %.0.i.i.i.i215, 1
  br i1 %i.fu, label %bb.y, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216, !prof !46

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i214
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #27
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216

bb.z:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2ERKS3_.exit211
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br label %common.resume

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i214, %bb.u, %bb.s, %bb.n
  %.1 = phi i32 [ 8, %bb.n ], [ %i.fe, %bb.s ], [ %i.fe, %bb.u ], [ %i.fe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i214 ], [ %i.fe, %bb.y ] ; 23 uses
  %i.fw = load ptr, ptr %i.es, align 8, !tbaa !118 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef i32 %i.fz(ptr noundef nonnull align 8 dereferenceable(168) %i.fw) ; 2 uses
  %.not138 = icmp eq i32 %i.ga, 15
  br i1 %.not138, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216
  %i.gb = load ptr, ptr %i.es, align 8, !tbaa !118 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(168) %i.gb)
  switch i32 %i.ga, label %bb.ul [
    i32 0, label %bb.ab
    i32 1, label %bb.bf
    i32 2, label %bb.dr
    i32 3, label %bb.ey
    i32 4, label %bb.ge
    i32 5, label %bb.hr
    i32 6, label %bb.ix
    i32 7, label %bb.kd
    i32 8, label %bb.lj
    i32 9, label %bb.mp
    i32 10, label %bb.nt
    i32 11, label %bb.pf
    i32 12, label %bb.qr
    i32 13, label %bb.sq
    i32 14, label %bb.ug
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.gf = load ptr, ptr %i.es, align 8, !tbaa !118, !noalias !219 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59CDLOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gh = call ptr @__dynamic_cast(ptr nonnull %i.gf, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_59CDLOpDataE, i64 0) #27, !noalias !219 ; 4 uses
  %.not.not.i = icmp eq ptr %i.gh, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59CDLOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.gh, ptr %4, align 16, !tbaa !222, !alias.scope !219
  %i.gi = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !37, !noalias !219 ; 5 uses
  store ptr %i.gj, ptr %i.ek, align 8, !tbaa !37, !alias.scope !219
  %.not.i.i.i.i217 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i217, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_59CDLOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 3 uses
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !219
  %.not.i.i.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_59CDLOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_59CDLOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread1059

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_59CDLOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread1059: ; preds = %bb.ae
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !3, !noalias !219
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !3, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.go = load ptr, ptr %i.ar, align 8, !tbaa !211, !nonnull !96, !align !212
  store ptr %i.gh, ptr %6, align 16, !tbaa !222
  store ptr %i.gj, ptr %i.el, align 8, !tbaa !37
  br label %bb.af

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59CDLOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !219
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_59CDLOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_59CDLOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread: ; preds = %bb.ad, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59CDLOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i
  %.ph = phi ptr [ null, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59CDLOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i ], [ %i.gh, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.gp = load ptr, ptr %i.ar, align 8, !tbaa !211, !nonnull !96, !align !212
  store ptr %.ph, ptr %6, align 16, !tbaa !222
  store ptr null, ptr %i.el, align 8, !tbaa !37
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59CDLOpDataEEC2ERKS3_.exit

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_59CDLOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.ae
  %i.gq = atomicrmw volatile add ptr %i.gk, i32 1 acq_rel, align 4, !noalias !219 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.gr = load ptr, ptr %i.ar, align 8, !tbaa !211, !nonnull !96, !align !212 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_515TransformWriter8writeOpsERKNS_10CTFVersionE:bb.a
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !229
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !43
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !229
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i227 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i227, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i = phi i32 [ %i.ib, %bb.at ], [ %i.il, %bb.au ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.im, label %bb.av, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit, !prof !46

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !230
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit: ; preds = %bb.ap, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.av
  call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #27, !inline_history !230
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.in = load ptr, ptr %i.ek, align 8, !tbaa !37 ; 8 uses
  %.not.i.i228 = icmp eq ptr %i.in, null
  br i1 %.not.i.i228, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, label %bb.aw

bb.aw:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.io, align 8, !tbaa !40
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !42
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #27, !inline_history !228
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #27, !inline_history !228
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232

bb.ay:                                            ; preds = %bb.aw
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i229 = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i229, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

bb.ba:                                            ; preds = %bb.ay
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i231 = phi i32 [ %i.ir, %bb.az ], [ %i.jb, %bb.ba ]
  %i.jc = icmp eq i32 %.0.i.i.i.i231, 1
  br i1 %i.jc, label %bb.bb, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, !prof !46

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #27
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ul

bb.bc:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59CDLOpDataEEC2ERKS3_.exit
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #27
  br label %bb.be

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn203 = phi { ptr, i32 } [ %i.je, %bb.bd ], [ %i.jd, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.bf:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.jf = load ptr, ptr %i.es, align 8, !tbaa !118, !noalias !231 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jh = call ptr @__dynamic_cast(ptr nonnull %i.jf, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_514ExponentOpDataE, i64 0) #27, !noalias !231 ; 4 uses
  %.not.not.i233 = icmp eq ptr %i.jh, null
  br i1 %.not.not.i233, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.jh, ptr %7, align 8, !tbaa !234, !alias.scope !231
  %i.ji = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !37, !noalias !231 ; 3 uses
  store ptr %i.jj, ptr %i.dt, align 8, !tbaa !37, !alias.scope !231
  %.not.i.i.i.i234 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i234, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 3 uses
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !231
  %.not.i.i.i.i.i235 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i.i.i235, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !3, !noalias !231
  %i.jn = add nsw i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jk, align 4, !tbaa !3, !noalias !231
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.bk:                                            ; preds = %bb.bi
  %i.jo = atomicrmw volatile add ptr %i.jk, i32 1 acq_rel, align 4, !noalias !231 ; 0 uses
  %.pre907 = load ptr, ptr %7, align 8, !tbaa !234
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i: ; preds = %bb.bg, %bb.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !231
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.bh, %bb.bj, %bb.bk, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i
  %i.jp = phi ptr [ %i.jh, %bb.bh ], [ %i.jh, %bb.bj ], [ %.pre907, %bb.bk ], [ null, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataEEC2IKNS0_6OpDataEEERKS_IT_EPS2_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 168
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !163
  %i.js = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.bl unwind label %bb.bt     ; 3 uses

bb.bl:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit
  store ptr %i.js, ptr %8, align 8, !tbaa !237
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  store ptr %i.jt, ptr %i.du, align 8, !tbaa !238
  store double %i.jr, ptr %i.js, align 8, !tbaa !163
  store ptr %i.jt, ptr %i.dv, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 176
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !163
  %i.jw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.bm unwind label %bb.bu     ; 3 uses

bb.bm:                                            ; preds = %bb.bl
  store ptr %i.jw, ptr %9, align 8, !tbaa !237
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  store ptr %i.jx, ptr %i.dw, align 8, !tbaa !238
  store double %i.jv, ptr %i.jw, align 8, !tbaa !163
  store ptr %i.jx, ptr %i.dx, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 184
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !163
  %i.ka = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.bn unwind label %bb.bv     ; 3 uses

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.ka, ptr %10, align 8, !tbaa !237
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  store ptr %i.kb, ptr %i.dy, align 8, !tbaa !238
  store double %i.jz, ptr %i.ka, align 8, !tbaa !163
  store ptr %i.kb, ptr %i.dz, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jp, i64 192
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !163
  %i.ke = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.bo unwind label %bb.bw     ; 3 uses

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.ke, ptr %11, align 8, !tbaa !237
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  store ptr %i.kf, ptr %i.ea, align 8, !tbaa !238
  store double %i.kd, ptr %i.ke, align 8, !tbaa !163
  store ptr %i.kf, ptr %i.eb, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i32 0, ptr %i.e, align 4, !tbaa !240
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.kg = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #30
          to label %.noexc243 unwind label %bb.bx ; 8 uses

.noexc243:                                        ; preds = %bb.bo
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 4 uses
  store i32 1, ptr %i.kh, align 8, !tbaa !40, !noalias !241
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store i32 1, ptr %i.ki, align 4, !tbaa !42, !noalias !241
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.kg, align 8, !tbaa !43, !noalias !241
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511GammaOpDataC1ERKNS0_5StyleERKSt6vectorIdSaIdEES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(272) %i.kj, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.bp unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !241

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc243
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 288) #29, !noalias !241
  br label %.body

bb.bp:                                            ; preds = %.noexc243
  store ptr %i.kg, ptr %i.ec, align 8, !tbaa !37, !alias.scope !241
  store ptr %i.kj, ptr %12, align 8, !tbaa !244, !alias.scope !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  %i.kn = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.km, ptr noundef nonnull align 8 dereferenceable(120) %i.kl)
          to label %bb.bq unwind label %bb.by     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.ko = load i8, ptr %i.az, align 8, !tbaa !84, !range !95, !noundef !96
  %i.kp = trunc nuw i8 %i.ko to i1
  %.pre908 = load ptr, ptr %12, align 8, !tbaa !245 ; 2 uses
  br i1 %i.kp, label %bb.br, label %bb.cb

bb.br:                                            ; preds = %bb.bq
  %i.kq = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511GammaOpData24isAlphaComponentIdentityEv(ptr noundef nonnull align 8 dereferenceable(272) %.pre908)
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %bb.br
  br i1 %i.kq, label %bb.cb, label %.noexc.i

.noexc.i:                                         ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.kr, ptr %13, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 19, ptr %i.d, align 8, !tbaa !26
  %i.ks = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc244 unwind label %bb.bz ; 2 uses

.noexc244:                                        ; preds = %.noexc.i
  store ptr %i.ks, ptr %13, align 8, !tbaa !11
  %i.kt = load i64, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ks, ptr noundef nonnull align 1 dereferenceable(19) @.str.17, i64 19, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !16
  %i.kv = load ptr, ptr %13, align 8, !tbaa !11
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.kw, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ThrowWriteOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.unreachable726 unwind label %bb.ca

.unreachable726:                                  ; preds = %.noexc244
  unreachable

bb.bt:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit283

bb.bu:                                            ; preds = %bb.bl
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit281

bb.bv:                                            ; preds = %bb.bm
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit279

bb.bw:                                            ; preds = %bb.bn
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit277

bb.bx:                                            ; preds = %bb.bo
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, %bb.bx
  %eh.lpad-body = phi { ptr, i32 } [ %i.lb, %bb.bx ], [ %i.kk, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.dm

bb.by:                                            ; preds = %bb.br, %bb.bp
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.bz:                                            ; preds = %.noexc.i
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.ca:                                            ; preds = %.noexc244
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = load ptr, ptr %13, align 8, !tbaa !11   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.kr
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.ca
  %i.lh = load i64, ptr %i.kr, align 8, !tbaa !17
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bz
  %.pn193 = phi { ptr, i32 } [ %i.ld, %bb.bz ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.le, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.dl

bb.cb:                                            ; preds = %bb.bq, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.lj = load ptr, ptr %i.ar, align 8, !tbaa !211, !nonnull !96, !align !212
  store ptr %.pre908, ptr %15, align 16, !tbaa !169
  store ptr %i.kg, ptr %i.ed, align 8, !tbaa !37
  %67 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i249.a = icmp eq i8 %67, 0
  br i1 %.not.i.i.i.i249.a, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lk = load i32, ptr %i.kh, align 8, !tbaa !3
  %i.ll = add nsw i32 %i.lk, 1
  store i32 %i.ll, ptr %i.kh, align 8, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2IS1_vEERKS_IT_E.exit

bb.cd:                                            ; preds = %bb.cb
  %i.lm = atomicrmw volatile add ptr %i.kh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.cc, %bb.cd
  invoke void @_ZN16OpenColorIO_v2_516XmlElementWriterC2ERNS_12XmlFormatterE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.lj)
          to label %.noexc252 unwind label %bb.di

.noexc252:                                        ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2IS1_vEERKS_IT_E.exit
  store i32 0, ptr %i.ee, align 8, !tbaa !225
  store i32 0, ptr %i.ef, align 4, !tbaa !227
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE, i64 16), ptr %14, align 8, !tbaa !43
  %i.ln = load <2 x i32>, ptr %1, align 4, !tbaa !3
  store <2 x i32> %i.ln, ptr %i.eg, align 8, !tbaa !3
  %i.lo = load i32, ptr %i.bg, align 4, !tbaa !23
  store i32 %i.lo, ptr %i.eh, align 8, !tbaa !23
  %i.lp = load ptr, ptr %i.ed, align 8, !tbaa !37 ; 3 uses
  %i.lq = load <2 x ptr>, ptr %15, align 16, !tbaa !63
  store <2 x ptr> %i.lq, ptr %i.ei, align 8, !tbaa !63
  %.not.i.i.i.i250 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i.i250, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %.noexc252
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 3 uses
  %i.ls = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i251 = icmp eq i8 %i.ls, 0
  br i1 %.not.i.i.i.i.i251, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit.thread

_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit.thread: ; preds = %bb.ce
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !3
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !3
  br label %bb.cf

_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit: ; preds = %bb.ce
  %i.lv = atomicrmw volatile add ptr %i.lr, i32 1 acq_rel, align 4 ; 0 uses
  %.pr689.pre = load ptr, ptr %i.ed, align 8, !tbaa !37 ; 2 uses
  %.not.i.i253 = icmp eq ptr %.pr689.pre, null
  br i1 %.not.i.i253, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit.thread, %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit
  %.pr6891066 = phi ptr [ %i.lp, %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit.thread ], [ %.pr689.pre, %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit ] ; 7 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.pr6891066, i64 8 ; 4 uses
  %i.lx = load atomic i64, ptr %i.lw acquire, align 8 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, 4294967297
  %i.lz = trunc i64 %i.lx to i32                  ; 2 uses
  br i1 %i.ly, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.lw, align 8, !tbaa !40
  %i.ma = getelementptr inbounds nuw i8, ptr %.pr6891066, i64 12
  store i32 0, ptr %i.ma, align 4, !tbaa !42
  %i.mb = load ptr, ptr %.pr6891066, align 8, !tbaa !43
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(16) %.pr6891066) #27, !inline_history !247
  %i.me = load ptr, ptr %.pr6891066, align 8, !tbaa !43
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %.pr6891066) #27, !inline_history !247
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ch:                                            ; preds = %bb.cf
  %i.mh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i254 = icmp eq i8 %i.mh, 0
  br i1 %.not.i.i.i254, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mi = add nsw i32 %i.lz, -1
  store i32 %i.mi, ptr %i.lw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i255

bb.cj:                                            ; preds = %bb.ch
  %i.mj = atomicrmw volatile add ptr %i.lw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i255

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i255: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i256 = phi i32 [ %i.lz, %bb.ci ], [ %i.mj, %bb.cj ]
  %i.mk = icmp eq i32 %.0.i.i.i.i256, 1
  br i1 %i.mk, label %bb.ck, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i255
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr6891066) #27
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc252, %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterC2ERNS_12XmlFormatterERKNS_10CTFVersionESt10shared_ptrIKNS_11GammaOpDataEE.exit, %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i255, %bb.ck
  store i32 %.0818, ptr %i.ee, align 8, !tbaa !225
  store i32 %.1, ptr %i.ef, align 4, !tbaa !227
  invoke void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.cl unwind label %bb.dj

bb.cl:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE, i64 16), ptr %14, align 8, !tbaa !43
  %i.ml = load ptr, ptr %i.ej, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i257 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i257, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 4 uses
  %i.mn = load atomic i64, ptr %i.mm acquire, align 8 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 4294967297
  %i.mp = trunc i64 %i.mn to i32                  ; 2 uses
  br i1 %i.mo, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %i.mm, align 8, !tbaa !40
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  store i32 0, ptr %i.mq, align 4, !tbaa !42
  %i.mr = load ptr, ptr %i.ml, align 8, !tbaa !43
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #27, !inline_history !248
  %i.mu = load ptr, ptr %i.ml, align 8, !tbaa !43
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #27, !inline_history !248
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit

bb.co:                                            ; preds = %bb.cm
  %i.mx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i258 = icmp eq i8 %i.mx, 0
  br i1 %.not.i.i.i.i258, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.my = add nsw i32 %i.mp, -1
  store i32 %i.my, ptr %i.mm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i259

bb.cq:                                            ; preds = %bb.co
  %i.mz = atomicrmw volatile add ptr %i.mm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i259

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i259: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i260 = phi i32 [ %i.mp, %bb.cp ], [ %i.mz, %bb.cq ]
  %i.na = icmp eq i32 %.0.i.i.i.i.i260, 1
  br i1 %i.na, label %bb.cr, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit, !prof !46

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i259
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #27, !inline_history !249
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit: ; preds = %bb.cl, %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i259, %bb.cr
  call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %14) #27, !inline_history !249
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.nb = load ptr, ptr %i.ec, align 8, !tbaa !37 ; 8 uses
  %.not.i.i261 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i261, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 4 uses
  %i.nd = load atomic i64, ptr %i.nc acquire, align 8 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, 4294967297
  %i.nf = trunc i64 %i.nd to i32                  ; 2 uses
  br i1 %i.ne, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.nc, align 8, !tbaa !40
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  store i32 0, ptr %i.ng, align 4, !tbaa !42
  %i.nh = load ptr, ptr %i.nb, align 8, !tbaa !43
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #27, !inline_history !250
  %i.nk = load ptr, ptr %i.nb, align 8, !tbaa !43
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.nn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i262 = icmp eq i8 %i.nn, 0
  br i1 %.not.i.i.i262, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.no = add nsw i32 %i.nf, -1
  store i32 %i.no, ptr %i.nc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i263

bb.cw:                                            ; preds = %bb.cu
  %i.np = atomicrmw volatile add ptr %i.nc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i263

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i263: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i264 = phi i32 [ %i.nf, %bb.cv ], [ %i.np, %bb.cw ]
  %i.nq = icmp eq i32 %.0.i.i.i.i264, 1
  br i1 %i.nq, label %bb.cx, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i263
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #27
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev.exit, %bb.ct, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i263, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.nr = load ptr, ptr %11, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i265 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ns = load ptr, ptr %i.ea, align 8, !tbaa !238
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = ptrtoint ptr %i.nr to i64
  %i.nv = sub i64 %i.nt, %i.nu
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nv) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit
end_hunk_2
