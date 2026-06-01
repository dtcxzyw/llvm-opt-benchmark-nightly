inline.NumInlined: 2268
inline.NumDeleted: 959
begin_hunk_0_@_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_:bb.a
  %i.bx = add i32 %i.bw, %i.bv
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bj, %bb.c ], [ %i.bq, %bb.d ], [ %i.bx, %bb.e ] ; 2 uses
  %i.by = shl i32 %.1.i, 3
  %i.bz = xor i32 %i.by, %.1.i                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 5
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = shl i32 %i.cb, 4
  %i.cd = xor i32 %i.cc, %i.cb                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 17
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = shl i32 %i.cf, 25
  %i.ch = xor i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = add i32 %i.ci, %i.ch
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.cj, %bb.f ], [ 0, %bb.a ]  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cm, %_Z13SuperFastHashPKcjj.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp ult i32 %i.co, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.cp, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.cp, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = icmp eq ptr %.19.i.i.i, %i.cm
  br i1 %i.cq, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp ult i32 %.0.i, %i.cs
  br i1 %i.ct, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %bb.m

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_Z13SuperFastHashPKcjj.exit, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 %.0.i, ptr %3, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %2, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load i64, ptr %i.cx, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.cy, ptr %i.a, align 8
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread
  %i.da = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.da, ptr %i.cu, align 8
  %i.db = load i64, ptr %i.a, align 8
  store i64 %i.db, ptr %i.cv, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread
  %i.dc = phi ptr [ %i.da, %.noexc.i.i ], [ %i.cv, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread ] ; 2 uses
  switch i64 %i.cy, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.dd = load i8, ptr %i.cw, align 1
  store i8 %i.dd, ptr %i.dc, align 1
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.de = load i64, ptr %i.a, align 8             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.cu, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.di = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  %i.dj = load i32, ptr %3, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp ult i32 %i.dl, %i.dj               ; 2 uses
  %.19.i.i.i.i = select i1 %i.dm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, label %bb.i, !llvm.loop !123

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i: ; preds = %bb.i
  %i.dn = icmp eq ptr %.19.i.i.i.i, %i.cm
  br i1 %i.dn, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = icmp ult i32 %i.dj, %i.dp
  br i1 %i.dq, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.j, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i ], [ %i.cm, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit ]
  %i.dr = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJS0_IjS7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ds = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cv
  br i1 %i.dt, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.du = load i64, ptr %i.cv, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #30
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.l:                                             ; preds = %.critedge.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cv
  br i1 %i.dy, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.l
  %i.dz = load i64, ptr %i.cv, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #30
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.dw

bb.m:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.0 = phi i1 [ true, %bb.m ], [ false, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp8Importer17SetPropertyMatrixEPKcRK12aiMatrix4x4tIfE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = invoke noundef zeroext i1 @_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #27 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.c, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5 = alloca %class.aiMatrix4x4t, align 8  ; 6 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !120

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.as = add nsw i32 %i.e, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i
  %i.aw = load i16, ptr %.054.lcssa.i, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %.055.lcssa.i, %i.ax            ; 2 uses
  %i.az = shl i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = tail call i8 @llvm.abs.i8(i8 %i.bb, i1 false)
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 18
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = xor i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.054.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.055.lcssa.i, %i.bk            ; 2 uses
  %i.bm = shl i32 %i.bl, 11
  %i.bn = xor i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17
  %i.bp = add i32 %i.bo, %i.bn
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bq = load i8, ptr %.054.lcssa.i, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add i32 %.055.lcssa.i, %i.br            ; 2 uses
  %i.bt = shl i32 %i.bs, 10
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = add i32 %i.bv, %i.bu
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.c ], [ %i.bp, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = shl i32 %.1.i, 3
  %i.by = xor i32 %i.bx, %.1.i                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 4
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 17
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = shl i32 %i.ce, 25
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add i32 %i.ch, %i.cg
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.ci, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i, label %.thread15, label %.lr.ph.i.i.i

.thread15:                                        ; preds = %_Z13SuperFastHashPKcjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %.critedge.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ck, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp ult i32 %i.cn, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.co, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.co, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !124

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.cp, label %.lr.ph.i.i.i.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ult i32 %.0.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.m

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = icmp ult i32 %i.cu, %.0.i               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i, label %bb.g, !llvm.loop !124

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i: ; preds = %bb.g
  %i.cw = icmp eq ptr %.19.i.i.i.i, %i.cl
  br i1 %i.cw, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp ult i32 %.0.i, %i.cy
  br i1 %i.cz, label %.critedge.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit

.critedge.i:                                      ; preds = %.thread15, %bb.h, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %i.cl, %.thread15 ]
  %i.da = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 3 uses
  store i32 %.0.i, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  %i.dd = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.db)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.i:                                             ; preds = %.critedge.i
  %i.de = extractvalue { ptr, ptr } %i.dd, 1      ; 4 uses
  %.not.i7 = icmp eq ptr %i.de, null
  br i1 %.not.i7, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = extractvalue { ptr, ptr } %i.dd, 0
  %.not.i.i.i8 = icmp ne ptr %i.df, null
  %i.dg = icmp eq ptr %i.de, %i.cl
  %or.cond.i.i.i = select i1 %.not.i.i.i8, i1 true, i1 %i.dg
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.di = load i32, ptr %i.db, align 4
  %i.dj = load i32, ptr %i.dh, align 4
  %i.dk = icmp ult i32 %i.di, %i.dj
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.dl = phi i1 [ %i.dk, %bb.k ], [ true, %bb.j ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dl, ptr noundef nonnull %i.da, ptr noundef nonnull %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #27
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8
  br label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 104) #30
  resume { ptr, i32 } %i.dp

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 104) #30
  br label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit: ; preds = %bb.l, %.thread.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dq, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit
  %.0 = phi i1 [ true, %bb.m ], [ false, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp8Importer18SetPropertyPointerEPKcPv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.d = invoke noundef zeroext i1 @_Z18SetGenericPropertyIPvEbRSt3mapIjT_St4lessIjESaISt4pairIKjS2_EEEPKcRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #27 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.d, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z18SetGenericPropertyIPvEbRSt3mapIjT_St4lessIjESaISt4pairIKjS2_EEEPKcRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !120

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod22 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.as = add nsw i32 %i.e, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i
  %i.aw = load i16, ptr %.054.lcssa.i, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %.055.lcssa.i, %i.ax            ; 2 uses
  %i.az = shl i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = tail call i8 @llvm.abs.i8(i8 %i.bb, i1 false)
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 18
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = xor i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.054.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.055.lcssa.i, %i.bk            ; 2 uses
  %i.bm = shl i32 %i.bl, 11
  %i.bn = xor i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17
  %i.bp = add i32 %i.bo, %i.bn
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bq = load i8, ptr %.054.lcssa.i, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add i32 %.055.lcssa.i, %i.br            ; 2 uses
  %i.bt = shl i32 %i.bs, 10
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = add i32 %i.bv, %i.bu
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.c ], [ %i.bp, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = shl i32 %.1.i, 3
  %i.by = xor i32 %i.bx, %.1.i                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 4
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 17
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = shl i32 %i.ce, 25
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add i32 %i.ch, %i.cg
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.ci, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i, label %.thread16, label %.lr.ph.i.i.i

.thread16:                                        ; preds = %_Z13SuperFastHashPKcjj.exit
  %i.cm = load ptr, ptr %2, align 8
  br label %.critedge.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ck, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp ult i32 %i.co, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.cp, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.cp, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
end_hunk_0
