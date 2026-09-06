Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_self_intersections?download=true
inline.NumInlined: 24559
inline.NumDeleted: 7922
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN4CGAL14assertion_failEPKcS1_iS1_:bb.a
  %.0 = phi i1 [ false, %bb.t ], [ true, %bb.s ]  ; 2 uses
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %7, align 8, !tbaa !117   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ah
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !115
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.au, %bb.v ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.av, %bb.w ] ; 2 uses
  %.1 = phi i1 [ true, %bb.v ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.w ] ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !117   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.v
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.v, align 8, !tbaa !115
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.2 = phi i1 [ true, %bb.u ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !117   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.j
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.bg = load i64, ptr %i.j, align 8, !tbaa !115
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.bi = load ptr, ptr %4, align 8, !tbaa !117   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.g
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread: ; preds = %bb.e, %.noexc.i23
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !117   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.g
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread
  %i.bn = load i64, ptr %i.g, align 8, !tbaa !115
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bp = load i64, ptr %i.g, align 8, !tbaa !115
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bq) #40
  br i1 %.2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread59, label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  br i1 %.2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread59, label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn.pn.pn.pn52 = phi { ptr, i32 } [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.thread ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread ]
  call void @__cxa_free_exception(ptr %i.f) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread59
  %.pn.pn.pn.pn51 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn.pn.pn.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread59 ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  resume { ptr, i32 } %.pn.pn.pn.pn51

bb.y:                                             ; preds = %bb.t
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEES9_EEvRKNS3_10MatrixBaseIT_EERKNSA_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNSM_IT2_EERNSM_IT3_EERNSM_IT4_EERNSM_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.40", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_EC2ERKNS5_10MatrixBaseIS7_EERKNSD_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS9_EERNSN_ISA_EERNSN_IS8_EERNSN_ISB_EESV_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_EC2ERKNS5_10MatrixBaseIS7_EERKNSD_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS9_EERNSN_ISA_EERNSN_IS8_EERNSN_ISB_EESV_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_EC2ERKNS5_10MatrixBaseIS7_EERKNSD_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS9_EERNSN_ISA_EERNSN_IS8_EERNSN_ISB_EESV_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !950 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !951 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !952 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !950 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !951 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !952 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !953
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !947

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESO_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS12_IT2_EERNS12_IT3_EERNS12_IT4_EERNS12_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.125", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.126", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !220
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1083 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1084 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1085 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1083 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1084 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1085 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1086
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1080

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEESN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IlLin1ELi2ELi0ELin1ELi2EEENS4_IlLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS13_IT2_EERNS13_IT3_EERNS13_IT4_EERNS13_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.131", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.134", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_EC2ERKNS5_10MatrixBaseIS7_EERKNST_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS13_ISP_EERNS13_ISQ_EERNS13_ISR_EES1B_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_EC2ERKNS5_10MatrixBaseIS7_EERKNST_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS13_ISP_EERNS13_ISQ_EERNS13_ISR_EES1B_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_EC2ERKNS5_10MatrixBaseIS7_EERKNST_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS13_ISP_EERNS13_ISQ_EERNS13_ISR_EES1B_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not117 = icmp eq ptr %i.o, %i.p
  br i1 %.not117, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre152 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre152
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit60

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit60

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.097.0137 = phi ptr [ %.sroa.097.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0136 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0135 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.093.0134 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.093.0134)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.093.0134, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1191 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.093.0134, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.093.0134, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1192 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.093.0134, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.093.0134, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1193 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.093.0134, align 8, !tbaa !146, !noalias !1191 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1192 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1193 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0136, %.sroa.20.0135
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0136, align 8
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0136, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.779.0..sroa_idx, align 8
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0136, i64 24
  store <2 x double> %i.aw, ptr %.sroa.882.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0136, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0136, i64 48
  store ptr %.sroa.093.0134, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0136, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0136 to i64
  %i.ba = ptrtoint ptr %.sroa.097.0137 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.779.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.779.0..sroa_idx80, align 8
  %.sroa.882.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.882.0..sroa_idx83, align 8
  %.sroa.10.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx88, align 8
  %.sroa.11.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.093.0134, ptr %.sroa.11.0..sroa_idx90, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.097.0137, %.sroa.12.0136
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.097.0137, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1194
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0136
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0137, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0135, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0135, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0136, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.097.1 = phi ptr [ %.sroa.097.0137, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.097.0137, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.093.0134, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not118 = icmp eq ptr %i.bq, %i.br
  br i1 %.not118, label %._crit_edge, label %.lr.ph, !llvm.loop !1189

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.097.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.097.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_IlLin1ELi2ELi0ELin1ELi2EEENS6_IlLin1ELi1ELi0ELin1ELi1EEESR_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS11_IT2_EERNS11_IT3_EERNS11_IT4_EERNS11_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.135", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.136", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1243 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1244 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1245 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1243 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1244 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1245 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1246
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1240

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_3
begin_hunk_4_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES6_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS11_IT2_EERNS11_IT3_EERNS11_IT4_EERNS11_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.137", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.138", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1296 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1297 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1298 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1296 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1297 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1298 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1299
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1293

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_4
begin_hunk_5_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEES7_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNSK_IT2_EERNSK_IT3_EERNSK_IT4_EERNSK_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.139", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.142", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_EC2ERKNS5_10MatrixBaseIS7_EERKNSB_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS7_EERNSL_IS8_EESP_RNSL_IS9_EESR_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_EC2ERKNS5_10MatrixBaseIS7_EERKNSB_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS7_EERNSL_IS8_EESP_RNSL_IS9_EESR_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_EC2ERKNS5_10MatrixBaseIS7_EERKNSB_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS7_EERNSL_IS8_EESP_RNSL_IS9_EESR_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1349 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1350 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1351 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1349 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1350 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1351 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1352
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1346

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_5
begin_hunk_6_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS11_IT2_EERNS11_IT3_EERNS11_IT4_EERNS11_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.143", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.144", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !220
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1402 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1403 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1404 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1402 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1403 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1404 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1405
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1399

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_6
begin_hunk_7_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_S6_NS4_IlLin1ELi1ELi0ELin1ELi1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS12_IT2_EERNS12_IT3_EERNS12_IT4_EERNS12_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.145", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.146", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEEC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_IS8_EES16_RNS12_ISP_EERNS12_ISQ_EE(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEEC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_IS8_EES16_RNS12_ISP_EERNS12_ISQ_EE(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEEC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_IS8_EES16_RNS12_ISP_EERNS12_ISQ_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !220
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1455 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1456 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1457 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1455 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1456 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1457 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1458
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1452

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_7
begin_hunk_8_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS11_IT2_EERNS11_IT3_EERNS11_IT4_EERNS11_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.147", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.154", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !289
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1508 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1509 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1510 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1508 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1509 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1510 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1511
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1505

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_8
begin_hunk_9_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !177 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !2
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25remesh_self_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT1_EERNS11_IT2_EERNS11_IT3_EERNS11_IT4_EERNS11_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.155", align 8 ; 11 uses
  %9 = alloca %"class.igl::copyleft::cgal::SelfIntersectMesh.156", align 8 ; 4 uses
  %i.a = load i8, ptr %2, align 4, !tbaa !119, !range !106, !noundef !107
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit

_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !1561 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !1562 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !1563 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !1561 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !1562 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !1563 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !1564
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1558

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_9
begin_hunk_10_@_ZNSt5arrayIN4CGAL7Point_3INS0_16Simple_cartesianINS0_9cpp_floatEEEEELm3EED2Ev:bb.a
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !382, !range !106, !noundef !107
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.bs = load i8, ptr %i.br, align 2, !range !106
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond.i.i.i.i.i.i.2 = select i1 %i.bq, i1 true, i1 %i.bt
  br i1 %or.cond.i.i.i.i.i.i.2, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.2, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.bu, align 16
  %i.by = shl i64 %i.bx, 3
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #40
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.2

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.2:              ; preds = %bb.h, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !382, !range !106, !noundef !107
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.cd = load i8, ptr %i.cc, align 2, !range !106
  %i.ce = trunc nuw i8 %i.cd to i1
  %or.cond.i.i.i.1.i.i.i.2 = select i1 %i.cb, i1 true, i1 %i.ce
  br i1 %or.cond.i.i.i.1.i.i.i.2, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.2, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.2
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = load i64, ptr %i.cf, align 16
  %i.cj = shl i64 %i.ci, 3
  tail call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cj) #40
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.2

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.2:            ; preds = %bb.i, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.2
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !382, !range !106, !noundef !107
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.co = load i8, ptr %i.cn, align 2, !range !106
  %i.cp = trunc nuw i8 %i.co to i1
  %or.cond.i.i.i.2.i.i.i.2 = select i1 %i.cm, i1 true, i1 %i.cp
  br i1 %or.cond.i.i.i.2.i.i.i.2, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.2, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load i64, ptr %0, align 16
  %i.ct = shl i64 %i.cs, 3
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.ct) #40
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.2

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.2: ; preds = %bb.j, %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !151
  tail call void %i.c(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !1885
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi3ELi0ELin1ELi3EEENS7_IiLin1ELi3ELi0ELin1ELi3EEES9_NS7_IiLin1ELi1ELi0ELin1ELi1EEESC_EERKNS4_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3IS5_EESt6vectorISK_SaISK_EEEENSF_14ID_FROM_HANDLEEEEST_ESE_St12_PlaceholderILi1EESW_ILi2EEEE, ptr %0, align 8, !tbaa !400
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !153
  store ptr %i.a, ptr %0, align 8, !tbaa !153
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !153
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !153
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #40
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_T2_l(ptr %0, ptr %1, ptr noundef align 8 %2, i64 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !109
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !109
  br label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #41
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.o, %bb.j ], [ %i.o, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit: ; preds = %bb.a, %bb.c
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_T2_lNS4_8TopologyE(ptr %0, ptr %1, ptr noundef nonnull align 8 %4, i64 noundef %3, i32 noundef 1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  ret void

bb.j:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i5, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_T2_lNS4_8TopologyE(ptr %0, ptr %1, ptr noundef align 8 %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %reass.sub.fr.i = freeze i64 %i.c               ; 5 uses
  %6 = sdiv exact i64 %reass.sub.fr.i, 56
  %i.d = icmp ugt i64 %6, 164703072086692425
  br i1 %i.d, label %.noexc.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #43
  unreachable

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #44 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %reass.sub.fr.i
  %i.h = add i64 %reass.sub.fr.i, -56             ; 2 uses
  %i.i = urem i64 %i.h, 56
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = add i64 %i.j, 56                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %0, i64 %i.k, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.k
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i
  %.sroa.11.0 = phi ptr [ %i.e, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.023.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i ], [ %i.f, %.lr.ph.i.i.i.i.preheader.i.i ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.lr.ph.i.i.i.i.preheader.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !109
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !109
  br label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.body14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body14 unwind label %bb.f    ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #41
  unreachable

_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit
  invoke void @_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_St8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_SS_T2_T3_lNS4_8TopologyENS4_7SettingE(ptr %0, ptr %1, ptr %.sroa.023.0, ptr %.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 %5, i64 noundef %3, i32 noundef %4, i32 noundef 0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !149  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  %.not.i.i.i16 = icmp eq ptr %.sroa.023.0, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = ptrtoint ptr %.sroa.11.0 to i64
  %i.aa = ptrtoint ptr %.sroa.023.0 to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.0, i64 noundef %i.ab) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !149 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ad, null
  br i1 %.not.i18, label %.body14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body14 unwind label %bb.m    ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #41
  unreachable

.body14:                                          ; preds = %bb.l, %bb.k, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ac, %bb.l ], [ %i.q, %bb.e ], [ %i.ac, %bb.k ]
  %.not.i.i.i20 = icmp eq ptr %.sroa.023.0, null
  br i1 %.not.i.i.i20, label %.body, label %bb.n

bb.n:                                             ; preds = %.body14
  %i.ah = ptrtoint ptr %.sroa.11.0 to i64
  %i.ai = ptrtoint ptr %.sroa.023.0 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.0, i64 noundef %i.aj) #40
  br label %.body

.body:                                            ; preds = %bb.n, %.body14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_St8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_SS_T2_T3_lNS4_8TopologyENS4_7SettingE(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::function", align 8     ; 10 uses
  %9 = alloca %"class.std::function", align 8     ; 10 uses
  %i.a = icmp eq i32 %6, 1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !109
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !109
  br label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %common.resume unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #41
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.w, %bb.x, %bb.q, %bb.r, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.y, %bb.r ], [ %i.p, %bb.l ], [ %i.p, %bb.k ], [ %i.ah, %bb.w ], [ %i.ah, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit: ; preds = %bb.b, %bb.d
  invoke void @_ZN4CGAL36box_intersection_custom_predicates_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_St8functionIFvRKSF_SM_EENS4_18Predicate_traits_dINS4_12Box_traits_dISF_EELb1EEEEEvT0_ST_T1_SU_T2_T3_lNS4_7SettingE(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull align 8 %8, i64 noundef %5, i32 noundef %7)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #41
  unreachable

bb.k:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not.i19 = icmp eq ptr %i.q, null
  br i1 %.not.i19, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

bb.n:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i21 = icmp eq ptr %i.v, null
end_hunk_10
begin_hunk_11_@_ZNSt5arrayIN4CGAL7Point_3INS0_16Simple_cartesianINS0_9cpp_floatEEEEELm2EED2Ev:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.ab = load i8, ptr %i.aa, align 2, !range !106
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i64, ptr %i.a, align 16
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ag) #40
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !382, !range !106, !noundef !107
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.al = load i8, ptr %i.ak, align 2, !range !106
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i.i.i.i.1 = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i.i.i.i.1, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.1, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.an, align 16
  %i.ar = shl i64 %i.aq, 3
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #40
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.1

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.1:              ; preds = %bb.e, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.at = load i8, ptr %i.as, align 1, !tbaa !382, !range !106, !noundef !107
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.aw = load i8, ptr %i.av, align 2, !range !106
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i.i.1.i.i.i.1 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i.i.1.i.i.i.1, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.1, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.ay, align 16
  %i.bc = shl i64 %i.bb, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #40
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.1

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.1:            ; preds = %bb.f, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i.1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !382, !range !106, !noundef !107
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bh = load i8, ptr %i.bg, align 2, !range !106
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i.2.i.i.i.1 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i.2.i.i.i.1, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.1, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %0, align 16
  %i.bm = shl i64 %i.bl, 3
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #40
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.1

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit.1: ; preds = %bb.g, %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i.1
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_E14mark_offensiveEl(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.d, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.c, align 8, !tbaa !158
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !131  ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #44 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store i64 %1, ptr %i.t, align 8, !tbaa !116
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #40
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !131
  store ptr %i.v, ptr %i.c, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.e, align 8, !tbaa !132
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %bb.b, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ac, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ad, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.ag = icmp slt i64 %i.af, %1                  ; 2 uses
  %.19.i.i.i = select i1 %i.ag, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !473 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i1, label %_ZNKSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZNKSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i, %i.ad
  br i1 %i.ah, label %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread, label %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit

_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !116
  %.not = icmp slt i64 %1, %i.aj
  br i1 %.not, label %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread, label %bb.g

_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef null, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread, %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !355
  %i.f = load ptr, ptr %0, align 8, !tbaa !347    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %3 = sdiv exact i64 %i.c, 24
  %i.k = icmp ugt i64 %3, 384307168202282325
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #43
  unreachable

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #44 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.m = load i64, ptr %.0810.i.i.i.i.i, align 8, !tbaa !472
  store i64 %i.m, ptr %.011.i.i.i.i.i, align 8, !tbaa !472
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !351  ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !109
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.s, align 4, !tbaa !157
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !157
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2281

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !347    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !348 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i ], [ %i.z, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !351 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ae, align 8, !tbaa !353
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !354
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !2282
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !160
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !2282
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !157
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.l, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, !prof !331

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !12

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !347
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.au = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split ], [ %i.z, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !355
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #40
  br label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, %bb.m
  store ptr %i.l, ptr %0, align 8, !tbaa !347
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.az, ptr %i.aa, align 8, !tbaa !348
  store ptr %i.az, ptr %i.d, align 8, !tbaa !355
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !348 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.bd, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt4pairIlN4CGAL6ObjectEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = icmp sgt i64 %i.c, 0
  br i1 %i.be, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIlN4CGAL6ObjectEEPS3_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.o
  %i.bf = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cl, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ck, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cj, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.bg = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !472
  store i64 %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !472
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !459
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !459
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !351 ; 4 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !351 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !157
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !157
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bs = atomicrmw volatile add ptr %i.bo, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !351
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bt = phi ptr [ %i.bn, %bb.p ], [ %i.bn, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.u, label %bb.v

end_hunk_11
begin_hunk_12_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors34Collinear_are_ordered_along_line_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_:bb.a

bb.n:                                             ; preds = %bb.b
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %6) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.o ], [ %i.cu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %5) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ct, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_5EpickEEENS7_9Segment_3ISC_EENS7_10Triangle_3ISC_EESt6vectorISD_SaISD_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !503
  switch i8 %i.b, label %bb.i [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit unwind label %bb.c ; 3 uses

common.resume:                                    ; preds = %bb.g, %bb.e, %bb.c
  %.sink = phi ptr [ %i.k, %bb.g ], [ %i.g, %bb.e ], [ %i.c, %bb.c ]
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 8) #40
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEEE, i64 16), ptr %i.d, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 24, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !466
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #44
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEEE, i64 16), ptr %i.h, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 48, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !466
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #44
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit unwind label %bb.g ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit: ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEEE, i64 16), ptr %i.l, align 8, !tbaa !160
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 72, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !466
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_5EpickEEESaIS6_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit
  %.0 = phi ptr [ %i.c, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit ], [ %i.g, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit ], [ %i.k, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit ], [ %i.o, %bb.h ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL7Point_3INS_5EpickEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEEE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEE4typeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL9Segment_3INS_5EpickEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEEE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL10Triangle_3INS_5EpickEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEEE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_5EpickEEESaIS6_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEEE, i64 16), ptr %i.b, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !519  ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !462    ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc3.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %2 = sdiv exact i64 %i.i, 24
  %i.j = icmp ugt i64 %2, 384307168202282325
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !331

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc.i unwind label %bb.c, !inline_history !43

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #44
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i unwind label %bb.c, !inline_history !43

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !504
  %.pre4.i = load ptr, ptr %i.d, align 8, !tbaa !504
  br label %.noexc3.i.i

.noexc3.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i, %.noexc
  %i.l = phi ptr [ %i.e, %.noexc ], [ %.pre4.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.m = phi ptr [ %i.f, %.noexc ], [ %.pre.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.n = phi ptr [ null, %.noexc ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !462
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !519
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !463
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc3.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %.noexc3.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc3.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !44

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #40
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc3.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !519
  store ptr %i.b, ptr %i.a, align 8, !tbaa !466
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.t, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !463
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !463
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev.exit

_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTISt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEEE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !519  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !462  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = sdiv exact i64 %i.i, 24
  %i.j = icmp ugt i64 %1, 384307168202282325
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !331

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.c, !inline_history !43

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #44
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.c, !inline_history !43

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !504
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !504
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !462
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !519
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !463
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc3.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.noexc3.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc3.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc3.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !519
  ret ptr %i.a

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !351
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !353
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !354
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !523
  store ptr %i.a, ptr %0, align 8, !tbaa !351
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #23 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !466    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5boost3anyD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #23, !inline_history !45
  br label %_ZN5boost3anyD2Ev.exit

_ZN5boost3anyD2Ev.exit:                           ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 8) #40
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost3anyD2Ev.exit, %bb.c
  invoke void @__cxa_rethrow() #43
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #41
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !523  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !466  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5boost3anyD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !45
  br label %_ZN5boost3anyD2Ev.exit

_ZN5boost3anyD2Ev.exit:                           ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost3anyD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !474
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !473  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !116
  %i.i = load i64, ptr %2, align 8, !tbaa !116
  %i.j = icmp slt i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !473 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4CGAL17Boost_MP_internal11to_intervalIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEENS4_ISB_LSD_1EEEEESt4pairIddET0_SI_:bb.a
  %or.cond.i.i68 = select i1 %i.ev, i1 true, i1 %i.ex
  br i1 %or.cond.i.i68, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69, label %bb.al

bb.al:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = load i64, ptr %12, align 16
  %i.fb = shl i64 %i.fa, 3
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fb) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ap

bb.am:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.aa ], [ %i.dt, %bb.ab ], [ %i.du, %bb.ac ]
  %i.fc = load i8, ptr %i.by, align 1, !tbaa !105, !range !106, !noundef !107
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = load i8, ptr %i.bz, align 2, !range !106
  %i.ff = trunc nuw i8 %i.fe to i1
  %or.cond.i.i70 = select i1 %i.fd, i1 true, i1 %i.ff
  br i1 %or.cond.i.i70, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = load i64, ptr %13, align 16
  %i.fj = shl i64 %i.fi, 3
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fj) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.fk = load i8, ptr %i.bu, align 1, !tbaa !105, !range !106, !noundef !107
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load i8, ptr %i.bv, align 2, !range !106
  %i.fn = trunc nuw i8 %i.fm to i1
  %or.cond.i.i72 = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %or.cond.i.i72, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load i64, ptr %12, align 16
  %i.fr = shl i64 %i.fq, 3
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fr) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %common.resume

bb.ap:                                            ; preds = %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69
  %.pn46 = phi { double, double } [ %.fca.1.insert.i67, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69 ], [ zeroinitializer, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit ]
  ret { double, double } %.pn46
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !179
  tail call void %i.c(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !3015
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi3ELi0ELin1ELi3EEENS7_IiLin1ELi3ELi0ELin1ELi3EEES9_NS7_IiLin1ELi1ELi0ELin1ELi1EEESC_EERKNS4_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3IS5_EESt6vectorISK_SaISK_EEEENSF_14ID_FROM_HANDLEEEEST_ESE_St12_PlaceholderILi1EESW_ILi2EEEE, ptr %0, align 8, !tbaa !400
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !181
  store ptr %i.a, ptr %0, align 8, !tbaa !181
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !181
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !181
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #40
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IiLin1ELi3ELi0ELin1ELi3EEESB_NS9_IiLin1ELi1ELi0ELin1ELi1EEESE_EERKNS6_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS6_10Triangle_3IS7_EESt6vectorISM_SaISM_EEEENSH_14ID_FROM_HANDLEEEESV_ESG_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_T2_l(ptr %0, ptr %1, ptr noundef align 8 %2, i64 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.629", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !109
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !109
  br label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #41
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.o, %bb.j ], [ %i.o, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit: ; preds = %bb.a, %bb.c
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_T2_lNS4_8TopologyE(ptr %0, ptr %1, ptr noundef nonnull align 8 %4, i64 noundef %3, i32 noundef 1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  ret void

bb.j:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i5, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_T2_lNS4_8TopologyE(ptr %0, ptr %1, ptr noundef align 8 %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.629", align 8 ; 10 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %reass.sub.fr.i = freeze i64 %i.c               ; 5 uses
  %6 = sdiv exact i64 %reass.sub.fr.i, 56
  %i.d = icmp ugt i64 %6, 164703072086692425
  br i1 %i.d, label %.noexc.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #43
  unreachable

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #44 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %reass.sub.fr.i
  %i.h = add i64 %reass.sub.fr.i, -56             ; 2 uses
  %i.i = urem i64 %i.h, 56
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = add i64 %i.j, 56                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %0, i64 %i.k, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.k
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i
  %.sroa.11.0 = phi ptr [ %i.e, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.023.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i ], [ %i.f, %.lr.ph.i.i.i.i.preheader.i.i ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.lr.ph.i.i.i.i.preheader.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !109
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !109
  br label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.body14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body14 unwind label %bb.f    ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #41
  unreachable

_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EEC2INS4_IPSD_SF_EEvEET_SJ_RKSE_.exit
  invoke void @_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_St8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_SS_T2_T3_lNS4_8TopologyENS4_7SettingE(ptr %0, ptr %1, ptr %.sroa.023.0, ptr %.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 %5, i64 noundef %3, i32 noundef %4, i32 noundef 0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !149  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  %.not.i.i.i16 = icmp eq ptr %.sroa.023.0, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = ptrtoint ptr %.sroa.11.0 to i64
  %i.aa = ptrtoint ptr %.sroa.023.0 to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.0, i64 noundef %i.ab) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !149 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ad, null
  br i1 %.not.i18, label %.body14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body14 unwind label %bb.m    ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #41
  unreachable

.body14:                                          ; preds = %bb.l, %bb.k, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ac, %bb.l ], [ %i.q, %bb.e ], [ %i.ac, %bb.k ]
  %.not.i.i.i20 = icmp eq ptr %.sroa.023.0, null
  br i1 %.not.i.i.i20, label %.body, label %bb.n

bb.n:                                             ; preds = %.body14
  %i.ah = ptrtoint ptr %.sroa.11.0 to i64
  %i.ai = ptrtoint ptr %.sroa.023.0 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.0, i64 noundef %i.aj) #40
  br label %.body

.body:                                            ; preds = %bb.n, %.body14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_St8functionIFvRKSF_SM_EENS4_12Box_traits_dISF_EEEEvT0_SR_T1_SS_T2_T3_lNS4_8TopologyENS4_7SettingE(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::function.629", align 8 ; 10 uses
  %9 = alloca %"class.std::function.629", align 8 ; 10 uses
  %i.a = icmp eq i32 %6, 1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !109
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !109
  br label %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %common.resume unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #41
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.w, %bb.x, %bb.q, %bb.r, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.y, %bb.r ], [ %i.p, %bb.l ], [ %i.p, %bb.k ], [ %i.ah, %bb.w ], [ %i.ah, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit: ; preds = %bb.b, %bb.d
  invoke void @_ZN4CGAL36box_intersection_custom_predicates_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_St8functionIFvRKSF_SM_EENS4_18Predicate_traits_dINS4_12Box_traits_dISF_EELb1EEEEEvT0_ST_T1_SU_T2_T3_lNS4_7SettingE(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull align 8 %8, i64 noundef %5, i32 noundef %7)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #41
  unreachable

bb.k:                                             ; preds = %_ZNSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEC2ERKSI_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not.i19 = icmp eq ptr %i.q, null
  br i1 %.not.i19, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

bb.n:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i21 = icmp eq ptr %i.v, null
end_hunk_13
begin_hunk_14_@_ZN4CGAL8internal18Converting_visitorINS_19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEENS3_INS_11Interval_ntILb0EEEEENS_12NT_converterISG_SJ_EEEESt8optionalISt7variantIJNS_7Point_3ISK_EENS_9Segment_3ISK_EENS_10Triangle_3ISK_EESt6vectorISR_SaISR_EEEEEEclINSU_ISH_EEEEvRKT_:bb.a
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %8 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %9 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %10 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !4183
  %i.a = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(576) %1), !noalias !4183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !4183
  %i.b = extractvalue { double, double } %i.a, 0
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fneg double %i.b
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.c, i64 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !4183
  %i.h = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 16 dereferenceable(64) %i.g), !noalias !4183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !4183
  %i.i = extractvalue { double, double } %i.h, 0
  %i.j = extractvalue { double, double } %i.h, 1
  %i.k = fneg double %i.i
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.j, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !4183
  %i.o = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 16 dereferenceable(64) %i.n), !noalias !4183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !4183
  %i.p = extractvalue { double, double } %i.o, 0
  %i.q = extractvalue { double, double } %i.o, 1
  %i.r = fneg double %i.p
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !4184
  %i.v = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(192) %i.u), !noalias !4184 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !4184
  %i.w = extractvalue { double, double } %i.v, 0
  %i.x = extractvalue { double, double } %i.v, 1
  %i.y = fneg double %i.w
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.x, i64 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !4184
  %i.ac = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.ab), !noalias !4184 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !4184
  %i.ad = extractvalue { double, double } %i.ac, 0
  %i.ae = extractvalue { double, double } %i.ac, 1
  %i.af = fneg double %i.ad
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !4184
  %i.aj = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.ai), !noalias !4184 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !4184
  %i.ak = extractvalue { double, double } %i.aj, 0
  %i.al = extractvalue { double, double } %i.aj, 1
  %i.am = fneg double %i.ak
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.al, i64 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !4185
  %i.aq = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(192) %i.ap), !noalias !4185 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !4185
  %i.ar = extractvalue { double, double } %i.aq, 0
  %i.as = extractvalue { double, double } %i.aq, 1
  %i.at = fneg double %i.ar
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.as, i64 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !4185
  %i.ax = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.aw), !noalias !4185 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !4185
  %i.ay = extractvalue { double, double } %i.ax, 0
  %i.az = extractvalue { double, double } %i.ax, 1
  %i.ba = fneg double %i.ay
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.az, i64 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !4185
  %i.be = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.bd), !noalias !4185 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !4185
  %i.bf = extractvalue { double, double } %i.be, 0
  %i.bg = extractvalue { double, double } %i.be, 1
  %i.bh = fneg double %i.bf
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !664 ; 32 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 16, !tbaa !616, !range !106, !noundef !107
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 144 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 16, !tbaa !623
  switch i8 %i.bq, label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i [
    i8 2, label %_ZSt3getILm2EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit.i.i
    i8 3, label %bb.c
  ]

_ZSt3getILm2EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit.i.i: ; preds = %bb.b
  store <2 x double> %i.f, ptr %i.bl, align 16
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.m, ptr %.sroa.6.0..sroa_idx6, align 16
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x double> %i.t, ptr %.sroa.7.0..sroa_idx10, align 16
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <2 x double> %i.aa, ptr %.sroa.8.0..sroa_idx14, align 16
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store <2 x double> %i.ah, ptr %.sroa.9.0..sroa_idx18, align 16
  %.sroa.10.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store <2 x double> %i.ao, ptr %.sroa.10.0..sroa_idx22, align 16
  %.sroa.11.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <2 x double> %i.av, ptr %.sroa.11.0..sroa_idx26, align 16
  %.sroa.12.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %i.bc, ptr %.sroa.12.0..sroa_idx30, align 16
  %.sroa.13.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store <2 x double> %i.bj, ptr %.sroa.13.0..sroa_idx34, align 16
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit

bb.c:                                             ; preds = %bb.b
  %i.br = load ptr, ptr %i.bl, align 16, !tbaa !630 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !631
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #40
  br label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i

_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store <2 x double> %i.f, ptr %i.bl, align 16
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.m, ptr %.sroa.6.0..sroa_idx4, align 16
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x double> %i.t, ptr %.sroa.7.0..sroa_idx8, align 16
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <2 x double> %i.aa, ptr %.sroa.8.0..sroa_idx12, align 16
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store <2 x double> %i.ah, ptr %.sroa.9.0..sroa_idx16, align 16
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store <2 x double> %i.ao, ptr %.sroa.10.0..sroa_idx20, align 16
  %.sroa.11.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <2 x double> %i.av, ptr %.sroa.11.0..sroa_idx24, align 16
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %i.bc, ptr %.sroa.12.0..sroa_idx28, align 16
  %.sroa.13.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store <2 x double> %i.bj, ptr %.sroa.13.0..sroa_idx32, align 16
  store i8 2, ptr %i.bp, align 16, !tbaa !623
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit

bb.e:                                             ; preds = %bb.a
  store <2 x double> %i.f, ptr %i.bl, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.m, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x double> %i.t, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <2 x double> %i.aa, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store <2 x double> %i.ah, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store <2 x double> %i.ao, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <2 x double> %i.av, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %i.bc, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store <2 x double> %i.bj, ptr %.sroa.13.0..sroa_idx, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store i8 2, ptr %i.bx, align 16, !tbaa !623
  store i8 1, ptr %i.bm, align 16, !tbaa !616
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit: ; preds = %_ZSt3getILm2EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit.i.i, %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal18Converting_visitorINS_19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEENS3_INS_11Interval_ntILb0EEEEENS_12NT_converterISG_SJ_EEEESt8optionalISt7variantIJNS_7Point_3ISK_EENS_9Segment_3ISK_EENS_10Triangle_3ISK_EESt6vectorISR_SaISR_EEEEEEclINSQ_ISH_EEEEvRKSW_IT_SaIS14_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"class.std::vector.1059", align 8  ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !667  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !668    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 192                 ; 3 uses
  %6 = icmp ugt i64 %i.g, 192153584101141162
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not45 = icmp eq ptr %i.b, %i.c
  br i1 %.not45, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = mul nuw nsw i64 %i.g, 48
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #44
          to label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit unwind label %bb.g ; 5 uses

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre32.pre = load ptr, ptr %i.a, align 8, !tbaa !586
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !586 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !630
  store ptr %i.j, ptr %i.k, align 8, !tbaa !657
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.g
  store ptr %i.l, ptr %i.h, align 8, !tbaa !631
  %i.m = icmp eq ptr %.pre.pre, %.pre32.pre
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit, %bb.c, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit
  %i.o = phi ptr [ null, %bb.c ], [ %i.j, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit ], [ %i.cb, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !664  ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 2 uses
  %i.s = load i8, ptr %i.r, align 16, !tbaa !616, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.u = invoke noundef nonnull align 16 dereferenceable(145) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSIRSD_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS6_S8_SA_SD_EE4typeEE18is_constructible_vISM_SJ_E15is_assignable_vIRSM_SJ_EERSE_E4typeESK_(ptr noundef nonnull align 16 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge unwind label %bb.g ; 0 uses

._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge: ; preds = %bb.d
  %.pre33 = load ptr, ptr %5, align 8, !tbaa !630
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit

bb.e:                                             ; preds = %._crit_edge
  %i.v = load ptr, ptr %5, align 8, !tbaa !630    ; 4 uses
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc10.thread, label %bb.f

.noexc10.thread:                                  ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr null, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ab, align 16, !tbaa !631
  br label %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i

bb.f:                                             ; preds = %bb.e
  %7 = sdiv exact i64 %i.y, 48
  %i.ac = icmp ugt i64 %7, 192153584101141162
  br i1 %i.ac, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !331

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #44
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.g ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.q, align 16, !tbaa !630
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !657
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.af, ptr %i.ag, align 16, !tbaa !631
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !72

_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc10.thread
  %i.aj = phi ptr [ %i.z, %.noexc10.thread ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc10.thread ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !657
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store i8 3, ptr %i.ak, align 16, !tbaa !623
  store i8 1, ptr %i.r, align 16, !tbaa !616
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit ] ; 7 uses
  %.sroa.025.030 = phi ptr [ %.pre.pre, %.lr.ph ], [ %i.cc, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !4192
  %i.an = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(192) %.sroa.025.030)
          to label %.noexc11 unwind label %.loopexit ; 2 uses

.noexc11:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !4192
  %i.ao = extractvalue { double, double } %i.an, 0
  %i.ap = extractvalue { double, double } %i.an, 1
  %i.aq = fneg double %i.ao
  %i.ar = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ap, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !4192
  %i.au = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.at)
          to label %.noexc12 unwind label %.loopexit ; 2 uses

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !4192
  %i.av = extractvalue { double, double } %i.au, 0
  %i.aw = extractvalue { double, double } %i.au, 1
  %i.ax = fneg double %i.av
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.aw, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !4192
  %i.bb = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.ba)
          to label %bb.i unwind label %.loopexit  ; 2 uses

bb.i:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !4192
  %i.bc = extractvalue { double, double } %i.bb, 0
  %i.bd = extractvalue { double, double } %i.bb, 1
  %i.be = fneg double %i.bc
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.bd, i64 1 ; 2 uses
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !631
  %.not.i.i = icmp eq ptr %i.am, %i.bh
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <2 x double> %i.as, ptr %i.am, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x double> %i.az, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store <2 x double> %i.bg, ptr %.sroa.7.0..sroa_idx, align 16
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !657
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  store ptr %i.bj, ptr %i.n, align 8, !tbaa !657
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %5, align 8, !tbaa !630   ; 5 uses
  %i.bl = ptrtoint ptr %i.am to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 4 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775776
  br i1 %i.bo, label %bb.l, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bp = sdiv exact i64 %i.bn, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 192153584101141162)
  %i.bt = select i1 %i.br, i64 192153584101141162, i64 %i.bs ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.bu = mul nuw nsw i64 %i.bt, 48
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #44
          to label %.noexc16 unwind label %.loopexit ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 3 uses
  store <2 x double> %i.as, ptr %i.bw, align 16
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x double> %i.az, ptr %.sroa.6.0..sroa_idx20, align 16
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store <2 x double> %i.bg, ptr %.sroa.7.0..sroa_idx22, align 16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.am
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %.noexc16 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0911.i.i.i.i.i.i, i64 48, i1 false), !alias.scope !4193
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.am
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !71

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %.noexc16 ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bv, ptr %5, align 8, !tbaa !630
  store ptr %i.bz, ptr %i.n, align 8, !tbaa !657
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !631
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.j
  %i.cb = phi ptr [ %i.bz, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.bj, %bb.j ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 192 ; 2 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !586
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !4191

.loopexit:                                        ; preds = %bb.h, %.noexc11, %.noexc12, %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit: ; preds = %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge, %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i
  %i.ce = phi ptr [ %.pre33, %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge ], [ %i.v, %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !631
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.al, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cj = load ptr, ptr %5, align 8, !tbaa !630   ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !631
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(145) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSIRSD_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS6_S8_SA_SD_EE4typeEE18is_constructible_vISM_SJ_E15is_assignable_vIRSM_SJ_EERSE_E4typeESK_(ptr noundef nonnull align 16 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !623
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, label %bb.b

_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !657  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !630    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.j, 48
  %i.k = icmp ugt i64 %2, 192153584101141162
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !331

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #44
  %.pre = load ptr, ptr %1, align 8, !tbaa !636
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !636
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %.pre10, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i, i64 48, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !72

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  %i.s = load i8, ptr %i.a, align 16, !tbaa !623
  %i.t = icmp eq i8 %i.s, 3
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit
  %i.u = load ptr, ptr %0, align 16, !tbaa !630   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !631
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, %bb.e, %bb.f
  store ptr %i.o, ptr %0, align 16, !tbaa !630
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !657
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.ab, align 16, !tbaa !631
  store i8 3, ptr %i.a, align 16, !tbaa !623
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, %_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !657  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !630    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !631
  %i.i = load ptr, ptr %0, align 8, !tbaa !630    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.f, 48
  %i.n = icmp ugt i64 %2, 192153584101141162
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i, !prof !331

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -48
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 48
  %i.s = add i64 %.fr.i, 48
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.o, ptr align 16 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !630    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !631
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #40
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !630
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.z, ptr %i.g, align 8, !tbaa !631
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !657
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.f, 48
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !403

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.i, ptr align 16 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp eq i64 %i.f, 48
  br i1 %i.af, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ad, 48
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !403

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.i, ptr align 16 %i.c, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ad, 48
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ai = load ptr, ptr %1, align 8, !tbaa !630
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !657 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !630
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !657 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ao, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.011.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0810.i.i.i.i, i64 48, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4194

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !630
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !657
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE14_M_move_assignEOSG_(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(161) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1132, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !616, !range !106, !noundef !107
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i8, ptr %i.d, align 16, !range !106
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !671
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEEEENS4_9Segment_3IS9_EENS4_10Triangle_3IS9_EESt6vectorISA_SaISA_EEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJSA_SC_SE_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 16 dereferenceable(145) %1)
          to label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSEOSE_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #41
  unreachable

_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSEOSE_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.i, align 16, !tbaa !623
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16, !tbaa !623
  switch i8 %i.k, label %bb.j [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.i:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %1, align 16, !tbaa !636
  store <2 x ptr> %i.l, ptr %0, align 16, !tbaa !636
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !631
  store ptr %i.o, ptr %i.m, align 16, !tbaa !631
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.j:                                             ; preds = %bb.e
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.p = load i8, ptr %i.j, align 16, !tbaa !623
  store i8 %i.p, ptr %i.i, align 16, !tbaa !623
  store i8 1, ptr %i.a, align 16, !tbaa !616
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.k:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 16, !tbaa !616
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i8, ptr %i.q, align 16
  %i.s = icmp eq i8 %i.r, 3
  %or.cond.i = select i1 %i.c, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.l, label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %0, align 16, !tbaa !630   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit, label %bb.m
end_hunk_14
begin_hunk_15_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEEEENS4_9Segment_3IS9_EENS4_10Triangle_3IS9_EESt6vectorISA_SaISA_EEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJSA_SC_SE_SH_EEEEDcOSM_DpOT1_:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 16, !tbaa !630 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !631
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #40
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  store i8 -1, ptr %i.d, align 16, !tbaa !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  store i8 0, ptr %i.d, align 16, !tbaa !623
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.f:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 1, label %bb.g
    i8 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.h:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.c, align 16, !tbaa !630 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i12, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !631
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #40
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  store i8 -1, ptr %i.d, align 16, !tbaa !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  store i8 1, ptr %i.d, align 16, !tbaa !623
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.j:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.l:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %i.c, align 16, !tbaa !630 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !631
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #40
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.j
  store i8 -1, ptr %i.d, align 16, !tbaa !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  store i8 2, ptr %i.d, align 16, !tbaa !623
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.n:                                             ; preds = %bb.a
  %i.x = icmp eq i8 %i.e, 3
  br i1 %i.x, label %bb.o, label %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %i.c, align 16, !tbaa !630 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !631
  %i.ab = load <2 x ptr>, ptr %1, align 16, !tbaa !636
  store <2 x ptr> %i.ab, ptr %i.c, align 16, !tbaa !636
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !631
  store ptr %i.ad, ptr %i.z, align 16, !tbaa !631
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #40
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.n
  %i.ah = load <2 x ptr>, ptr %1, align 16, !tbaa !636
  store <2 x ptr> %i.ah, ptr %i.c, align 16, !tbaa !636
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !631
  store ptr %i.ak, ptr %i.ai, align 16, !tbaa !631
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  store i8 3, ptr %i.d, align 16, !tbaa !623
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.q:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit: ; preds = %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.p, %bb.o, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.k, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.g, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(145) dereferenceable(145) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 16, !tbaa !623
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 16, !tbaa !630   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !631
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2EbRKSG_(ptr noundef nonnull align 16 dereferenceable(161) %0, i1 noundef zeroext %1, ptr noundef nonnull align 16 dereferenceable(161) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i8 0, ptr %i.a, align 16, !tbaa !616
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.c = load i8, ptr %i.b, align 16, !tbaa !616, !range !106, !noundef !107
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.e, align 16, !tbaa !623
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.g = load i8, ptr %i.f, align 16, !tbaa !623
  switch i8 %i.g, label %bb.h [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 48, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 96, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 144, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !657  ; 2 uses
  %i.j = load ptr, ptr %2, align 16, !tbaa !630   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = sdiv exact i64 %i.m, 48
  %i.n = icmp ugt i64 %3, 192153584101141162
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !331

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #44
          to label %.noexc4.i.i.i.i.i.i.i.i unwind label %.body

.noexc4.i.i.i.i.i.i.i.i:                          ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.p = phi ptr [ null, %bb.f ], [ %i.o, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.p, ptr %0, align 16, !tbaa !630
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !657
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 16, !tbaa !631
  %i.t = load ptr, ptr %2, align 16, !tbaa !636   ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !636  ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.noexc4.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %.noexc4.i.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !72

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.noexc4.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !657
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.b
  unreachable

.body:                                            ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(145) dereferenceable(161) %0) #23
  resume { ptr, i32 } %i.x

_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i
  %i.y = load i8, ptr %i.f, align 16, !tbaa !623
  store i8 %i.y, ptr %i.e, align 16, !tbaa !623
  store i8 1, ptr %i.a, align 16, !tbaa !616
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclISZ_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1163, align 1           ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #44 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !621  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i8, ptr %i.g, align 16, !tbaa !623
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.137, ptr %i.j, align 8, !tbaa !521
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !588
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.m, align 16, !tbaa !590
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.n, align 8, !tbaa !592
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !160
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !177  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !177
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !620    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !578, !range !106, !noundef !107
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !580
  switch i8 %i.aa, label %bb.f [
    i8 0, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
    i8 -1, label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i
  ], !prof !672

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %.noexc4.i.i unwind label %bb.g

.noexc4.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i

_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i: ; preds = %.noexc4.i.i, %bb.e
  store ptr %i.a, ptr %i.v, align 8, !tbaa !177
  store i8 0, ptr %i.z, align 8, !tbaa !580
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 0, ptr %i.ad, align 8, !tbaa !580
  store i8 1, ptr %i.w, align 8, !tbaa !578
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !673 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !673
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !14
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ah, -1
  store atomic i32 %i.am, ptr %i.ag monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = atomicrmw sub ptr %i.ag, i32 1 release, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !160
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !14
  br label %_ZN4CGAL6HandleD2Ev.exit6
end_hunk_15
begin_hunk_16_@_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED0Ev:bb.a
  br i1 %.not.i.i, label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit.i
  fence acquire
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.s) #23, !inline_history !593
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 192) #40, !inline_history !593
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_16Simple_cartesianINS7_11Interval_ntILb0EEEEEEENS7_9Segment_3ISF_EENS7_10Triangle_3ISF_EESt6vectorISG_SaISG_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(145) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i8, ptr %i.a, align 16, !tbaa !623
  switch i8 %i.b, label %bb.i [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #44
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit unwind label %bb.c ; 3 uses

common.resume:                                    ; preds = %bb.g, %bb.e, %bb.c
  %.sink = phi ptr [ %i.k, %bb.g ], [ %i.g, %bb.e ], [ %i.c, %bb.c ]
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 8) #40
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.d, align 16, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !466
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #44
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.h, align 16, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !466
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #44
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit unwind label %bb.g ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit: ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.l, align 16, !tbaa !160
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.n, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !466
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEESaIS9_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(145) %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit
  %.0 = phi ptr [ %i.c, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit ], [ %i.g, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit ], [ %i.k, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit ], [ %i.o, %bb.h ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost4anys6detail11placeholderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEESaIS9_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44 ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEEE, i64 16), ptr %i.b, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !657  ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !630    ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc3.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %2 = sdiv exact i64 %i.i, 48
  %i.j = icmp ugt i64 %2, 192153584101141162
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !331

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc.i unwind label %bb.c, !inline_history !79

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #44
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i unwind label %bb.c, !inline_history !79

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !636
  %.pre4.i = load ptr, ptr %i.d, align 8, !tbaa !636
  br label %.noexc3.i.i

.noexc3.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i, %.noexc
  %i.l = phi ptr [ %i.e, %.noexc ], [ %.pre4.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.m = phi ptr [ %i.f, %.noexc ], [ %.pre.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.n = phi ptr [ null, %.noexc ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !630
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !657
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !631
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc3.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %.noexc3.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc3.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i.i, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !72

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #40
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc3.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !657
  store ptr %i.b, ptr %i.a, align 8, !tbaa !466
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.t, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !630  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !631
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !630  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !631
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev.exit

_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTISt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEEE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !657  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !630  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = sdiv exact i64 %i.i, 48
  %i.j = icmp ugt i64 %1, 192153584101141162
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !331

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.c, !inline_history !79

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #44
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.c, !inline_history !79

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !636
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !636
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !630
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !657
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !631
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc3.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.noexc3.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc3.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc3.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !657
  ret ptr %i.a

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(96) %0) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::Object::Any_from_variant", align 1 ; 3 uses
  %5 = alloca %class.anon.1157, align 8           ; 5 uses
  %6 = alloca %class.anon.1156, align 8           ; 4 uses
  %7 = alloca %"class.CGAL::Object", align 8      ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #44 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !177 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.d, ptr %6, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %6, ptr %5, align 8, !tbaa !109
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %5, ptr %i.f, align 8, !tbaa !109
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS3_9Segment_3ISB_EENS3_10Triangle_3ISB_EESt6vectorISC_SaISC_EEEEES5_IS6_IJNS7_INS8_IN5boost14multiprecision6numberINSN_8backends16rational_adaptorINSP_15cpp_int_backendILm0ELm0ELNSN_16cpp_integer_typeE1ELNSN_18cpp_int_check_typeE0ESaIyEEEEELNSN_26expression_template_optionE1EEEEEEENSD_ISZ_EENSF_ISZ_EESH_IS10_SaIS10_EEEEENS3_19Cartesian_converterISZ_SB_NS3_12NT_converterISY_SA_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS1E_ENUlvE_8__invokeEv, ptr %i.g, align 8, !tbaa !109
  %i.h = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #43
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.f, align 8, !tbaa !109
  store ptr null, ptr %i.g, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.f, align 8, !tbaa !109
  store ptr null, ptr %i.g, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 768
  %i.n = load i8, ptr %i.m, align 16, !tbaa !633, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br i1 %i.o, label %bb.f, label %.noexc7

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 752
  %i.q = load i8, ptr %i.p, align 16, !tbaa !638
  %.not.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.r, align 8, !tbaa !160
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.134, ptr %i.s, align 8, !tbaa !521
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.g
  unreachable

_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i: ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_16Simple_cartesianINS3_14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEEEENS7_9Segment_3ISP_EENS7_10Triangle_3ISP_EESt6vectorISQ_SaISQ_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(608) %i.l)
          to label %.noexc7 unwind label %bb.x

.noexc7:                                          ; preds = %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i, %bb.e
  %i.u = phi ptr [ null, %bb.e ], [ %i.t, %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i ] ; 2 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !459
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.u)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.w = load ptr, ptr %7, align 8, !tbaa !459, !nonnull !107, !noundef !107 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !466  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i9, label %_ZNK5boost3any4typeEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef nonnull align 8 dereferenceable(16) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #23, !inline_history !4244 ; 0 uses
  br label %_ZNK5boost3any4typeEv.exit.i.i.i

_ZNK5boost3any4typeEv.exit.i.i.i:                 ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !466
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !686
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !668
  %i.ah = getelementptr inbounds nuw [192 x i8], ptr %i.ag, i64 %i.af ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %i.a, ptr noundef nonnull align 16 dereferenceable(192) %i.ah)
          to label %.noexc10 unwind label %bb.y

.noexc10:                                         ; preds = %_ZNK5boost3any4typeEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ai, ptr noundef nonnull align 16 dereferenceable(64) %i.aj)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i: ; preds = %.noexc10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef nonnull align 16 dereferenceable(64) %i.al)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit unwind label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i, %.noexc10
  %.lcssa.ph.i.i.i.i.i = phi ptr [ %i.ak, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i ], [ %i.ai, %.noexc10 ]
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i
  %i.am = phi ptr [ %i.an, %.preheader.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -64 ; 3 uses
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.an) #23
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %.body11, label %.preheader.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !351 ; 8 uses
  %.not.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i13, label %_ZN4CGAL6ObjectD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l
end_hunk_16
begin_hunk_17_@_ZNK5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE5cloneEv:bb.a

.body:                                            ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.b ], [ %lpad.thr_comm.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr noundef nonnull align 16 dereferenceable(384) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEE, i64 16), ptr %0, align 16, !tbaa !160
  %.ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(384) %.ptr7, ptr noundef nonnull align 16 dereferenceable(384) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i, %.noexc.1.i.i.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i, %.noexc
  %.lcssa12.i.i.i = phi i1 [ true, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ true, %.noexc ], [ false, %.noexc.1.i.i.i ], [ false, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ]
  %.lcssa9.i.i.i.idx = phi i64 [ 16, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ 16, %.noexc ], [ 208, %.noexc.1.i.i.i ], [ 208, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ] ; 2 uses
  %.lcssa.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.c, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ %i.a, %.noexc ], [ %i.i, %.noexc.1.i.i.i ], [ %i.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ]
  %lpad.thr_comm.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.lcssa9.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa9.i.i.i.idx
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %i.e = phi ptr [ %i.f, %.preheader.i.i.i.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #23
  %i.g = icmp eq ptr %i.f, %.lcssa9.i.i.i.ptr
  br i1 %i.g, label %.body.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i
  %.ptr6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %.ptr6, ptr noundef nonnull align 16 dereferenceable(192) %i.h)
          to label %.noexc.1.i.i.i unwind label %.split.i.i.i

.noexc.1.i.i.i:                                   ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i: ; preds = %.noexc.1.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.l)
          to label %_ZN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

.split.i.i.i:                                     ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i.i.i

.body.i.i.i:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i
  br i1 %.lcssa12.i.i.i, label %.body, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.body.i.i.i, %.split.i.i.i
  %eh.lpad-body15.i.i.i = phi { ptr, i32 } [ %i.m, %.split.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %.body.i.i.i ]
  %.idx3 = phi i64 [ 208, %.split.i.i.i ], [ %.lcssa9.i.i.i.idx, %.body.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.idx = phi i64 [ %.add, %.preheader.i.i.i ], [ %.idx3, %.preheader.preheader.i.i.i ]
  %.add = add nsw i64 %.idx, -192                 ; 3 uses
  %.ptr4 = getelementptr inbounds i8, ptr %0, i64 %.add
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.ptr4) #23
  %i.n = icmp eq i64 %.add, 16
  br i1 %i.n, label %.body, label %.preheader.i.i.i

_ZN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i
  ret void

.body:                                            ; preds = %.preheader.i.i.i, %.body.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %.body.i.i.i ], [ %eh.lpad-body15.i.i.i, %.preheader.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(400) dereferenceable(400) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #23
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(384) %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #23
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(384) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_(ptr noundef nonnull align 16 dereferenceable(400) %i.a, ptr noundef nonnull align 16 dereferenceable(384) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 400) #40
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(592) dereferenceable(592) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.c) #23
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(576) %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(592) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.c) #23
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(576) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(592) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL10Triangle_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(592) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(592) ptr @_Znwm(i64 noundef 592) #44 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZNSt5arrayIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm3EEC2ERKSI_(ptr noundef nonnull align 16 dereferenceable(576) %i.c, ptr noundef nonnull align 16 dereferenceable(576) %i.b)
          to label %_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_.exit unwind label %bb.b, !inline_history !80

_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_.exit: ; preds = %bb.a
  ret ptr %i.a

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 592) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost3anyC2ISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEEE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !667  ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !668    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.h, 192
  %i.i = icmp ugt i64 %2, 48038396025285290
  br i1 %i.i, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !331

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.f, !inline_history !82

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #44
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.f, !inline_history !82

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !586
  %.pre4 = load ptr, ptr %i.c, align 8, !tbaa !586
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre4, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 4 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !668
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !667
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !666
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.l, ptr %i.k, ptr noundef %i.m)
          to label %bb.e unwind label %bb.c, !inline_history !82

bb.c:                                             ; preds = %.noexc3.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !668  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !666
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #40, !inline_history !82
  br label %.body

bb.e:                                             ; preds = %.noexc3.i
  store ptr %i.q, ptr %i.n, align 8, !tbaa !667
  store ptr %i.a, ptr %0, align 8, !tbaa !466
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !668  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !667  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.05.i.i.i) #23
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !668
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !666
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !668  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !667  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.05.i.i.i.i) #23
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !668
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !666
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #40
  br label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev.exit

_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @_ZTISt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEEE, i64 16), ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !667  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !668  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = sdiv exact i64 %i.i, 192
  %i.j = icmp ugt i64 %1, 48038396025285290
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !331

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.f, !inline_history !82

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #44
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.f, !inline_history !82

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !586
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !586
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 6 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !668
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !667
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !666
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.l, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c, !inline_history !82

bb.c:                                             ; preds = %.noexc3.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.i) #40, !inline_history !82
  br label %.body

bb.e:                                             ; preds = %.noexc3.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !667
  ret ptr %i.a

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.i, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 7 uses
  %.sroa.08.015 = phi ptr [ %i.h, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %.016, ptr noundef nonnull align 16 dereferenceable(192) %.sroa.08.015)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i: ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit unwind label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i, %.noexc
  %.lcssa.ph.i.i.i.i.i.i = phi ptr [ %i.c, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i ], [ %i.a, %.noexc ]
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %i.e = phi ptr [ %i.f, %.preheader.i.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #23
  %i.g = icmp eq ptr %i.f, %.016
  br i1 %i.g, label %.body, label %.preheader.i.i.i.i.i.i

_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 192 ; 2 uses
  %.not = icmp eq ptr %i.h, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4248

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %lpad.thr_comm.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #23 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %2, %.body ] ; 2 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.05.i.i) #23
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit, label %.lr.ph.i.i, !llvm.loop !83

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit: ; preds = %.lr.ph.i.i, %.body
  invoke void @__cxa_rethrow() #43
          to label %bb.f unwind label %bb.c

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.i, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #41
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEEaSIRSA_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S5_S7_SA_EE4typeEE18is_constructible_vISJ_SG_E15is_assignable_vIRSJ_SG_EERSB_E4typeESH_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1163, align 1           ; 3 uses
  %3 = alloca %"class.std::vector.1143", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !580
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZSt3getILm3EJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSF_.exit, label %bb.b

_ZSt3getILm3EJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSF_.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !677  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !678    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i, !prof !331

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #44
  %.pre = load ptr, ptr %1, align 8, !tbaa !625
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !625
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %.pre10, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.n = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !678
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !627
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.d
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
end_hunk_17
begin_hunk_18_@_ZN4CGAL13Intersections8internal25_intersection_test_vertexINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENT_7BooleanEPKNSI_7Point_3ESM_SM_SM_SM_SM_RKSI_:bb.a
  store ptr %i.is, ptr %i.jm, align 8, !tbaa !539, !alias.scope !6443
  %i.jn = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit94

_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit94: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.1.i.i92 = phi i32 [ %i.iz, %bb.ah ], [ %i.jn, %bb.aj ], [ %i.jg, %bb.ai ]
  %i.jo = icmp ne i32 %.1.i.i92, -1
  br label %bb.aq

bb.ak:                                            ; preds = %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit90
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %2, ptr %17, align 8, !tbaa !539, !alias.scope !6444
  %i.jr = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %1, ptr %i.jr, align 8, !tbaa !539, !alias.scope !6444
  %i.js = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.jp, ptr %i.js, align 8, !tbaa !539, !alias.scope !6444
  %i.jt = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.e, ptr %i.jt, align 8, !tbaa !539, !alias.scope !6444
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %4, ptr %18, align 8, !tbaa !539, !alias.scope !6445
  %i.ju = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %1, ptr %i.ju, align 8, !tbaa !539, !alias.scope !6445
  %i.jv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.gz, ptr %i.jv, align 8, !tbaa !539, !alias.scope !6445
  %i.jw = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.e, ptr %i.jw, align 8, !tbaa !539, !alias.scope !6445
  %i.jx = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.not.i.i95 = icmp eq i32 %i.jx, 0
  br i1 %.not.i.i95, label %bb.al, label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit98

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr %i.gz, ptr %15, align 8, !tbaa !539, !alias.scope !6446
  %i.jy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.e, ptr %i.jy, align 8, !tbaa !539, !alias.scope !6446
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.jq, ptr %i.jz, align 8, !tbaa !539, !alias.scope !6446
  %i.ka = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.f, ptr %i.ka, align 8, !tbaa !539, !alias.scope !6446
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %i.jp, ptr %16, align 8, !tbaa !539, !alias.scope !6447
  %i.kb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.e, ptr %i.kb, align 8, !tbaa !539, !alias.scope !6447
  %i.kc = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.ha, ptr %i.kc, align 8, !tbaa !539, !alias.scope !6447
  %i.kd = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.f, ptr %i.kd, align 8, !tbaa !539, !alias.scope !6447
  %i.ke = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.not24.i.i97 = icmp eq i32 %i.ke, 0
  br i1 %.not24.i.i97, label %bb.am, label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit98

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr %2, ptr %13, align 8, !tbaa !539, !alias.scope !6448
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %1, ptr %i.kf, align 8, !tbaa !539, !alias.scope !6448
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.jq, ptr %i.kg, align 8, !tbaa !539, !alias.scope !6448
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.f, ptr %i.kh, align 8, !tbaa !539, !alias.scope !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %4, ptr %14, align 8, !tbaa !539, !alias.scope !6449
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %1, ptr %i.ki, align 8, !tbaa !539, !alias.scope !6449
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ha, ptr %i.kj, align 8, !tbaa !539, !alias.scope !6449
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.f, ptr %i.kk, align 8, !tbaa !539, !alias.scope !6449
  %i.kl = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit98

_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit98: ; preds = %bb.ak, %bb.al, %bb.am
  %.1.i.i96 = phi i32 [ %i.jx, %bb.ak ], [ %i.kl, %bb.am ], [ %i.ke, %bb.al ]
  %.not46 = icmp eq i32 %.1.i.i96, -1
  br i1 %.not46, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %2, ptr %11, align 8, !tbaa !539, !alias.scope !6450
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %5, ptr %i.km, align 8, !tbaa !539, !alias.scope !6450
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.jp, ptr %i.kn, align 8, !tbaa !539, !alias.scope !6450
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.a, ptr %i.ko, align 8, !tbaa !539, !alias.scope !6450
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %4, ptr %12, align 8, !tbaa !539, !alias.scope !6451
  %i.kp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %5, ptr %i.kp, align 8, !tbaa !539, !alias.scope !6451
  %i.kq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.gz, ptr %i.kq, align 8, !tbaa !539, !alias.scope !6451
  %i.kr = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.a, ptr %i.kr, align 8, !tbaa !539, !alias.scope !6451
  %i.ks = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.not.i.i99 = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i99, label %bb.ao, label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit102

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.gz, ptr %9, align 8, !tbaa !539, !alias.scope !6452
  %i.kt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.kt, align 8, !tbaa !539, !alias.scope !6452
  %i.ku = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.jq, ptr %i.ku, align 8, !tbaa !539, !alias.scope !6452
  %i.kv = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.b, ptr %i.kv, align 8, !tbaa !539, !alias.scope !6452
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.jp, ptr %10, align 8, !tbaa !539, !alias.scope !6453
  %i.kw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.a, ptr %i.kw, align 8, !tbaa !539, !alias.scope !6453
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ha, ptr %i.kx, align 8, !tbaa !539, !alias.scope !6453
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.b, ptr %i.ky, align 8, !tbaa !539, !alias.scope !6453
  %i.kz = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.not24.i.i101 = icmp eq i32 %i.kz, 0
  br i1 %.not24.i.i101, label %bb.ap, label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit102

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %2, ptr %7, align 8, !tbaa !539, !alias.scope !6454
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.la, align 8, !tbaa !539, !alias.scope !6454
  %i.lb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.jq, ptr %i.lb, align 8, !tbaa !539, !alias.scope !6454
  %i.lc = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.b, ptr %i.lc, align 8, !tbaa !539, !alias.scope !6454
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %4, ptr %8, align 8, !tbaa !539, !alias.scope !6455
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %5, ptr %i.ld, align 8, !tbaa !539, !alias.scope !6455
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ha, ptr %i.le, align 8, !tbaa !539, !alias.scope !6455
  %i.lf = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.b, ptr %i.lf, align 8, !tbaa !539, !alias.scope !6455
  %i.lg = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit102

_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit102: ; preds = %bb.an, %bb.ao, %bb.ap
  %.1.i.i100 = phi i32 [ %i.ks, %bb.an ], [ %i.lg, %bb.ap ], [ %i.kz, %bb.ao ]
  %i.lh = icmp ne i32 %.1.i.i100, -1
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit86, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit98, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit102, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit74, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit78, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit82, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit66, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit70, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit94, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit62
  %.0 = phi i1 [ %i.cr, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit62 ], [ %i.lh, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit102 ], [ %i.ek, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit70 ], [ %i.gy, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit82 ], [ %i.jo, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit94 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit74 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit66 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit78 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit98 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit86 ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.CGAL::internal::Static_filters_predicates::Is_degenerate_3", align 1 ; 3 uses
  %10 = alloca %"class.std::function", align 8    ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !220
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %3, align 4
  store i64 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %12 = icmp ugt i64 %i.t, 164703072086692425
  br i1 %12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not119 = icmp eq ptr %i.o, %i.p
  br i1 %.not119, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.t, 56
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #44
          to label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.pre153 = load ptr, ptr %i.n, align 8, !tbaa !144
  %i.x = icmp eq ptr %.pre, %.pre153
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.thread:                                          ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.099.0139 = phi ptr [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 9 uses
  %.sroa.12.0138 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 13 uses
  %.sroa.20.0137 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 4 uses
  %.sroa.095.0136 = phi ptr [ %i.bq, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ], [ %.pre, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aa = invoke noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_10Triangle_3IST_EEEEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.095.0136)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.aa, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !146, !noalias !6472 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !146, !noalias !6473 ; 4 uses
  %i.ag = fcmp olt double %i.af, %i.ac
  %.sroa.speculated23.i.i.i = select i1 %i.ag, double %i.af, double %i.ac ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.af
  %.sroa.speculated.i.i.i = select i1 %i.ah, double %i.af, double %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !6474 ; 4 uses
  %i.al = load <2 x double>, ptr %.sroa.095.0136, align 8, !tbaa !146, !noalias !6472 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !146, !noalias !6473 ; 4 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.al
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ai, align 8, !tbaa !146, !noalias !6474 ; 4 uses
  %i.aq = fcmp olt <2 x double> %i.ap, %i.ao
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.ap, <2 x double> %i.ao ; 2 uses
  %i.as = fcmp olt double %i.ak, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.as, double %i.ak, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.at = fcmp olt <2 x double> %i.al, %i.am
  %i.au = select <2 x i1> %i.at, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.ap
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.ap, <2 x double> %i.au ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.i.i.i, %i.ak
  %.sroa.speculated.i8.i.i = select i1 %i.ax, double %i.ak, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0138, %.sroa.20.0137
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x double> %i.ar, ptr %.sroa.12.0138, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.12.0138, i64 56
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.0138 to i64
  %i.ba = ptrtoint ptr %.sroa.099.0139 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 164703072086692425)
  %i.bh = select i1 %i.bf, i64 164703072086692425, i64 %i.bg ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.bi = mul nuw nsw i64 %i.bh, 56
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc47 unwind label %.loopexit ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store <2 x double> %i.ar, ptr %i.bk, align 8
  %.sroa.781.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.781.0..sroa_idx82, align 8
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x double> %i.aw, ptr %.sroa.884.0..sroa_idx85, align 8
  %.sroa.10.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.10.0..sroa_idx90, align 8
  %.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.095.0136, ptr %.sroa.11.0..sroa_idx92, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.099.0139, %.sroa.12.0138
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.099.0139, %.noexc47 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !6475
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %.sroa.12.0138
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc47
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %.noexc47 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0139, i64 noundef %i.bb) #40
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bn, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bj, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.bq, %i.br
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !6469

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #41
  unreachable
end_hunk_18
