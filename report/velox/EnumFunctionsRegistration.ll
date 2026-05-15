inline.NumInlined: 8880
inline.NumDeleted: 3129
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_11BigintEnumTINS0_12EnumVariableILm1EEEEEE3runERNS1_19TypeAnalysisResultsE:.noexc
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !22
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.w:                                             ; preds = %.noexc
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.x:                                             ; preds = %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.x
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.w ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.cq, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ae

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.z:                                             ; preds = %bb.f
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.g
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %6) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn10 = phi { ptr, i32 } [ %i.cy, %bb.aa ], [ %i.cx, %bb.z ] ; 2 uses
  %i.cz = load i8, ptr %i.ad, align 8, !tbaa !209, !range !62, !noundef !63
  %i.da = trunc nuw i8 %i.cz to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !209
  br i1 %i.da, label %bb.ac, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit31

bb.ac:                                            ; preds = %bb.ab
  %i.db = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29: ; preds = %bb.ac
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #35
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit31

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit31: ; preds = %bb.ac, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29
  %i.dg = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.r
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit31
  %i.di = load i64, ptr %i.r, align 8, !tbaa !22
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.y
  %.pn10.pn = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %.pn10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.pn10, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn13 = phi { ptr, i32 } [ %i.dk, %bb.ad ], [ %.pn10.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.dl = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ae
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !22
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.54", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.n = sub i64 %i.i, %i.f
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !213

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.w = sub i64 %i.f, %i.r
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %bb.d

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit
  %i.y = tail call { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE2atERSD_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !128
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !214 ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !217

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !217

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !217

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !217

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !217

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !218, !range !62, !noundef !63
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !218, !range !62, !noundef !63
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !217

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !219, !range !62, !noundef !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !219, !range !62, !noundef !63
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !217

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !220, !range !62, !noundef !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !220, !range !62, !noundef !63
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !221

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !214
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !214
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !214
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !214
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.17, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !214
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.17) #36
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  unreachable

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.48") align 8) local_unnamed_addr #1

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !198

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRS7_RSB_EEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE2atERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12resizeValuesEiiRKSt8optionalIS2_E:bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !611  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i8, ptr %i.o, align 4, !tbaa !612
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, label %bb.g, !prof !200

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !617
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.s, ptr %i.t, align 8, !tbaa !643
  br label %bb.s

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !658
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %4, i64 noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !611  ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %4, align 8, !tbaa !611    ; 3 uses
  br i1 %.not28, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !611
  store ptr %i.y, ptr %i.a, align 8, !tbaa !611
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !612
  %i.ab = and i8 %i.aa, 2
  %.not.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i13, label %bb.l, label %bb.j, !prof !200

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !617
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !617
  %i.ah = sext i32 %.sroa.speculated to i64
  %i.ai = shl nsw i64 %i.ah, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !611  ; 7 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !611
  store ptr null, ptr %4, align 8, !tbaa !611
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !611
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.m
  %i.an = load ptr, ptr %.pr, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !660

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !661
  %.not.i.i.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !52
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i.i.i
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.n, !inline_history !660

bb.n:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #37
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %.thread, %bb.l, %bb.m, %.noexc.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !611 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !612
  %i.ba = and i8 %i.az, 2
  %.not.i15 = icmp eq i8 %i.ba, 0
  br i1 %.not.i15, label %bb.p, label %bb.o, !prof !200

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !617
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !643
  %i.be = load ptr, ptr %4, align 8, !tbaa !611   ; 7 uses
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc.i unwind label %bb.r, !inline_history !660

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !661
  %.not.i.i19 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !52
  %..i.i = select i1 %.not.i.i19, i64 8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %..i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !660

bb.r:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #37
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.p, %bb.q, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit
  ret void

bb.t:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.ac, %bb.k ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE17invalidateIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.e = load atomic i8, ptr %i.d seq_cst, align 1, !range !62, !noundef !63
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !837
  %i.h = load atomic i32, ptr %i.g acquire, align 8, !noalias !837 ; 4 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !3, !noalias !837
  %i.i = and i32 %i.h, -1312
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge.i.i.i.i.i.i.i, !prof !200

bb.c:                                             ; preds = %bb.b
  %i.k = or disjoint i32 %i.h, 128
  %i.l = cmpxchg ptr %i.g, i32 %i.h, i32 %i.k seq_cst seq_cst, align 4, !noalias !837 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !217

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = extractvalue { i32, i1 } %i.l, 0
  store i32 %i.n, ptr %i.b, align 4, !noalias !837
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.o = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !837 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !837
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !837
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !409  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load i32, ptr %i.r, align 8, !tbaa !412  ; 6 uses
  %.not.i.i.i = icmp sgt i32 %i.s, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.s, 2147483584                 ; 2 uses
  %.not3347.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.e
  %i.u = add nsw i32 %i.s, -64
  %i.v = lshr i32 %i.u, 3
  %i.w = and i32 %i.v, 536870904
  %narrow.i = add nuw nsw i32 %i.w, 8
  %i.x = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, i8 0, i64 %i.x, i1 false), !tbaa !123
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.preheader.i, %bb.e
  %.not34.i.i.i = icmp eq i32 %i.s, %i.t
  br i1 %.not34.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.y = lshr i32 %i.s, 6
  %i.z = and i32 %i.s, 63
  %i.aa = zext nneg i32 %i.z to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.aa
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !123
  %i.ae = and i64 %i.ad, %notmask.i37.i.i.i
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !123
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.af, align 4, !tbaa !420
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.ag, align 8, !tbaa !421
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i16 256, ptr %i.ah, align 4
  store atomic i8 1, ptr %i.d seq_cst, align 1
  store atomic i8 0, ptr %i.c seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ai = atomicrmw and ptr %i.g, i32 -401 seq_cst, align 4 ; 2 uses
  %i.aj = and i32 %i.ai, -401
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  %i.ak = and i32 %i.ai, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.h, !prof !200

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resizeIsAsciiIfNotEmptyIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEib(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"class.folly::LockedPtr.457", align 8 ; 6 uses
  %6 = alloca %"class.folly::LockedPtr", align 8  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.h = load atomic i8, ptr %i.g seq_cst, align 1, !range !62, !noundef !63
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !848, !alias.scope !854
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !855, !alias.scope !854
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !856, !alias.scope !854
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23, !noalias !854
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !854 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !854
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !854 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !854
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !855, !alias.scope !854
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23, !noalias !854
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !854
  %i.u = load ptr, ptr %5, align 8, !tbaa !848    ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !420
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !421
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !412
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !855
  switch i16 %i.ad, label %bb.n [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.i
    i16 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load atomic i32, ptr %i.u acquire, align 4
  %i.af = and i32 %i.ae, 768
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  br i1 %i.ah, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !857

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !856
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !857

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #37
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  store ptr %i.j, ptr %6, align 8, !tbaa !864, !alias.scope !866
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !867, !alias.scope !866
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23, !noalias !866
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !866 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !866
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !200

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !866 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !217

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !866
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !866 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !866
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !866
  store i8 1, ptr %i.ay, align 8, !tbaa !867, !alias.scope !866
  %i.bh = load ptr, ptr %6, align 8, !tbaa !864   ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !420
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !421
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !412
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !62, !noundef !63
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = and i1 %2, %i.bs
  %i.bu = zext i1 %i.bt to i8
  store atomic i8 %i.bu, ptr %i.f seq_cst, align 8
  %i.bv = load ptr, ptr %6, align 8, !tbaa !864   ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bv, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg.i.i24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !420
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !421
  %i.cb = icmp sge i32 %i.by, %i.ca
  %i.cc = zext i1 %i.cb to i8
  store atomic i8 %i.cc, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !867, !range !62
  %i.cd = trunc nuw i8 %.pre to i1
  br i1 %i.cd, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.ce = phi ptr [ %i.bv, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.cf = atomicrmw and ptr %i.ce, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cg = and i32 %i.cf, -401
  store i32 %i.cg, ptr %i.c, align 4, !tbaa !3
  %i.ch = and i32 %i.cf, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !200

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE25keepAtMostOneStringBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.382", align 8   ; 8 uses
  %2 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !868  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !868
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !611  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !612
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !611  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !626
  %i.p = icmp ult i64 %i.o, 1048513
  br i1 %i.p, label %bb.d, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !611  ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !611
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = atomicrmw add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  store ptr %i.w, ptr %1, align 8, !tbaa !869
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !870
  %i.z = load ptr, ptr %2, align 8, !tbaa !611    ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !611
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !871
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !869   ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !871 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !611 ; 7 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !660

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !661
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
end_hunk_1
begin_hunk_2_@llvm.cttz.i16
!14 = distinct !{!14, !15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!15 = distinct !{!15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!16 = !{!8, !12, i64 8}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!20 = !{!18, !19, i64 16}
!21 = !{!18, !19, i64 8}
!22 = !{!5, !5, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!27 = distinct !{!27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSN8facebook5velox4exec17SignatureVariableE", !11, i64 0}
!31 = !{!29, !30, i64 8}
!32 = distinct !{!32, !24}
!33 = !{!29, !30, i64 16}
!34 = !{!9, !10, i64 0}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = distinct !{!36, !24}
!37 = !{!38, !38, i64 0}
!38 = !{!"bool", !5, i64 0}
!39 = !{!"branch_weights", i32 1, i32 1048575}
!40 = !{!19, !19, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!43 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!44 = !{!11, !11, i64 0}
!45 = !{!46, !11, i64 24}
!46 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEE", !47, i64 0, !11, i64 24}
!47 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!48 = !{!47, !11, i64 16}
!49 = !{!50, !4, i64 8}
!50 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!51 = !{!50, !4, i64 12}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !6, i64 0}
!54 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!55 = distinct !{null, null}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions15EnumKeyFunctionINS1_4exec10VectorExecESt10shared_ptrIKNS1_14BigintEnumTypeEEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_11BigintEnumTINS1_12EnumVariableILm1EEEEELb0EEEEEEJSK_EEELN9__gnu_cxx12_Lock_policyE2EE", !58, i64 0, !42, i64 8}
!58 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions15EnumKeyFunctionINS0_4exec10VectorExecESt10shared_ptrIKNS0_14BigintEnumTypeEEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_11BigintEnumTINS0_12EnumVariableILm1EEEEELb0EEEEEEJSJ_EEE", !11, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions15EnumKeyFunctionINS2_4exec10VectorExecESt10shared_ptrIKNS2_14BigintEnumTypeEEEENS2_7VarcharENS2_15ConstantCheckerIJNS2_10CustomTypeINS2_11BigintEnumTINS2_12EnumVariableILm1EEEEELb0EEEEEEJSL_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSV_: argument 0"}
!61 = distinct !{!61, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions15EnumKeyFunctionINS2_4exec10VectorExecESt10shared_ptrIKNS2_14BigintEnumTypeEEEENS2_7VarcharENS2_15ConstantCheckerIJNS2_10CustomTypeINS2_11BigintEnumTINS2_12EnumVariableILm1EEEEELb0EEEEEEJSL_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSV_"}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!58, !58, i64 0}
!65 = distinct !{null, null}
!66 = !{!67, !10, i64 8}
!67 = !{!"_ZTSSt9type_info", !10, i64 8}
!68 = !{!69, !38, i64 8}
!69 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions15EnumKeyFunctionINS0_4exec10VectorExecESt10shared_ptrIKNS0_14BigintEnumTypeEEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_11BigintEnumTINS0_12EnumVariableILm1EEEEELb0EEEEEEJSJ_EEE", !70, i64 0, !38, i64 8, !71, i64 16, !4, i64 32, !74, i64 40, !77, i64 56}
!70 = !{!"_ZTSN8facebook5velox4core23ISimpleFunctionMetadataE"}
!71 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !72, i64 0}
!72 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !73, i64 0, !42, i64 8}
!73 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !11, i64 0}
!74 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !75, i64 0}
!75 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0, !42, i64 8}
!76 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!77 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !78, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_Vector_implE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!81 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !11, i64 0}
!82 = !{!83, !38, i64 1}
!83 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResults5StatsE", !38, i64 0, !38, i64 1, !38, i64 2, !12, i64 8}
!84 = !{!83, !12, i64 8}
!85 = !{!69, !4, i64 32}
!86 = !{!75, !76, i64 0}
!87 = distinct !{null, null, null, null}
!88 = !{!83, !38, i64 0}
!89 = !{!83, !38, i64 2}
!90 = !{!91, !93, i64 0}
!91 = !{!"_ZTSSt15_Rb_tree_header", !92, i64 0, !12, i64 32}
!92 = !{!"_ZTSSt18_Rb_tree_node_base", !93, i64 0, !94, i64 8, !94, i64 16, !94, i64 24}
!93 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!94 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!95 = !{!91, !94, i64 8}
!96 = !{!91, !94, i64 16}
!97 = !{!91, !94, i64 24}
!98 = !{!91, !12, i64 32}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!101 = distinct !{!101, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!104 = distinct !{!104, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!107 = distinct !{!107, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!108 = !{!106, !103, !100}
!109 = !{!110, !10, i64 40}
!110 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !111, i64 56}
!111 = !{!"_ZTSSt6locale", !112, i64 0}
!112 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!113 = !{!110, !10, i64 32}
!114 = !{!115, !115, i64 0}
!115 = !{!"p1 _ZTSN8facebook5velox4core19TypeAnalysisResultsE", !11, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !11, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"p1 _ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE", !11, i64 0}
!120 = !{!30, !30, i64 0}
!121 = !{!92, !94, i64 8}
!122 = !{i64 0, i64 1, !37, i64 1, i64 1, !37, i64 2, i64 1, !37, i64 8, i64 8, !123}
!123 = !{!12, !12, i64 0}
!124 = !{!80, !81, i64 8}
!125 = !{!80, !81, i64 0}
!126 = !{!80, !81, i64 16}
!127 = distinct !{!127, !24}
!128 = !{!129, !130, i64 64}
!129 = !{!"_ZTSN8facebook5velox4exec17SignatureVariableE", !8, i64 0, !8, i64 32, !130, i64 64, !38, i64 65, !38, i64 66, !38, i64 67}
!130 = !{!"_ZTSN8facebook5velox4exec13ParameterTypeE", !5, i64 0}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!133 = distinct !{!133, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!134 = distinct !{!134, !24}
!135 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!136 = distinct !{!136, !24}
!137 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!138 = !{!139, !140, i64 0}
!139 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !12, i64 8, !142, i64 16, !12, i64 24, !144, i64 32, !143, i64 48}
!140 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !141, i64 0}
!141 = !{!"any p2 pointer", !11, i64 0}
!142 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !143, i64 0}
!143 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!144 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !145, i64 0, !12, i64 8}
!145 = !{!"float", !5, i64 0}
!146 = !{!139, !12, i64 8}
!147 = !{!144, !145, i64 0}
!148 = !{!149, !150, i64 0}
!149 = !{!"_ZTSSt18_Bit_iterator_base", !150, i64 0, !4, i64 8}
!150 = !{!"p1 long", !11, i64 0}
!151 = !{!152, !150, i64 32}
!152 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !153, i64 0, !153, i64 16, !150, i64 32}
!153 = !{!"_ZTSSt13_Bit_iterator", !149, i64 0}
!154 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!155 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!156 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!157 = distinct !{null, null, null, null, null, null, null, null, null}
!158 = distinct !{!158, !24}
!159 = !{!81, !81, i64 0}
!160 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!161 = distinct !{!161, !24}
!162 = distinct !{null, null, null, null, null, null, null, null, null}
!163 = distinct !{!163, !24}
!164 = distinct !{!164, !24}
!165 = distinct !{!165, !24}
!166 = !{!72, !73, i64 0}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!169 = distinct !{!169, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!170 = !{!171, !12, i64 8}
!171 = !{!"_ZTSN8facebook5velox4core19TypeAnalysisResultsE", !83, i64 0, !172, i64 16, !74, i64 392, !176, i64 408}
!172 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !173, i64 0, !174, i64 8}
!173 = !{!"_ZTSSo"}
!174 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !110, i64 0, !175, i64 64, !8, i64 72}
!175 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!176 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !177, i64 0}
!177 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !178, i64 0}
!178 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !179, i64 0, !91, i64 8}
!179 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !180, i64 0}
!180 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!181 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!182 = !{!183, !115, i64 0}
!183 = !{!"_ZTSZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions15EnumKeyFunctionINS0_4exec10VectorExecESt10shared_ptrIKNS0_14BigintEnumTypeEEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_11BigintEnumTINS0_12EnumVariableILm1EEEEELb0EEEEEEJSJ_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISN_EEEUlvE_", !115, i64 0, !117, i64 8, !119, i64 16}
!184 = !{i64 8}
!185 = !{!183, !117, i64 8}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!188 = distinct !{!188, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!191 = distinct !{!191, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!194 = distinct !{!194, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!195 = !{!193, !190, !187}
!196 = !{!183, !119, i64 16}
!197 = !{!94, !94, i64 0}
!198 = distinct !{!198, !24}
!199 = distinct !{null}
!200 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!201 = !{!202, !204}
!202 = distinct !{!202, !203, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!203 = distinct !{!203, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!204 = distinct !{!204, !205, !"_ZN8facebook5velox12EnumVariableILm1EE4nameB5cxx11Ev: argument 0"}
!205 = distinct !{!205, !"_ZN8facebook5velox12EnumVariableILm1EE4nameB5cxx11Ev"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!208 = distinct !{!208, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!209 = !{!210, !38, i64 32}
!210 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !38, i64 32}
!211 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!212 = distinct !{null, null, null}
!213 = distinct !{!213, !24}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!216 = distinct !{!216, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!217 = !{!"branch_weights", i32 2146410443, i32 1073205}
!218 = !{!129, !38, i64 65}
!219 = !{!129, !38, i64 66}
!220 = !{!129, !38, i64 67}
!221 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!222 = !{!223, !223, i64 0}
!223 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !11, i64 0}
!224 = !{!225, !226, i64 8}
!225 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !223, i64 0, !226, i64 8}
!226 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEEE", !11, i64 0}
!227 = !{!92, !94, i64 24}
!228 = distinct !{!228, !24}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!234 = !{!230, !233}
!235 = distinct !{!235, !24}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!238 = distinct !{!238, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!241 = !{!237, !240}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!244 = distinct !{!244, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!245 = !{!246}
!246 = distinct !{!246, !244, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!247 = distinct !{!247, !24, !248, !249}
!248 = !{!"llvm.loop.isvectorized", i32 1}
!249 = !{!"llvm.loop.unroll.runtime.disable"}
!250 = distinct !{!250, !24, !248}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!253 = distinct !{!253, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!256 = distinct !{!256, !24, !248, !249}
!257 = distinct !{!257, !24, !248}
!258 = !{!92, !94, i64 16}
!259 = distinct !{!259, !24}
!260 = distinct !{!260, !24}
!261 = distinct !{!261, !24}
!262 = !{!263, !38, i64 104}
!263 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !38, i64 104}
!264 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!265 = !{!266, !267, i64 0}
!266 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !267, i64 0, !267, i64 8, !267, i64 16}
!267 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !11, i64 0}
!268 = !{!266, !267, i64 8}
!269 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!270 = distinct !{!270, !24}
!271 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!272 = !{!266, !267, i64 16}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!275 = distinct !{!275, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!276 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!277 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!278 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!279 = !{!280, !38, i64 96}
!280 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !8, i64 0, !281, i64 32, !284, i64 56, !38, i64 96}
!281 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !282, i64 0}
!282 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !283, i64 0}
!283 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !266, i64 0}
!284 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !285, i64 0}
!285 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !286, i64 0}
!286 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !287, i64 0}
!287 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !210, i64 0}
!288 = !{!267, !267, i64 0}
!289 = distinct !{null, null, null, null}
!290 = distinct !{!290, !24}
!291 = distinct !{null, null, null}
!292 = distinct !{null, null, null, null}
!293 = distinct !{null}
!294 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!295 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!296 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!297 = !{!298, !38, i64 232}
!298 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !299, i64 0, !300, i64 56, !281, i64 168, !304, i64 192, !38, i64 232}
!299 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !139, i64 0}
!300 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !301, i64 0}
!301 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !302, i64 0}
!302 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !303, i64 0}
!303 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !263, i64 0}
!304 = !{!"_ZTSSt6vectorIbSaIbEE", !305, i64 0}
!305 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !306, i64 0}
!306 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !152, i64 0}
!307 = !{!149, !4, i64 8}
!308 = distinct !{null}
!309 = distinct !{!309, !24}
!310 = distinct !{null, null}
!311 = distinct !{!311, !24}
!312 = distinct !{!312, !24}
!313 = distinct !{!313, !24}
!314 = !{!139, !12, i64 24}
!315 = !{!142, !143, i64 0}
!316 = distinct !{!316, !24}
!317 = !{!143, !143, i64 0}
!318 = !{!319, !12, i64 0}
!319 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !12, i64 0}
!320 = distinct !{!320, !24}
!321 = !{!322, !323, i64 0}
!322 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !323, i64 0, !324, i64 8}
!323 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !11, i64 0}
!324 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !11, i64 0}
!325 = !{!322, !324, i64 8}
!326 = distinct !{!326, !24}
!327 = !{!144, !12, i64 8}
!328 = !{!139, !143, i64 16}
!329 = !{!139, !143, i64 48}
!330 = distinct !{!330, !24}
!331 = distinct !{!331, !24}
!332 = !{!333, !140, i64 0}
!333 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !12, i64 8, !142, i64 16, !12, i64 24, !144, i64 32, !143, i64 48}
!334 = !{!333, !12, i64 8}
!335 = !{!336, !140, i64 0}
!336 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !12, i64 8, !142, i64 16, !12, i64 24, !144, i64 32, !143, i64 48}
!337 = !{!336, !12, i64 8}
!338 = !{!339, !140, i64 0}
!339 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox17LongEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !12, i64 8, !142, i64 16, !12, i64 24, !144, i64 32, !143, i64 48}
!340 = !{!339, !12, i64 8}
!341 = !{!342, !140, i64 0}
!342 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox20VarcharEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !12, i64 8, !142, i64 16, !12, i64 24, !144, i64 32, !143, i64 48}
!343 = !{!342, !12, i64 8}
!344 = !{!339, !143, i64 16}
!345 = distinct !{!345, !24}
!346 = !{!336, !143, i64 16}
!347 = distinct !{!347, !24}
!348 = !{!342, !143, i64 16}
!349 = distinct !{!349, !24}
!350 = !{!351, !143, i64 16}
!351 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !12, i64 8, !142, i64 16, !12, i64 24, !144, i64 32, !143, i64 48}
!352 = distinct !{!352, !24}
!353 = !{!351, !140, i64 0}
!354 = !{!351, !12, i64 8}
!355 = !{!356, !143, i64 16}
!356 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !12, i64 8, !142, i64 16, !12, i64 24, !144, i64 32, !143, i64 48}
!357 = distinct !{!357, !24}
!358 = !{!356, !140, i64 0}
!359 = !{!356, !12, i64 8}
!360 = !{!333, !143, i64 16}
!361 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!362 = distinct !{!362, !24}
!363 = distinct !{!363, !364}
!364 = !{!"llvm.loop.peeled.count", i32 1}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!367 = distinct !{!367, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!370 = distinct !{!370, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!371 = !{!369, !366}
!372 = !{!373, !12, i64 8}
!373 = !{!"_ZTSSi", !12, i64 8}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions15EnumKeyFunctionINS3_10VectorExecESt10shared_ptrIKNS2_14BigintEnumTypeEEEESF_NS2_7VarcharENS2_15ConstantCheckerIJNS2_10CustomTypeINS2_11BigintEnumTINS2_12EnumVariableILm1EEEEELb0EEEEEEJSS_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS12_EERKSW_INS3_17SignatureVariableESaIS17_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1F_E4typeEOS1G_DpOS1H_: argument 0"}
!376 = distinct !{!376, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions15EnumKeyFunctionINS3_10VectorExecESt10shared_ptrIKNS2_14BigintEnumTypeEEEESF_NS2_7VarcharENS2_15ConstantCheckerIJNS2_10CustomTypeINS2_11BigintEnumTINS2_12EnumVariableILm1EEEEELb0EEEEEEJSS_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS12_EERKSW_INS3_17SignatureVariableESaIS17_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1F_E4typeEOS1G_DpOS1H_"}
!377 = !{!378, !380, !382, !375}
!378 = distinct !{!378, !379, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions15EnumKeyFunctionINS2_10VectorExecESt10shared_ptrIKNS1_14BigintEnumTypeEEEES8_NS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_11BigintEnumTINS1_12EnumVariableILm1EEEEELb0EEEEEEJSL_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!379 = distinct !{!379, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions15EnumKeyFunctionINS2_10VectorExecESt10shared_ptrIKNS1_14BigintEnumTypeEEEES8_NS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_11BigintEnumTINS1_12EnumVariableILm1EEEEELb0EEEEEEJSL_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!380 = distinct !{!380, !381, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions15EnumKeyFunctionINS1_10VectorExecESt10shared_ptrIKNS0_14BigintEnumTypeEEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_11BigintEnumTINS0_12EnumVariableILm1EEEEELb0EEEEEEJSM_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS1_17SignatureVariableESaIS11_EEbENKUlvE_clEv: argument 0"}
!381 = distinct !{!381, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions15EnumKeyFunctionINS1_10VectorExecESt10shared_ptrIKNS0_14BigintEnumTypeEEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_11BigintEnumTINS0_12EnumVariableILm1EEEEELb0EEEEEEJSM_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS1_17SignatureVariableESaIS11_EEbENKUlvE_clEv"}
!382 = distinct !{!382, !383, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions15EnumKeyFunctionINS3_10VectorExecESt10shared_ptrIKNS2_14BigintEnumTypeEEEES9_NS2_7VarcharENS2_15ConstantCheckerIJNS2_10CustomTypeINS2_11BigintEnumTINS2_12EnumVariableILm1EEEEELb0EEEEEEJSM_EEEEESt14default_deleteISP_EERZNS3_22SimpleFunctionRegistry16registerFunctionISP_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS11_EERKSV_INS3_17SignatureVariableESaIS16_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!383 = distinct !{!383, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions15EnumKeyFunctionINS3_10VectorExecESt10shared_ptrIKNS2_14BigintEnumTypeEEEES9_NS2_7VarcharENS2_15ConstantCheckerIJNS2_10CustomTypeINS2_11BigintEnumTINS2_12EnumVariableILm1EEEEELb0EEEEEEJSM_EEEEESt14default_deleteISP_EERZNS3_22SimpleFunctionRegistry16registerFunctionISP_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS11_EERKSV_INS3_17SignatureVariableESaIS16_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!384 = !{!385, !386, i64 0}
!385 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec28SimpleFunctionAdapterFactoryELb0EE", !386, i64 0}
!386 = !{!"p1 _ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE", !11, i64 0}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions15EnumKeyFunctionINS2_10VectorExecESt10shared_ptrIKNS1_14BigintEnumTypeEEEES8_NS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_11BigintEnumTINS1_12EnumVariableILm1EEEEELb0EEEEEEJSL_EEEEEJRKSt6vectorIS9_IKNS1_4TypeEESaISS_EERKNS4_11QueryConfigERKSP_IS9_INS1_10BaseVectorEESaIS11_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!389 = distinct !{!389, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions15EnumKeyFunctionINS2_10VectorExecESt10shared_ptrIKNS1_14BigintEnumTypeEEEES8_NS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_11BigintEnumTINS1_12EnumVariableILm1EEEEELb0EEEEEEJSL_EEEEEJRKSt6vectorIS9_IKNS1_4TypeEESaISS_EERKNS4_11QueryConfigERKSP_IS9_INS1_10BaseVectorEESaIS11_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!390 = !{!391, !392, i64 0}
!391 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !392, i64 0}
!392 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !11, i64 0}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions15EnumKeyFunctionINS1_4exec10VectorExecESt10shared_ptrIKNS1_14BigintEnumTypeEEEES7_NS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_11BigintEnumTINS1_12EnumVariableILm1EEEEELb0EEEEEEJSK_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!395 = distinct !{!395, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions15EnumKeyFunctionINS1_4exec10VectorExecESt10shared_ptrIKNS1_14BigintEnumTypeEEEES7_NS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_11BigintEnumTINS1_12EnumVariableILm1EEEEELb0EEEEEEJSK_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!396 = !{!397, !397, i64 0}
!397 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions15EnumKeyFunctionINS0_4exec10VectorExecESt10shared_ptrIKNS0_14BigintEnumTypeEEEES6_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_11BigintEnumTINS0_12EnumVariableILm1EEEEELb0EEEEEEJSJ_EEE", !11, i64 0}
!398 = !{!399, !11, i64 0}
!399 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !11, i64 0}
!400 = !{!401, !402, i64 8}
!401 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !402, i64 0, !402, i64 8, !402, i64 16}
!402 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !11, i64 0}
!403 = !{!401, !402, i64 0}
!404 = !{!405, !406, i64 0}
!405 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !406, i64 0, !42, i64 8}
!406 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !11, i64 0}
!407 = !{!408, !38, i64 1}
!408 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !38, i64 1}
!409 = !{!410, !150, i64 0}
!410 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!411 = !{!410, !150, i64 16}
!412 = !{!413, !4, i64 24}
!413 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !414, i64 0, !4, i64 24, !4, i64 28, !4, i64 32, !417, i64 36}
!414 = !{!"_ZTSSt6vectorImSaImEE", !415, i64 0}
!415 = !{!"_ZTSSt12_Vector_baseImSaImEE", !416, i64 0}
!416 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !410, i64 0}
!417 = !{!"_ZTSSt8optionalIbE", !418, i64 0}
!418 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !419, i64 0}
!419 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !408, i64 0}
!420 = !{!413, !4, i64 28}
!421 = !{!413, !4, i64 32}
end_hunk_2
