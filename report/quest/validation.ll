Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/validation?download=true
inline.NumInlined: 5002
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 318
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 319
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_Z39validate_measurementOutcomesFitInGpuMem5QuregiPKc:bb.a
  %i.bx = load ptr, ptr %7, align 8, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !44
  %i.ce = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i24, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %8, ptr %3, align 8, !tbaa !46
  %i.cf = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i25 unwind label %bb.m ; 3 uses

.noexc.i.i25:                                     ; preds = %bb.e, %.noexc.i.i25
  %.0.i.i.i.i.i.i = phi ptr [ %i.ch, %.noexc.i.i25 ], [ %i.cf, %bb.e ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i25, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i25
  store ptr %.0.i.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.cf, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cj, %bb.f ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.g, label %bb.f, !llvm.loop !1

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i, ptr %i.cc, align 8, !tbaa !48
  %i.ck = load i64, ptr %i.af, align 8, !tbaa !44
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.g, %bb.d
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.bm, ptr nofree noundef nonnull align 8 dereferenceable(32) %7, ptr nofree noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.cl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.h
  %i.co = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bn
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.cq = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cs = load ptr, ptr %i.ac, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.cs)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit27 unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit27
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %.body
  %i.cv = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.cw) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !26
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.1
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !25 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.1
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !26
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.2
  %i.dj = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.2
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !26
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.3

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.p

bb.l:                                             ; preds = %.noexc.i22
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.m:                                             ; preds = %bb.e
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn9 = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.dp, %bb.m ] ; 2 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bn
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.o
  %i.dt = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.l
  %.pn9.pn = phi { ptr, i32 } [ %i.do, %bb.l ], [ %.pn9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn9, %bb.o ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.3
  %.pn9.pn.pn = phi { ptr, i32 } [ %.pn9.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ao, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit33.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn9.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z38validate_measurementProbsAreNormalisedSt6vectorIdSaIdEEPKc(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.b.i = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %i.b = load double, ptr @_ZL24global_validationEpsilon, align 8
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  %i.d = select i1 %.b.i, i1 true, i1 %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !132    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !206

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !207
  %.pre12 = load ptr, ptr %i.e, align 8, !tbaa !207
  %.pre14 = ptrtoint ptr %.pre12 to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %.pre-phi = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.h, %bb.b ]
  %i.m = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %i.l, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.b ] ; 5 uses
  %.pre-phi15 = ptrtoint ptr %i.m to i64
  store ptr %i.n, ptr %2, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !133
  %i.r = sub i64 %.pre-phi, %.pre-phi15           ; 4 uses
  %i.s = icmp sgt i64 %i.r, 8
  br i1 %i.s, label %bb.e, label %bb.f, !prof !208

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.m, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.r, 8
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load double, ptr %i.m, align 8, !tbaa !29
  store double %i.u, ptr %i.n, align 8, !tbaa !29
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.e, %bb.f, %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  store ptr %i.v, ptr %i.o, align 8, !tbaa !205
  %i.w = invoke noundef double @_Z11util_getSumSt6vectorIdSaIdEE(ptr nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !132    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  %i.ac = fadd double %i.w, -1.000000e+00
  %i.ad = call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = load double, ptr @_ZL24global_validationEpsilon, align 8, !tbaa !29
  %i.af = fcmp ole double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !24
  %i.ah = load ptr, ptr @_ZN6report31OUTCOME_PROBS_DO_NOT_SUM_TO_ONEB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report31OUTCOME_PROBS_DO_NOT_SUM_TO_ONEB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !30
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !25
  %i.al = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.am = phi ptr [ %i.ak, %.noexc.i ], [ %i.ag, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  switch i64 %i.ai, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !26
  store i8 %i.an, ptr %i.am, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.j, %bb.k
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !23
  %i.aq = load ptr, ptr %3, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.b.i6 = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %or.cond.i = or i1 %i.af, %.b.i6
  br i1 %or.cond.i, label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.as = load ptr, ptr @global_inputErrorHandler, align 8, !tbaa !27
  %i.at = load ptr, ptr %3, align 8, !tbaa !25
  invoke void %i.as(ptr noundef %1, ptr noundef %i.at)
          to label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit unwind label %bb.o, !inline_history !50

_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.l
  %i.au = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  ret void

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !132   ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIdSaIdEED2Ev.exit8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit8

bb.o:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ag
  br i1 %i.bg, label %_ZNSt6vectorIdSaIdEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.o
  %i.bh = load i64, ptr %i.ag, align 8, !tbaa !26
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit8

_ZNSt6vectorIdSaIdEED2Ev.exit8:                   ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %i.ay, %bb.m ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.be, %bb.o ]
  resume { ptr, i32 } %.pn
}

declare noundef double @_Z11util_getSumSt6vectorIdSaIdEE(ptr nofree noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: mustprogress uwtable
define void @_Z40validate_measurementOutcomesMatchTargetsiiPKc(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %4 = alloca %"class.std::map", align 8          ; 14 uses
  %5 = alloca [2 x %"struct.std::pair"], align 8  ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.b, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.d, align 1, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.f = sext i32 %0 to i64
  store i64 %i.f, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.h, ptr noundef nonnull align 1 dereferenceable(15) @.str.688, i64 15, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 15, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 71
  store i8 0, ptr %i.j, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.l = sext i32 %1 to i64
  store i64 %i.l, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.m, ptr %i.o, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.m, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %4, ptr %3, align 8, !tbaa !46
  %i.r = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.s = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.1 unwind label %.body ; 0 uses
end_hunk_0
