Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_java?download=true
inline.NumInlined: 5419
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK11flatbuffers4java13JavaGenerator8SaveTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9NamespaceES9_b:bb.a
  %.pre.i51 = load ptr, ptr %6, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ay, ptr %5, align 8, !tbaa !28
  %i.bg = load <2 x i64>, ptr %i.av, align 8, !tbaa !29
  store <2 x i64> %i.bg, ptr %i.f, align 8, !tbaa !29
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !29
  store ptr %i.ay, ptr %5, align 8, !tbaa !28
  %i.bi = load <2 x i64>, ptr %i.av, align 8, !tbaa !29
  store <2 x i64> %i.bi, ptr %i.f, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aw, ptr %6, align 8, !tbaa !28
  store i64 %i.bh, ptr %i.ak, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ak, ptr %6, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.bj = phi ptr [ %.pre.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aw, %bb.q ], [ %i.ak, %bb.r ]
  store i64 0, ptr %i.av, align 8, !tbaa !31
  store i8 0, ptr %i.bj, align 1, !tbaa !29
  %i.bk = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ak
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bm = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.bo = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.u
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = load i64, ptr %i.u, align 8, !tbaa !29
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  %i.bs = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.h
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !29
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67 ; 3 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !200 ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i.i.i.i, label %.noexc60, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.cd = icmp ugt i64 %i.cc, 9223372036854775776
  br i1 %i.cd, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !221

.noexc.i.i.i:                                     ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc59 unwind label %bb.al

.noexc59:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #27
          to label %.noexc60 unwind label %bb.al

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.cf = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.ce, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.cf, ptr %9, align 8, !tbaa !200
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !68
  %i.cj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bz, ptr %i.by, ptr noundef %i.cf)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %.noexc60
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %9, align 8, !tbaa !200   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !68
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #26
  br label %.body

bb.v:                                             ; preds = %.noexc60
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !512
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !512
  %i.ct = load ptr, ptr %2, align 8, !tbaa !202   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !202
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 5                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %i.dt, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i ], [ %i.cz, %bb.v ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.ds, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i ], [ %i.ct, %bb.v ] ; 4 uses
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !67 ; 8 uses
  %i.dc = load ptr, ptr %i.ci, align 8, !tbaa !68
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !30
  %i.de = load ptr, ptr %.056.i.i.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !69
  %i.dh = icmp ugt i64 %i.dg, 15
  br i1 %i.dh, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.w
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc61 unwind label %bb.am  ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.di, ptr %i.db, align 8, !tbaa !28
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.dj, ptr %i.dd, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc61, %bb.w
  %i.dk = phi ptr [ %i.di, %.noexc61 ], [ %i.dd, %bb.w ] ; 2 uses
  switch i64 %i.dg, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dl = load i8, ptr %i.de, align 1, !tbaa !29
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.de, i64 %i.dg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !31
  %i.do = load ptr, ptr %i.db, align 8, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dq = load ptr, ptr %i.cg, align 8, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store ptr %i.dr, ptr %i.cg, align 8, !tbaa !67
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.db, ptr noundef nonnull align 8 dereferenceable(32) %.056.i.i.i.i.i)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i unwind label %bb.am

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i: ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 32
  %i.dt = add nsw i64 %.07.i.i.i.i.i, -1
  %16 = icmp samesign ugt i64 %.07.i.i.i.i.i, 1
  br i1 %16, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit, !llvm.loop !497

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN11flatbuffers13BaseGenerator13FullNamespaceB5cxx11EPKcRKNS_9NamespaceE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !31 ; 4 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.dx = load ptr, ptr %10, align 8, !tbaa !28, !noalias !513
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.dy, ptr %12, align 8, !tbaa !30, !alias.scope !514
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !31, !alias.scope !514
  store i8 0, ptr %i.dy, align 8, !tbaa !29, !alias.scope !514
  %i.ea = add i64 %i.dv, 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ea)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !31, !alias.scope !514
  %i.ec = and i64 %i.eb, -8
  %i.ed = icmp eq i64 %i.ec, 4611686018427387896
  br i1 %i.ed, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.101, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !31, !alias.scope !514
  %i.eg = sub i64 4611686018427387903, %i.ef
  %i.eh = icmp ult i64 %i.eg, %i.dv
  br i1 %i.eh, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.cont.i.i unwind label %bb.ad

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.dx, i64 noundef %i.dv)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.ab
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8, !tbaa !28, !alias.scope !514 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dy
  br i1 %i.el, label %.body63, label %.body63.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.em = load i64, ptr %i.dz, align 8, !tbaa !31, !noalias !515
  %i.en = icmp eq i64 %i.em, 4611686018427387903
  br i1 %i.en, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i65

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.noexc69 unwind label %bb.ao

.noexc69:                                         ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i65: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.eo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.102, i64 noundef 1)
          to label %.noexc70 unwind label %bb.ao  ; 6 uses

.noexc70:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i65
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ep, ptr %11, align 8, !tbaa !30, !alias.scope !515
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !28 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 5 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

bb.af:                                            ; preds = %.noexc70
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !31 ; 3 uses
  %i.ev = icmp ult i64 %i.eu, 16
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add nuw nsw i64 %i.eu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ep, ptr noundef nonnull align 8 dereferenceable(1) %i.er, i64 %i.ew, i1 false)
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %.noexc70
  store ptr %i.eq, ptr %11, align 8, !tbaa !28, !alias.scope !515
  %i.ex = load i64, ptr %i.er, align 8, !tbaa !29
  store i64 %i.ex, ptr %i.ep, align 8, !tbaa !29, !alias.scope !515
  %.phi.trans.insert.i67 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.pre.i68 = load i64, ptr %.phi.trans.insert.i67, align 8, !tbaa !31
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.af
  %i.ey = phi i64 [ %i.eu, %bb.af ], [ %.pre.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !31, !alias.scope !515
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !28
  store i64 0, ptr %i.ez, align 8, !tbaa !31
  store i8 0, ptr %i.er, align 8, !tbaa !29
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !31 ; 2 uses
  %i.fc = load i64, ptr %i.f, align 8, !tbaa !31
  %i.fd = sub i64 4611686018427387903, %i.fc
  %i.fe = icmp ult i64 %i.fd, %i.fb
  br i1 %i.fe, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.noexc72 unwind label %bb.ap

.noexc72:                                         ; preds = %bb.ah
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ag
  %i.ff = load ptr, ptr %11, align 8, !tbaa !28
  %i.fg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ff, i64 noundef %i.fb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.ap ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fh = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ep
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fj = load i64, ptr %i.ep, align 8, !tbaa !29
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.fl = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.dy
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fn = load i64, ptr %i.dy, align 8, !tbaa !29
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fp = load i64, ptr %i.f, align 8, !tbaa !31
  %i.fq = and i64 %i.fp, -2
  %i.fr = icmp eq i64 %i.fq, 4611686018427387902
  br i1 %i.fr, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.fs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.100, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.aq ; 0 uses

bb.ai:                                            ; preds = %bb.b, %.noexc.i, %bb.d
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.aj:                                            ; preds = %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.k
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.u
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ak
  %i.fy = load i64, ptr %i.u, align 8, !tbaa !29
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.aj ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.fv, %bb.ak ] ; 2 uses
  %i.ga = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.h
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.gc = load i64, ptr %i.h, align 8, !tbaa !29
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.ft, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
end_hunk_0
begin_hunk_1_@_ZNK11flatbuffers4java13JavaGenerator23GenGetterForLookupByKeyEPNS_8FieldDefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flatbuffers5Namer8VariableINS_8FieldDefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(312) %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209)
  %i.a = load ptr, ptr %2, align 8, !tbaa !28, !noalias !3209
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !3209 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !30, !alias.scope !3210
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !31, !alias.scope !3210
  store i8 0, ptr %i.d, align 8, !tbaa !29, !alias.scope !3210
  %i.f = add i64 %i.c, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !31, !alias.scope !3210
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !31, !alias.scope !3210
  %i.l = icmp eq i64 %i.k, 4611686018427387903
  br i1 %i.l, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !28, !alias.scope !3210 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8, !tbaa !29, !alias.scope !3210
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31, !noalias !3211 ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !31, !noalias !3211
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !28, !noalias !3211
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.x, i64 noundef %i.t)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !30, !alias.scope !3211
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.aa, ptr %4, align 8, !tbaa !28, !alias.scope !3211
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !29
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !29, !alias.scope !3211
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ai = phi i64 [ %i.ae, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !31, !alias.scope !3211
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !28
  store i64 0, ptr %i.aj, align 8, !tbaa !31
  store i8 0, ptr %i.ab, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !207
  %i.an = load ptr, ptr %1, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.am)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.z
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  %i.as = load i64, ptr %i.z, align 8, !tbaa !29
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.au = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.d
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !29
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.z
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !29
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.az, %bb.i ]
  %i.be = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.d
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !29
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flatbuffers4java13JavaGenerator45ConvertPrimitiveTypeToObjectWrapper_ObjectAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1819242338
  %i.f = getelementptr i8, ptr %i.c, i64 3
  %i.g = load i32, ptr %i.f, align 1
  %i.h = xor i32 %i.g, 1851876716
  %i.i = or i32 %i.e, %i.h
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.m, ptr noundef nonnull align 1 dereferenceable(7) @.str.487, i64 7, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.o, align 1, !tbaa !29
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13: ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !28    ; 3 uses
  %6 = load i32, ptr %.pre, align 1
  %7 = icmp ne i32 %6, 1702132066
  %8 = zext i1 %7 to i32
  %i.p = icmp eq i32 %8, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !30
  store i32 1702132034, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.s, align 4, !tbaa !29
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
  %i.t = load i32, ptr %.pre, align 1
  %i.u = icmp ne i32 %i.t, 1918986339
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, ptr noundef nonnull align 1 dereferenceable(9) @.str.489, i64 9, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.z, align 1, !tbaa !29
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %bb.a
  %.pre48 = load ptr, ptr %2, align 8, !tbaa !28  ; 2 uses
  %9 = load i32, ptr %.pre48, align 1
  %10 = xor i32 %9, 1919903859
  %11 = getelementptr i8, ptr %.pre48, i64 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = xor i32 %13, 116
  %15 = or i32 %10, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %i.aa = icmp eq i32 %17, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ab, ptr noundef nonnull align 1 dereferenceable(5) @.str.490, i64 5, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31: ; preds = %bb.a
  %.pre49 = load ptr, ptr %2, align 8, !tbaa !28  ; 2 uses
  %18 = load i16, ptr %.pre49, align 1
  %19 = xor i16 %18, 28265
  %20 = getelementptr i8, ptr %.pre49, i64 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i16
  %23 = xor i16 %22, 116
  %24 = or i16 %19, %23
  %25 = icmp ne i16 %24, 0
  %26 = zext i1 %25 to i32
  %i.ae = icmp eq i32 %26, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.af, ptr noundef nonnull align 1 dereferenceable(7) @.str.491, i64 7, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.ah, align 1, !tbaa !29
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19
  %27 = load i32, ptr %.pre, align 1
  %28 = icmp ne i32 %27, 1735290732
  %29 = zext i1 %28 to i32
  %i.ai = icmp eq i32 %29, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.492, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
  %i.aj = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.32)
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.493, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.f

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread47
  %i.ak = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26)
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.494, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flatbuffers4java13JavaGenerator28GenConcreteTypeGet_ObjectAPIB5cxx11ERKNS_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(26) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.flatbuffers::Type", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3228
  call void @_ZNK11flatbuffers4java13JavaGenerator15DestinationTypeERKNS_4TypeEb(ptr dead_on_unwind nonnull writable sret(%"struct.flatbuffers::Type") align 8 %5, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(26) %2, i1 noundef zeroext true), !noalias !3228
  call void @_ZNK11flatbuffers4java13JavaGenerator10GenTypeGetB5cxx11ERKNS_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(26) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3228
  %i.a = load i32, ptr %2, align 8, !tbaa !218    ; 2 uses
  switch i32 %i.a, label %bb.an [
    i32 15, label %bb.b
    i32 17, label %bb.b
    i32 14, label %bb.b
    i32 16, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22, !noalias !3229
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !noalias !3229
  invoke void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(400) %i.f, ptr noundef nonnull align 8 dereferenceable(336) %i.c)
          to label %_ZNK11flatbuffers8IdlNamer10ObjectTypeB5cxx11ERKNS_9StructDefE.exit unwind label %bb.e, !inline_history !1

_ZNK11flatbuffers8IdlNamer10ObjectTypeB5cxx11ERKNS_9StructDefE.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %i.l = sub i64 %i.k, %i.e                       ; 2 uses
  %i.m = icmp ugt i64 %i.e, %i.k
  br i1 %i.m, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i

bb.d:                                             ; preds = %_ZNK11flatbuffers8IdlNamer10ObjectTypeB5cxx11ERKNS_9StructDefE.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i64 noundef %i.l, i64 noundef %i.k) #30
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i: ; preds = %_ZNK11flatbuffers8IdlNamer10ObjectTypeB5cxx11ERKNS_9StructDefE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %6, align 8, !tbaa !28
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i64 noundef %i.e, ptr noundef %i.p, i64 noundef %i.o)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i
  %i.r = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !29
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %thread-pre-split

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.e
  %.pn26 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ay

bb.g:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !261
  %i.af = icmp eq i32 %i.ae, 16
  br i1 %i.af, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !269 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !185, !noalias !3230
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3230
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !22, !noalias !3230
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !noalias !3230
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(400) %i.ag, ptr noundef nonnull align 8 dereferenceable(200) %i.ai)
          to label %.noexc34 unwind label %bb.u, !inline_history !7

.noexc34:                                         ; preds = %bb.h
  invoke void @_ZNK11flatbuffers8IdlNamer16NamespacedStringEPKNS_9NamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(400) %i.ag, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc34
  %i.ao = load ptr, ptr %4, align 8, !tbaa !28, !noalias !3230 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !29, !noalias !3230
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.j:                                             ; preds = %.noexc34
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %4, align 8, !tbaa !28, !noalias !3230 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.j
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !29, !noalias !3230
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3230
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3230
  invoke void @_ZNK11flatbuffers4java13JavaGenerator8PrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.v
end_hunk_1
