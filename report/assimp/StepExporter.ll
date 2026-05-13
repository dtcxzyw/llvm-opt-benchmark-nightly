inline.NumInlined: 1077
inline.NumDeleted: 524
begin_hunk_0_@_ZN6Assimp12StepExporterC2EPK7aiScenePNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PKNS_16ExportPropertiesE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 5 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.w, ptr %i.a, align 8
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i21, label %._crit_edge.i.i20

.noexc.i21:                                       ; preds = %bb.d
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.m   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i21
  store ptr %i.y, ptr %i.s, align 8
  %i.z = load i64, ptr %i.a, align 8
  store i64 %i.z, ptr %i.t, align 8
  br label %._crit_edge.i.i20

._crit_edge.i.i20:                                ; preds = %.noexc22, %bb.d
  %i.aa = phi ptr [ %i.y, %.noexc22 ], [ %i.t, %bb.d ] ; 2 uses
  switch i64 %i.w, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %._crit_edge.i.i24
  ]

bb.e:                                             ; preds = %._crit_edge.i.i20
  %i.ab = load i8, ptr %i.u, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %._crit_edge.i.i24

bb.f:                                             ; preds = %._crit_edge.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %._crit_edge.i.i24

._crit_edge.i.i24:                                ; preds = %bb.f, %bb.e, %._crit_edge.i.i20
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i16 2619, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 498
  store i8 0, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.am, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.as, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.as, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS2_12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S5_EEE(ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.al)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %._crit_edge.i.i24
  %i.az = load ptr, ptr %i.ax, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS2_jSt4lessIS2_ESaISt4pairIKS2_jEEE(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.ar)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 9, ptr %i.bi, align 8
  invoke void @_ZN6Assimp12StepExporter9WriteFileEv(ptr noundef nonnull align 8 dereferenceable(608) %0)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  ret void

bb.l:                                             ; preds = %.noexc.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.m:                                             ; preds = %.noexc.i21
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.n:                                             ; preds = %bb.j, %bb.g, %._crit_edge.i.i24
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.p ], [ %i.bm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn15 = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %.pn, %bb.q ] ; 2 uses
  call void @_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ar) #20
  call void @_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.al) #20
  %i.bo = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ai
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bq = load i64, ptr %i.ai, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bs = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.t
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.t, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %.pn15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.f
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.by = load i64, ptr %i.f, align 8
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.l
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %.pn15.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn15.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #20
  resume { ptr, i32 } %.pn15.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS2_12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S5_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.81", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %4 = alloca %"class.std::tuple.81", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ult ptr %i.h, %i.c                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.j, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.c, %i.l
  br i1 %i.m, label %.critedge.i, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.b
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.b, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.n = call ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.pre = phi ptr [ %.pre.pre, %.critedge.i ], [ %0, %bb.c ]
  %.sroa.06.0.i = phi ptr [ %i.n, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.p = load <16 x float>, ptr %i.o, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  %6 = phi ptr [ %.pre, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.q = phi <16 x float> [ %i.p, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.a ] ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 1028
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 1044
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 1060
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1076
  %i.v = load <4 x float>, ptr %i.r, align 4      ; 4 uses
  %i.w = load <4 x float>, ptr %i.s, align 4      ; 4 uses
  %i.x = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.y = fmul <4 x float> %i.x, %i.w
  %i.z = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> zeroinitializer
  %i.aa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.z, <4 x float> %i.y)
  %i.ab = load <4 x float>, ptr %i.t, align 4     ; 4 uses
  %i.ac = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ac, <4 x float> %i.aa)
  %i.ae = load <4 x float>, ptr %i.u, align 4     ; 4 uses
  %i.af = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.af, <4 x float> %i.ad)
  %i.ah = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ai = fmul <4 x float> %i.ah, %i.w
  %i.aj = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ak = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.aj, <4 x float> %i.ai)
  %i.al = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.am = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.al, <4 x float> %i.ak)
  %i.an = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ao = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.an, <4 x float> %i.am)
  %i.ap = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.aq = fmul <4 x float> %i.ap, %i.w
  %i.ar = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.as = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.at, <4 x float> %i.as)
  %i.av = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.av, <4 x float> %i.au)
  %i.ax = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.ay = fmul <4 x float> %i.ax, %i.w
  %i.az = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.az, <4 x float> %i.ay)
  %i.bb = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.bc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.bb, <4 x float> %i.ba)
  %i.bd = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.bd, <4 x float> %i.bc)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not10.i.i.i.i6 = icmp eq ptr %i.bg, null
  br i1 %.not10.i.i.i.i6, label %.critedge.i17, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.d, %.lr.ph.i.i.i.i7
  %.012.i.i.i.i8 = phi ptr [ %.1.i.i.i.i13, %.lr.ph.i.i.i.i7 ], [ %i.bg, %bb.d ] ; 3 uses
  %.0811.i.i.i.i9 = phi ptr [ %.19.i.i.i.i10, %.lr.ph.i.i.i.i7 ], [ %i.bh, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ult ptr %i.bj, %6                  ; 2 uses
  %.19.i.i.i.i10 = select i1 %i.bk, ptr %.0811.i.i.i.i9, ptr %.012.i.i.i.i8 ; 6 uses
  %.1.in.v.i.i.i.i11 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 %.1.in.v.i.i.i.i11
  %.1.i.i.i.i13 = load ptr, ptr %.1.in.i.i.i.i12, align 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.1.i.i.i.i13, null
  br i1 %.not.i.i.i.i14, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15, label %.lr.ph.i.i.i.i7, !llvm.loop !11

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15: ; preds = %.lr.ph.i.i.i.i7
  %i.bl = icmp eq ptr %.19.i.i.i.i10, %i.bh
  br i1 %i.bl, label %.critedge.i17, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i10, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ult ptr %6, %i.bn
  br i1 %i.bo, label %.critedge.i17, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19

.critedge.i17:                                    ; preds = %bb.e, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15, %bb.d
  %.08.lcssa.i.i.i11.i18 = phi ptr [ %.19.i.i.i.i10, %bb.e ], [ %.19.i.i.i.i10, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15 ], [ %i.bh, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.a, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bp = call ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i18, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19: ; preds = %bb.e, %.critedge.i17
  %.sroa.06.0.i16 = phi ptr [ %i.bp, %.critedge.i17 ], [ %.19.i.i.i.i10, %bb.e ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 40
  store <4 x float> %i.ag, ptr %i.bq, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 56
  store <4 x float> %i.ao, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 72
  store <4 x float> %i.aw, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 88
  store <4 x float> %i.be, ptr %.sroa.28.0..sroa_idx, align 4
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1104
  %i.bt = load i32, ptr %i.bs, align 8
  %.not60 = icmp eq i32 %i.bt, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19
  ret void

.lr.ph:                                           ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19 ] ; 2 uses
  %i.bu = phi ptr [ %i.bz, %.lr.ph ], [ %i.br, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1112
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8
  call fastcc void @_ZN12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS2_12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S5_EEE(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1104
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp samesign ult i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %.lr.ph, label %._crit_edge, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS2_jSt4lessIS2_ESaISt4pairIKS2_jEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph14

.lr.ph14:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 %i.l, ptr %i.o, align 8
  %.078.i.i.i = load ptr, ptr %i.d, align 8       ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i ], [ %.078.i.i.i, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ult ptr %0, %i.q                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.r, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8  ; 2 uses
  %.not.i.i.i = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %.lr.ph.i.i.i, !llvm.loop !14

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = icmp eq ptr %.0710.i.i.i, %i.e
  %spec.select.i.i = or i1 %i.s, %i.r
  br label %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit

_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit: ; preds = %bb.b, %bb.c
  %.0.lcssa.i15.i.i = phi ptr [ %i.e, %bb.b ], [ %.0710.i.i.i, %bb.c ]
  %i.t = phi i1 [ true, %bb.b ], [ %spec.select.i.i, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.m, ptr noundef nonnull %.0.lcssa.i15.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #20
  %i.u = load i64, ptr %i.f, align 8
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.f, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %.preheader, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.d, %.preheader
  ret void

bb.d:                                             ; preds = %.lr.ph14, %bb.d
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv17
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call fastcc void @_ZN12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS2_jSt4lessIS2_ESaISt4pairIKS2_jEEE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ac = load i32, ptr %i.g, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next18, %i.ad
  br i1 %i.ae, label %bb.d, label %._crit_edge, !llvm.loop !16
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12StepExporter9WriteFileEv(ptr noundef nonnull align 8 dereferenceable(608) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.109", align 8    ; 4 uses
  %2 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %3 = alloca %"class.std::unordered_map", align 8 ; 20 uses
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = or i32 %i.i, 4
  store i32 %i.j, ptr %i.h, align 8
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 9, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store ptr %i.p, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %.not1073 = icmp eq i32 %i.x, 0
  br i1 %.not1073, label %._crit_edge1005, label %.lr.ph1004

.lr.ph1004:                                       ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

._crit_edge1005:                                  ; preds = %._crit_edge, %bb.a
  %.sroa.16.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.16.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.11.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0837.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0837.1.lcssa, %._crit_edge ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.z = call i64 @time(ptr noundef null) #20
  store i64 %i.z, ptr %i.b, align 8
  %i.aa = call ptr @localtime(ptr noundef nonnull %i.b) #20
  %i.ab = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 20, ptr noundef nonnull @.str.4, ptr noundef %i.aa) #20 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 138 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.5, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

bb.b:                                             ; preds = %.lr.ph1004, %._crit_edge
  %indvars.iv1131 = phi i64 [ 0, %.lr.ph1004 ], [ %indvars.iv.next1132, %._crit_edge ] ; 2 uses
end_hunk_0
