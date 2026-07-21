inline.NumInlined: 1776
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp ult i32 %.0.i, %i.da
  br i1 %i.db, label %.critedge.i, label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit

.critedge.i:                                      ; preds = %.thread15, %bb.h, %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit.i
  %i.dc = phi i32 [ %i.cu, %bb.h ], [ %i.cu, %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit.i ], [ %i.cm, %.thread15 ]
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit.i ], [ %i.cl, %.thread15 ]
  %i.dd = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 3 uses
  store i32 %.0.i, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 36
  store i32 %i.dc, ptr %i.df, align 4
  %i.dg = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.de)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.i:                                             ; preds = %.critedge.i
  %i.dh = extractvalue { ptr, ptr } %i.dg, 1      ; 4 uses
  %.not.i7 = icmp eq ptr %i.dh, null
  br i1 %.not.i7, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = extractvalue { ptr, ptr } %i.dg, 0
  %.not.i.i.i8 = icmp ne ptr %i.di, null
  %i.dj = icmp eq ptr %i.dh, %i.cl
  %or.cond.i.i.i = select i1 %.not.i.i.i8, i1 true, i1 %i.dj
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dl = load i32, ptr %i.de, align 4
  %i.dm = load i32, ptr %i.dk, align 4
  %i.dn = icmp ult i32 %i.dl, %i.dm
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.do = phi i1 [ %i.dn, %bb.k ], [ true, %bb.j ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.do, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #26
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.dp, align 8
  br label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit

_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 40) #27
  resume { ptr, i32 } %i.ds

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 40) #27
  br label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit

bb.m:                                             ; preds = %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit
  %i.dt = load i32, ptr %2, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  store i32 %i.dt, ptr %i.du, align 4
  br label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit

_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit: ; preds = %bb.h, %.thread.i, %bb.l, %bb.m
  %.0 = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ false, %.thread.i ], [ false, %bb.h ]
  ret i1 %.0
}

declare void @_ZN6Assimp12BaseImporter12GetExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef i32 @_ZN6Assimp11BatchLoader14AddLoadRequestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjPKNS0_11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BatchLoader11PropertyMapD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit: ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #31
  unreachable

_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit: ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.q)
          to label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev.exit: ; preds = %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12IrrlichtBase8PropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11IRRImporter14ParseAnimatorsERN4pugi8xml_nodeEPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %4 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %5 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %6 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %7 = alloca %"class.pugi::xml_node", align 8    ; 15 uses
  %8 = alloca %"struct.Assimp::IrrlichtBase::Property", align 8 ; 18 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"struct.Assimp::IrrlichtBase::Property.77", align 8 ; 11 uses
  %11 = alloca %"struct.Assimp::IrrlichtBase::Property.54", align 8 ; 13 uses
  %12 = alloca %"struct.Assimp::IrrlichtBase::Property.56", align 8 ; 11 uses
  %13 = alloca %"struct.Assimp::IrrlichtBase::Property.58", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store <2 x float> <float 1.000000e-03, float 0.000000e+00>, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float 1.000000e+00, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 100, ptr %i.j, align 4
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.o = load ptr, ptr %i.n, align 8              ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = tail call ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.57)
  store ptr %i.q, ptr %3, align 8
  %i.r = call noundef zeroext i1 @_ZNK4pugi8xml_nodentEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull @.str.58)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.t = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.t, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load <2 x ptr>, ptr %i.u, align 16
  store <2 x ptr> %i.v, ptr %6, align 16
  %i.w = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 36 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.au, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.aw

bb.d:                                             ; preds = %.lr.ph, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %7, align 8
  %i.be = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.06.i = phi ptr [ @.str.25, %bb.d ], [ %i.bj, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.be, %bb.d ], [ %i.bf, %bb.e ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.bg = load i8, ptr %.0.i, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = call i32 @tolower(i32 noundef %i.bh) #30 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.bk = load i8, ptr %.06.i, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = call i32 @tolower(i32 noundef %i.bl) #30
  %i.bn = and i32 %i.bi, 255
  %i.bo = icmp ne i32 %i.bn, 0
  %.unshifted = xor i32 %i.bi, %i.bm
  %.mask = and i32 %.unshifted, 255
  %i.bp = icmp eq i32 %.mask, 0                   ; 2 uses
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.e, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, !llvm.loop !37

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit:           ; preds = %bb.e
  br i1 %i.bp, label %bb.f, label %bb.t

bb.f:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.ar, ptr %8, align 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.ar, align 8
  store <2 x float> zeroinitializer, ptr %i.at, align 8
  store float 0.000000e+00, ptr %i.au, align 8
  invoke void @_ZN6Assimp12IrrlichtBase18ReadVectorPropertyERNS0_8PropertyI10aiVector3tIfEEERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(44) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.br = load i32, ptr %i.p, align 8
  switch i32 %i.br, label %_ZN10aiVector3tIfE9NormalizeEv.exit [
    i32 1, label %bb.h
    i32 4, label %bb.j
    i32 2, label %bb.p
    i32 3, label %bb.s
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = load i64, ptr %i.as, align 8
  %i.bt = icmp eq i64 %i.bs, 8
  br i1 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.h
  %i.bu = load ptr, ptr %8, align 8
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = icmp ne i64 %i.bv, 7957695015159099218
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

.loopexit:                                        ; preds = %bb.f, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bz = load ptr, ptr %8, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ar
  br i1 %i.ca, label %_ZN6Assimp12IrrlichtBase8PropertyI10aiVector3tIfEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

bb.j:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.as, align 8
  %i.cc = icmp ugt i64 %i.cb, 5
  br i1 %i.cc, label %.critedge, label %_ZN10aiVector3tIfE9NormalizeEv.exit

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  store ptr %i.ay, ptr %9, align 8, !alias.scope !40
  %i.cd = load ptr, ptr %8, align 8, !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) %i.cd, i64 5, i1 false)
  %i.ce = load i32, ptr %i.ay, align 1
  %i.cf = xor i32 %i.ce, 1852403536
  %i.cg = getelementptr i8, ptr %i.ay, i64 4
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = xor i32 %i.ci, 116
  %i.ck = or i32 %i.cf, %i.cj
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %i.cn, label %bb.k, label %_ZN10aiVector3tIfE9NormalizeEv.exit

bb.k:                                             ; preds = %.critedge
  %i.co = load ptr, ptr %i.ba, align 8            ; 6 uses
  %i.cp = load ptr, ptr %i.bb, align 8
  %.not.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %i.ba, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  store ptr %i.cs, ptr %i.ba, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %i.az, align 8            ; 5 uses
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 4 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.n, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cy = sdiv exact i64 %i.cw, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 384307168202282325)
  %i.dc = select i1 %i.da, i64 384307168202282325, i64 %i.db ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dd = mul nuw nsw i64 %i.dc, 24
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #28
          to label %.noexc64 unwind label %.loopexit ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.dg, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ct, %i.co
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc64, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %i.de, %.noexc64 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %i.ct, %.noexc64 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !43
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, %i.co
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !47

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc64
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.de, %.noexc64 ], [ %i.di, %.lr.ph.i.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #27
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  store ptr %i.de, ptr %i.az, align 8
  store ptr %i.dj, ptr %i.ba, align 8
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dk, ptr %i.bb, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.l
  %i.dl = phi ptr [ %i.dj, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.cs, %bb.l ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -24
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dn, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  %i.do = load ptr, ptr %8, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 5 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1             ; 2 uses
  %i.dr = add i8 %i.dq, -58
  %or.cond11.i = icmp ult i8 %i.dr, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit, %.lr.ph.i
  %i.ds = phi i8 [ %i.dx, %.lr.ph.i ], [ %i.dq, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ]
  %.013.i = phi i32 [ %i.dv, %.lr.ph.i ], [ 0, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ]
  %.0812.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.dp, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ]
  %i.dt = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.ds, -48
  %i.du = zext nneg i8 %narrow.i to i32
  %i.dv = add i32 %i.dt, %i.du                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %i.dy = add i8 %i.dx, -58
  %or.cond.i = icmp ult i8 %i.dy, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !48

_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit:       ; preds = %.lr.ph.i
  %i.dz = uitofp i32 %i.dv to double
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %.0.lcssa.i = phi double [ 0.000000e+00, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ], [ %i.dz, %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit ]
  store double %.0.lcssa.i, ptr %i.dm, align 8
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

bb.p:                                             ; preds = %bb.g
  %i.ea = load i64, ptr %i.as, align 8
  switch i64 %i.ea, label %_ZN10aiVector3tIfE9NormalizeEv.exit [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69: ; preds = %bb.p
  %i.eb = load ptr, ptr %8, align 8               ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 1
  %i.ed = xor i32 %i.ec, 1953391939
  %i.ee = getelementptr i8, ptr %i.eb, i64 4
  %i.ef = load i16, ptr %i.ee, align 1
  %i.eg = zext i16 %i.ef to i32
  %i.eh = xor i32 %i.eg, 29285
  %i.ei = or i32 %i.ed, %i.eh
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71: ; preds = %bb.p
  %i.em = load ptr, ptr %8, align 8               ; 2 uses
  %i.en = load i64, ptr %i.em, align 1
  %i.eo = xor i64 %i.en, 8028075781017200964
  %i.ep = getelementptr i8, ptr %i.em, i64 8
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i64
  %i.es = xor i64 %i.er, 110
  %i.et = or i64 %i.eo, %i.es
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  %14 = load <2 x float>, ptr %i.av, align 8      ; 5 uses
  %15 = extractelement <2 x float> %14, i64 0     ; 3 uses
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %bb.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread._ZNK10aiVector3tIfEeqERKS0_.exit.thread_crit_edge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread._ZNK10aiVector3tIfEeqERKS0_.exit.thread_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread
  %.pre206 = load float, ptr %i.ax, align 8
  br label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread
  %17 = extractelement <2 x float> %14, i64 1
  %i.ex = fcmp oeq float %17, 0.000000e+00
  %.pre207 = load float, ptr %i.ax, align 8       ; 2 uses
  %i.ey = fcmp oeq float %.pre207, 0.000000e+00
  %or.cond = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.r, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

bb.r:                                             ; preds = %bb.q
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.av, align 8
  store float 0.000000e+00, ptr %i.ax, align 8
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZNK10aiVector3tIfEeqERKS0_.exit.thread:          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread._ZNK10aiVector3tIfEeqERKS0_.exit.thread_crit_edge, %bb.q
  %i.ez = phi float [ %.pre206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread._ZNK10aiVector3tIfEeqERKS0_.exit.thread_crit_edge ], [ %.pre207, %bb.q ] ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %14, %14
  %18 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fa = call float @llvm.fmuladd.f32(float %15, float %15, float %18)
  %i.fb = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.fa) ; 2 uses
  %i.fc = fcmp oeq float %i.fb, 0.000000e+00
  br i1 %i.fc, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.fb)
  %i.fd = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %19 = insertelement <2 x float> poison, float %i.fd, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %14, %20
  store <2 x float> %21, ptr %i.av, align 8
  %i.fe = fmul float %i.ez, %i.fd
  store float %i.fe, ptr %i.ax, align 8
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

bb.s:                                             ; preds = %bb.g
  %i.ff = load i64, ptr %i.as, align 8
  switch i64 %i.ff, label %_ZN10aiVector3tIfE9NormalizeEv.exit [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73: ; preds = %bb.s
  %i.fg = load ptr, ptr %8, align 8               ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 1
  %i.fi = xor i32 %i.fh, 1918989395
  %i.fj = getelementptr i8, ptr %i.fg, i64 4
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i32
  %i.fm = xor i32 %i.fl, 116
  %i.fn = or i32 %i.fi, %i.fm
  %i.fo = icmp ne i32 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.thread, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75: ; preds = %bb.s
  %i.fr = load ptr, ptr %8, align 8               ; 2 uses
  %i.fs = load i16, ptr %i.fr, align 1
  %i.ft = xor i16 %i.fs, 28229
  %i.fu = getelementptr i8, ptr %i.fr, i64 2
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i16
  %i.fx = xor i16 %i.fw, 100
  %i.fy = or i16 %i.ft, %i.fx
  %i.fz = icmp ne i16 %i.fy, 0
  %i.ga = zext i1 %i.fz to i32
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69, %bb.s, %bb.p, %bb.g, %bb.j, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN10aiVector3tIfEdVEf.exit.i, %_ZNK10aiVector3tIfEeqERKS0_.exit.thread, %_ZN6Assimp9strtoul10EPKcPS1_.exit, %.critedge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread, %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.gc = load ptr, ptr %8, align 8               ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ar
  br i1 %i.gd, label %_ZN6Assimp12IrrlichtBase8PropertyI10aiVector3tIfEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.ge = load i64, ptr %i.ar, align 8
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #27
  br label %_ZN6Assimp12IrrlichtBase8PropertyI10aiVector3tIfEED2Ev.exit

_ZN6Assimp12IrrlichtBase8PropertyI10aiVector3tIfEED2Ev.exit: ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.i
  %i.gg = load i64, ptr %i.ar, align 8
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.gh) #27
  br label %_ZN6Assimp12IrrlichtBase8PropertyI10aiVector3tIfEED2Ev.exit78

_ZN6Assimp12IrrlichtBase8PropertyI10aiVector3tIfEED2Ev.exit78: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.av

bb.t:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  %i.gi = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.06.i79 = phi ptr [ @.str.63, %bb.t ], [ %i.gn, %bb.u ] ; 2 uses
  %.0.i80 = phi ptr [ %i.gi, %bb.t ], [ %i.gj, %bb.u ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i80, i64 1
  %i.gk = load i8, ptr %.0.i80, align 1
  %i.gl = zext i8 %i.gk to i32
  %i.gm = call i32 @tolower(i32 noundef %i.gl) #30 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.06.i79, i64 1
  %i.go = load i8, ptr %.06.i79, align 1
  %i.gp = zext i8 %i.go to i32
  %i.gq = call i32 @tolower(i32 noundef %i.gp) #30
  %i.gr = and i32 %i.gm, 255
  %i.gs = icmp ne i32 %i.gr, 0
  %.unshifted231 = xor i32 %i.gm, %i.gq
  %.mask232 = and i32 %.unshifted231, 255
  %i.gt = icmp eq i32 %.mask232, 0                ; 2 uses
  %i.gu = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %i.gu, label %bb.u, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit83, !llvm.loop !37

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit83:         ; preds = %bb.u
  br i1 %i.gt, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.an, ptr %10, align 8
  store i64 0, ptr %i.ao, align 8
  store i8 0, ptr %i.an, align 8
  invoke void @_ZN6Assimp12IrrlichtBase16ReadBoolPropertyERNS0_8PropertyIbEERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(33) %10, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gv = load i32, ptr %i.p, align 8
  %i.gw = icmp eq i32 %i.gv, 2
  br i1 %i.gw, label %bb.x, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148_crit_edge: ; preds = %bb.w
  %.pre203 = load ptr, ptr %10, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148

bb.x:                                             ; preds = %bb.w
  %i.gx = load i64, ptr %i.ao, align 8
  %i.gy = icmp eq i64 %i.gx, 4
  %.pre204 = load ptr, ptr %10, align 8           ; 4 uses
  br i1 %i.gy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85: ; preds = %bb.x
  %i.gz = load i32, ptr %.pre204, align 1
  %i.ha = icmp ne i32 %i.gz, 1886351180
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85
  %i.hd = load i8, ptr %i.ap, align 8, !range !11, !noundef !12
  store i8 %i.hd, ptr %i.aq, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148

bb.y:                                             ; preds = %bb.v
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = load ptr, ptr %10, align 8              ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.an
  br i1 %i.hg, label %_ZN6Assimp12IrrlichtBase8PropertyIbED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.y
  %i.hh = load i64, ptr %i.an, align 8
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #27
  br label %_ZN6Assimp12IrrlichtBase8PropertyIbED2Ev.exit

_ZN6Assimp12IrrlichtBase8PropertyIbED2Ev.exit:    ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.av

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148_crit_edge, %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85
  %i.hj = phi ptr [ %.pre203, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148_crit_edge ], [ %.pre204, %bb.x ], [ %.pre204, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread ], [ %.pre204, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85 ] ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.an
  br i1 %i.hk, label %_ZN6Assimp12IrrlichtBase8PropertyIbED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148
  %i.hl = load i64, ptr %i.an, align 8
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #27
  br label %_ZN6Assimp12IrrlichtBase8PropertyIbED2Ev.exit90

_ZN6Assimp12IrrlichtBase8PropertyIbED2Ev.exit90:  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.thread148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.au

bb.z:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit83
  %i.hn = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.06.i91 = phi ptr [ @.str.31, %bb.z ], [ %i.hs, %bb.aa ] ; 2 uses
  %.0.i92 = phi ptr [ %i.hn, %bb.z ], [ %i.ho, %bb.aa ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i92, i64 1
  %i.hp = load i8, ptr %.0.i92, align 1
  %i.hq = zext i8 %i.hp to i32
  %i.hr = call i32 @tolower(i32 noundef %i.hq) #30 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.06.i91, i64 1
  %i.ht = load i8, ptr %.06.i91, align 1
  %i.hu = zext i8 %i.ht to i32
  %i.hv = call i32 @tolower(i32 noundef %i.hu) #30
  %i.hw = and i32 %i.hr, 255
  %i.hx = icmp ne i32 %i.hw, 0
  %.unshifted233 = xor i32 %i.hr, %i.hv
  %.mask234 = and i32 %.unshifted233, 255
  %i.hy = icmp eq i32 %.mask234, 0                ; 2 uses
  %i.hz = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %i.hz, label %bb.aa, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit95, !llvm.loop !37

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit95:         ; preds = %bb.aa
  br i1 %i.hy, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %i.ah, ptr %11, align 8
  store i64 0, ptr %i.ai, align 8
  store i8 0, ptr %i.ah, align 8
  invoke void @_ZN6Assimp12IrrlichtBase17ReadFloatPropertyERNS0_8PropertyIfEERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_0
