inline.NumInlined: 16903
inline.NumDeleted: 4464
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEE3runERNS1_19TypeAnalysisResultsE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #35
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64: ; preds = %bb.am, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62
  %i.fa = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64
  %i.fc = load i64, ptr %i.w, align 8, !tbaa !28
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.ai
  %.pn14.pn = phi { ptr, i32 } [ %i.eq, %bb.ai ], [ %.pn14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn14, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.at

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i34, %.noexc6.i35, %.noexc.i36
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.ao:                                            ; preds = %bb.o
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.p
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %11) #33
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn17 = phi { ptr, i32 } [ %i.fg, %bb.ap ], [ %i.ff, %bb.ao ] ; 2 uses
  %i.fh = load i8, ptr %i.br, align 8, !tbaa !280, !range !187, !noundef !188
  %i.fi = trunc nuw i8 %i.fh to i1
  store i8 0, ptr %i.br, align 8, !tbaa !280
  br i1 %i.fi, label %bb.ar, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70

bb.ar:                                            ; preds = %bb.aq
  %i.fj = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68: ; preds = %bb.ar
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !28
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #35
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70: ; preds = %bb.ar, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68
  %i.fo = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bf
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70
  %i.fq = load i64, ptr %i.bf, align 8, !tbaa !28
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.an
  %.pn17.pn = phi { ptr, i32 } [ %i.fe, %bb.an ], [ %.pn17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn17, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn20 = phi { ptr, i32 } [ %i.fs, %bb.as ], [ %.pn17.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn14.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  %i.ft = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.at
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !28
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.af
  %.pn20.pn = phi { ptr, i32 } [ %i.ei, %bb.af ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn20, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.fy = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !28
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
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
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !4145

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
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !164
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !164
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !16  ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4146

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4146

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4146

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4146

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4146

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !4147, !range !187, !noundef !188
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !4147, !range !187, !noundef !188
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4146

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !4148, !range !187, !noundef !188
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !4148, !range !187, !noundef !188
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4146

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !4149, !range !187, !noundef !188
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !4149, !range !187, !noundef !188
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4150

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !4151
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !4151
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !4151
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !4151
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.186, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !4151
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.186) #36
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
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !28
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #12

declare void @_ZN8facebook5velox7HUGEINTEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.1862") align 8) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !235

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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #33 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !235

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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #33 ; 2 uses
  %.not.i.i.i3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

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
end_hunk_0
begin_hunk_1_@llvm.smin.i32
!3946 = distinct !{!3946, !3947, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!3947 = distinct !{!3947, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!3948 = !{!3949}
!3949 = distinct !{!3949, !3950, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!3950 = distinct !{!3950, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!3951 = !{!3952}
!3952 = distinct !{!3952, !3953, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!3953 = distinct !{!3953, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!3954 = !{!3955}
!3955 = distinct !{!3955, !3956, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!3956 = distinct !{!3956, !"_ZN8facebook5velox6Status2OKEv"}
!3957 = distinct !{!3957, !45}
!3958 = !{!3959, !88, i64 0}
!3959 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS3_10VectorExecEEESD_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSG_EEEE7iterateIJNS3_20ConstantVectorReaderIiEENS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_EUlimE_", !88, i64 0, !296, i64 8, !3960, i64 16}
!3960 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSE_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENS1_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_", !11, i64 0, !11, i64 8, !451, i64 16}
!3961 = !{!3959, !296, i64 8}
!3962 = !{!3960, !451, i64 16}
!3963 = !{!3960, !11, i64 0}
!3964 = !{!3965}
!3965 = distinct !{!3965, !3966, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISC_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!3966 = distinct !{!3966, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISC_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!3967 = !{!3968}
!3968 = distinct !{!3968, !3969, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!3969 = distinct !{!3969, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!3970 = !{!3971, !3968}
!3971 = distinct !{!3971, !3972, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE: argument 0"}
!3972 = distinct !{!3972, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE"}
!3973 = !{!3974}
!3974 = distinct !{!3974, !3975, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!3975 = distinct !{!3975, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!3976 = !{!3977}
!3977 = distinct !{!3977, !3978, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!3978 = distinct !{!3978, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!3979 = !{!3980}
!3980 = distinct !{!3980, !3981, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!3981 = distinct !{!3981, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!3982 = !{!3983}
!3983 = distinct !{!3983, !3984, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!3984 = distinct !{!3984, !"_ZN8facebook5velox6Status2OKEv"}
!3985 = distinct !{!3985, !45}
!3986 = !{!3987, !88, i64 0}
!3987 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS3_10VectorExecEEESD_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSG_EEEE7iterateIJNS3_16FlatVectorReaderIiEENS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_EUlimE_", !88, i64 0, !296, i64 8, !3988, i64 16}
!3988 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSE_EEEE7iterateIJNS1_16FlatVectorReaderIiEENS1_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_", !11, i64 0, !11, i64 8, !451, i64 16}
!3989 = !{!3987, !296, i64 8}
!3990 = !{!3988, !451, i64 16}
!3991 = !{!3988, !11, i64 0}
!3992 = !{!3993}
!3993 = distinct !{!3993, !3994, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNS1_20ConstantVectorReaderISC_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!3994 = distinct !{!3994, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNS1_20ConstantVectorReaderISC_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!3995 = !{!3996, !3993}
!3996 = distinct !{!3996, !3997, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!3997 = distinct !{!3997, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!3998 = !{!3999, !3993}
!3999 = distinct !{!3999, !4000, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE: argument 0"}
!4000 = distinct !{!4000, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE"}
!4001 = !{!4002}
!4002 = distinct !{!4002, !4003, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4003 = distinct !{!4003, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4004 = !{!4005}
!4005 = distinct !{!4005, !4006, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4006 = distinct !{!4006, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4007 = !{!4008}
!4008 = distinct !{!4008, !4009, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!4009 = distinct !{!4009, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!4010 = !{!4011}
!4011 = distinct !{!4011, !4012, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4012 = distinct !{!4012, !"_ZN8facebook5velox6Status2OKEv"}
!4013 = distinct !{!4013, !45}
!4014 = !{!4015, !88, i64 0}
!4015 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS3_10VectorExecEEESD_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSG_EEEE7iterateIJNS3_16FlatVectorReaderIiEENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_", !88, i64 0, !296, i64 8, !4016, i64 16}
!4016 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSE_EEEE7iterateIJNS1_16FlatVectorReaderIiEENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_", !11, i64 0, !11, i64 8, !451, i64 16}
!4017 = !{!4015, !296, i64 8}
!4018 = !{!4016, !451, i64 16}
!4019 = !{!4016, !11, i64 0}
!4020 = !{!4021}
!4021 = distinct !{!4021, !4022, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNSH_ISC_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4022 = distinct !{!4022, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNSH_ISC_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4023 = !{!4024, !4021}
!4024 = distinct !{!4024, !4025, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4025 = distinct !{!4025, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4026 = !{!4027, !4024, !4021}
!4027 = distinct !{!4027, !4028, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE: argument 0"}
!4028 = distinct !{!4028, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE"}
!4029 = !{!4030}
!4030 = distinct !{!4030, !4031, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4031 = distinct !{!4031, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4032 = !{!4033}
!4033 = distinct !{!4033, !4034, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4034 = distinct !{!4034, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4035 = !{!4036}
!4036 = distinct !{!4036, !4037, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!4037 = distinct !{!4037, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!4038 = !{!4039}
!4039 = distinct !{!4039, !4040, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4040 = distinct !{!4040, !"_ZN8facebook5velox6Status2OKEv"}
!4041 = distinct !{!4041, !45}
!4042 = !{!4043, !88, i64 0}
!4043 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS3_10VectorExecEEESD_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSG_EEEE7iterateIJNS3_12VectorReaderIiEENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_", !88, i64 0, !296, i64 8, !4044, i64 16}
!4044 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSE_EEEE7iterateIJNS1_12VectorReaderIiEENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_", !11, i64 0, !11, i64 8, !451, i64 16}
!4045 = !{!4043, !296, i64 8}
!4046 = !{!4044, !451, i64 16}
!4047 = !{!4044, !11, i64 0}
!4048 = !{!4049}
!4049 = distinct !{!4049, !4050, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4050 = distinct !{!4050, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_114BucketFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_9TimestampEEEEJiSC_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISC_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4051 = !{!4052, !4049}
!4052 = distinct !{!4052, !4053, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE: argument 0"}
!4053 = distinct !{!4053, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_114BucketFunctionINS0_4exec10VectorExecEE4callERiiRKNS0_9TimestampE"}
!4054 = !{!4055}
!4055 = distinct !{!4055, !4056, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4056 = distinct !{!4056, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4057 = !{!4058}
!4058 = distinct !{!4058, !4059, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4059 = distinct !{!4059, !"_ZN8facebook5velox12errorMessageIJlmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4060 = !{!4061}
!4061 = distinct !{!4061, !4062, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!4062 = distinct !{!4062, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKmELi2ELi0ELy67EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!4063 = !{!4064}
!4064 = distinct !{!4064, !4065, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4065 = distinct !{!4065, !"_ZN8facebook5velox6Status2OKEv"}
!4066 = distinct !{!4066, !45}
!4067 = !{!4068, !4069, i64 0}
!4068 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJiNS1_11LongDecimalINS1_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEELN9__gnu_cxx12_Lock_policyE2EE", !4069, i64 0, !25, i64 8}
!4069 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEEEEEJiSF_EEE", !11, i64 0}
!4070 = !{!4071}
!4071 = distinct !{!4071, !4072, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS2_4exec10VectorExecEEEiNS2_15ConstantCheckerIJiNS2_11LongDecimalINS2_15IntegerVariableILm1EEENSE_ILm5EEEEEEEEJiSH_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSR_: argument 0"}
!4072 = distinct !{!4072, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS2_4exec10VectorExecEEEiNS2_15ConstantCheckerIJiNS2_11LongDecimalINS2_15IntegerVariableILm1EEENSE_ILm5EEEEEEEEJiSH_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSR_"}
!4073 = !{!4074, !88, i64 8}
!4074 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEEEEEJiSF_EEE", !87, i64 0, !88, i64 8, !89, i64 16, !4, i64 32, !92, i64 40, !95, i64 56}
!4075 = !{!4076}
!4076 = distinct !{!4076, !4077, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEEEEEJiSF_EE21analyzeSignatureTypesERKSt6vectorINS7_17SignatureVariableESaISJ_EE: argument 0"}
!4077 = distinct !{!4077, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEEEEEJiSF_EE21analyzeSignatureTypesERKSt6vectorINS7_17SignatureVariableESaISJ_EE"}
!4078 = !{!4079}
!4079 = distinct !{!4079, !4080, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4080 = distinct !{!4080, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4081 = !{!4082}
!4082 = distinct !{!4082, !4083, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4083 = distinct !{!4083, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4084 = !{!4085}
!4085 = distinct !{!4085, !4086, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4086 = distinct !{!4086, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4087 = !{!4085, !4082, !4079}
!4088 = !{!4085, !4082, !4079, !4076}
!4089 = !{!4090}
!4090 = distinct !{!4090, !4091, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4091 = distinct !{!4091, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4092 = !{!4093}
!4093 = distinct !{!4093, !4094, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4094 = distinct !{!4094, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4095 = !{!4096}
!4096 = distinct !{!4096, !4097, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4097 = distinct !{!4097, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4098 = !{!4096, !4093, !4090}
!4099 = !{!4096, !4093, !4090, !4076}
!4100 = !{!4101}
!4101 = distinct !{!4101, !4102, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4102 = distinct !{!4102, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4103 = !{!4104}
!4104 = distinct !{!4104, !4105, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4105 = distinct !{!4105, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4106 = !{!4107}
!4107 = distinct !{!4107, !4108, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4108 = distinct !{!4108, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4109 = !{!4107, !4104, !4101}
!4110 = !{!4107, !4104, !4101, !4076}
!4111 = !{!4112, !4076}
!4112 = distinct !{!4112, !4113, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4113 = distinct !{!4113, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4114 = !{!4112}
!4115 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4116 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4117 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4118 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4119 = !{!4074, !4, i64 32}
!4120 = distinct !{null, null, null, null, null, null, null, null, null, null}
!4121 = !{!4069, !4069, i64 0}
!4122 = distinct !{null, null}
!4123 = !{!4124}
!4124 = distinct !{!4124, !4125, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEEEEEJiSF_EE10CreateTypeIiE6createERKSt10shared_ptrINS7_17FunctionSignatureEE: argument 0"}
!4125 = distinct !{!4125, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEEEEEJiSF_EE10CreateTypeIiE6createERKSt10shared_ptrINS7_17FunctionSignatureEE"}
!4126 = distinct !{!4126, !45}
!4127 = !{!4128}
!4128 = distinct !{!4128, !4129, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4129 = distinct !{!4129, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4130 = !{!4131, !4133}
!4131 = distinct !{!4131, !4132, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4132 = distinct !{!4132, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4133 = distinct !{!4133, !4134, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!4134 = distinct !{!4134, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!4135 = !{!4136, !4138}
!4136 = distinct !{!4136, !4137, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4137 = distinct !{!4137, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4138 = distinct !{!4138, !4139, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!4139 = distinct !{!4139, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!4140 = !{!4141}
!4141 = distinct !{!4141, !4142, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4142 = distinct !{!4142, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4143 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4144 = distinct !{null, null, null}
!4145 = distinct !{!4145, !45}
!4146 = !{!"branch_weights", i32 2146410443, i32 1073205}
!4147 = !{!165, !88, i64 65}
!4148 = !{!165, !88, i64 66}
!4149 = !{!165, !88, i64 67}
!4150 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!4151 = !{!4152}
!4152 = distinct !{!4152, !4153, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4153 = distinct !{!4153, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4154 = !{!4155}
!4155 = distinct !{!4155, !4156, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS3_10VectorExecEEESH_iNS2_15ConstantCheckerIJiNS2_11LongDecimalINS2_15IntegerVariableILm1EEENSL_ILm5EEEEEEEEJiSO_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1B_E4typeEOS1C_DpOS1D_: argument 0"}
!4156 = distinct !{!4156, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS3_10VectorExecEEESH_iNS2_15ConstantCheckerIJiNS2_11LongDecimalINS2_15IntegerVariableILm1EEENSL_ILm5EEEEEEEEJiSO_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1B_E4typeEOS1C_DpOS1D_"}
!4157 = !{!4158, !4160, !4162, !4155}
!4158 = distinct !{!4158, !4159, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS2_10VectorExecEEESA_iNS1_15ConstantCheckerIJiNS1_11LongDecimalINS1_15IntegerVariableILm1EEENSE_ILm5EEEEEEEEJiSH_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4159 = distinct !{!4159, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS2_10VectorExecEEESA_iNS1_15ConstantCheckerIJiNS1_11LongDecimalINS1_15IntegerVariableILm1EEENSE_ILm5EEEEEEEEJiSH_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4160 = distinct !{!4160, !4161, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEEEEEJiSI_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS1_17SignatureVariableESaISX_EEbENKUlvE_clEv: argument 0"}
!4161 = distinct !{!4161, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEEEEEJiSI_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS1_17SignatureVariableESaISX_EEbENKUlvE_clEv"}
!4162 = distinct !{!4162, !4163, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS3_10VectorExecEEESB_iNS2_15ConstantCheckerIJiNS2_11LongDecimalINS2_15IntegerVariableILm1EEENSF_ILm5EEEEEEEEJiSI_EEEEESt14default_deleteISL_EERZNS3_22SimpleFunctionRegistry16registerFunctionISL_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!4163 = distinct !{!4163, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS3_10VectorExecEEESB_iNS2_15ConstantCheckerIJiNS2_11LongDecimalINS2_15IntegerVariableILm1EEENSF_ILm5EEEEEEEEJiSI_EEEEESt14default_deleteISL_EERZNS3_22SimpleFunctionRegistry16registerFunctionISL_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!4164 = !{!4165}
!4165 = distinct !{!4165, !4166, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS2_10VectorExecEEESA_iNS1_15ConstantCheckerIJiNS1_11LongDecimalINS1_15IntegerVariableILm1EEENSE_ILm5EEEEEEEEJiSH_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISP_EERKNS4_11QueryConfigERKSL_ISM_INS1_10BaseVectorEESaISY_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4166 = distinct !{!4166, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS2_10VectorExecEEESA_iNS1_15ConstantCheckerIJiNS1_11LongDecimalINS1_15IntegerVariableILm1EEENSE_ILm5EEEEEEEEJiSH_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISP_EERKNS4_11QueryConfigERKSL_ISM_INS1_10BaseVectorEESaISY_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4167 = !{!4168, !4168, i64 0}
!4168 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEEES8_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEEEEEJiSF_EEE", !11, i64 0}
!4169 = !{!4170}
!4170 = distinct !{!4170, !4171, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_4exec10VectorExecEEES9_iNS1_15ConstantCheckerIJiNS1_11LongDecimalINS1_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4171 = distinct !{!4171, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_4exec10VectorExecEEES9_iNS1_15ConstantCheckerIJiNS1_11LongDecimalINS1_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4172 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEED2Ev}
!4173 = !{!4174, !446, i64 0}
!4174 = !{!"_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE12ApplyContextE", !446, i64 0, !447, i64 8, !448, i64 16, !451, i64 48, !88, i64 56, !88, i64 57}
!4175 = !{!4174, !88, i64 56}
!4176 = !{!4174, !88, i64 57}
!4177 = !{!4174, !447, i64 8}
!4178 = !{!4174, !451, i64 48}
!4179 = !{!4174, !450, i64 40}
!4180 = !{!4181, !4181, i64 0}
!4181 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE12ApplyContextE", !11, i64 0}
!4182 = !{!4183, !572, i64 8}
!4183 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE7iterateIJNS1_12VectorReaderIiEENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_", !4184, i64 0, !572, i64 8, !4185, i64 16, !4181, i64 24, !11, i64 32}
!4184 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEEE", !11, i64 0}
!4185 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !11, i64 0}
!4186 = !{!4183, !4185, i64 16}
!4187 = !{!4188, !536, i64 0}
!4188 = !{!"_ZTSN8facebook5velox4exec12VectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !536, i64 0}
!4189 = !{!4190}
!4190 = distinct !{!4190, !4191, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4191 = distinct !{!4191, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4192 = !{!4193, !4190}
!4193 = distinct !{!4193, !4194, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4194 = distinct !{!4194, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
!4195 = !{!4196}
!4196 = distinct !{!4196, !4197, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4197 = distinct !{!4197, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4198 = !{!4199}
!4199 = distinct !{!4199, !4200, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4200 = distinct !{!4200, !"_ZN8facebook5velox6Status2OKEv"}
!4201 = !{!4183, !4181, i64 24}
!4202 = !{!4183, !11, i64 32}
!4203 = !{!4204, !559, i64 16}
!4204 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE7iterateIJNS1_12VectorReaderIiEENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_bT0_E_", !4181, i64 0, !557, i64 8, !559, i64 16}
!4205 = distinct !{!4205, !45}
!4206 = !{!4207}
!4207 = distinct !{!4207, !4208, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4208 = distinct !{!4208, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4209 = !{!4210, !4207}
!4210 = distinct !{!4210, !4211, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4211 = distinct !{!4211, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
!4212 = !{!4213}
!4213 = distinct !{!4213, !4214, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4214 = distinct !{!4214, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4215 = !{!4216}
!4216 = distinct !{!4216, !4217, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4217 = distinct !{!4217, !"_ZN8facebook5velox6Status2OKEv"}
!4218 = distinct !{!4218, !45}
!4219 = !{!4220}
!4220 = distinct !{!4220, !4221, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4221 = distinct !{!4221, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4222 = !{!4223, !4220}
!4223 = distinct !{!4223, !4224, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4224 = distinct !{!4224, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
!4225 = !{!4226}
!4226 = distinct !{!4226, !4227, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4227 = distinct !{!4227, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4228 = !{!4229}
!4229 = distinct !{!4229, !4230, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_: argument 0"}
!4230 = distinct !{!4230, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_"}
!4231 = !{!4232, !4229}
!4232 = distinct !{!4232, !4233, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!4233 = distinct !{!4233, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!4234 = !{!4235}
!4235 = distinct !{!4235, !4236, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4236 = distinct !{!4236, !"_ZN8facebook5velox6Status2OKEv"}
!4237 = distinct !{!4237, !45}
!4238 = distinct !{!4238, !45}
!4239 = !{!4240, !88, i64 16}
!4240 = !{!"_ZTSSt22_Optional_payload_baseInE", !5, i64 0, !88, i64 16}
!4241 = !{!4242, !88, i64 224}
!4242 = !{!"_ZTSN8facebook5velox14ConstantVectorInEE", !4243, i64 0, !519, i64 176, !4, i64 192, !429, i64 200, !4248, i64 208, !88, i64 224, !88, i64 225, !520, i64 232}
!4243 = !{!"_ZTSN8facebook5velox12SimpleVectorInEE", !426, i64 0, !496, i64 94, !5, i64 96, !4, i64 100, !4244, i64 112}
!4244 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsInEE", !4245, i64 0, !4245, i64 32}
!4245 = !{!"_ZTSSt8optionalInE", !4246, i64 0}
!4246 = !{!"_ZTSSt14_Optional_baseInLb1ELb1EE", !4247, i64 0}
!4247 = !{!"_ZTSSt17_Optional_payloadInLb1ELb1ELb1EE", !4240, i64 0}
!4248 = !{!"__int128", !5, i64 0}
!4249 = !{!4248, !4248, i64 0}
!4250 = !{!4251, !850, i64 8}
!4251 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_", !4184, i64 0, !850, i64 8, !4252, i64 16, !4181, i64 24, !11, i64 32}
!4252 = !{!"p1 _ZTSN8facebook5velox4exec20ConstantVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !11, i64 0}
!4253 = !{!4251, !4252, i64 16}
!4254 = !{i64 16}
!4255 = !{!4256}
!4256 = distinct !{!4256, !4257, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4257 = distinct !{!4257, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4258 = !{!4259}
!4259 = distinct !{!4259, !4260, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4260 = distinct !{!4260, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4261 = !{!4262}
!4262 = distinct !{!4262, !4263, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4263 = distinct !{!4263, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
!4264 = !{!4265}
!4265 = distinct !{!4265, !4266, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4266 = distinct !{!4266, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4267 = !{!4268}
!4268 = distinct !{!4268, !4269, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4269 = distinct !{!4269, !"_ZN8facebook5velox6Status2OKEv"}
!4270 = !{!4251, !4181, i64 24}
!4271 = !{!4251, !11, i64 32}
!4272 = !{!4273, !559, i64 16}
!4273 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_bT0_E_", !4181, i64 0, !557, i64 8, !559, i64 16}
!4274 = distinct !{!4274, !45}
!4275 = !{!4276}
!4276 = distinct !{!4276, !4277, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4277 = distinct !{!4277, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4278 = !{!4279}
!4279 = distinct !{!4279, !4280, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4280 = distinct !{!4280, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4281 = !{!4282}
!4282 = distinct !{!4282, !4283, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4283 = distinct !{!4283, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
!4284 = !{!4285}
!4285 = distinct !{!4285, !4286, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4286 = distinct !{!4286, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4287 = !{!4288}
!4288 = distinct !{!4288, !4289, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4289 = distinct !{!4289, !"_ZN8facebook5velox6Status2OKEv"}
!4290 = distinct !{!4290, !45}
!4291 = !{!4292}
!4292 = distinct !{!4292, !4293, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4293 = distinct !{!4293, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4294 = !{!4295}
!4295 = distinct !{!4295, !4296, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4296 = distinct !{!4296, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4297 = !{!4298}
!4298 = distinct !{!4298, !4299, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4299 = distinct !{!4299, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
!4300 = !{!4301}
!4301 = distinct !{!4301, !4302, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4302 = distinct !{!4302, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4303 = !{!4304}
!4304 = distinct !{!4304, !4305, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_: argument 0"}
!4305 = distinct !{!4305, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_"}
!4306 = !{!4307, !4304}
!4307 = distinct !{!4307, !4308, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!4308 = distinct !{!4308, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!4309 = !{!4310}
!4310 = distinct !{!4310, !4311, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4311 = distinct !{!4311, !"_ZN8facebook5velox6Status2OKEv"}
!4312 = distinct !{!4312, !45}
!4313 = distinct !{!4313, !45}
!4314 = !{!4315, !4316, i64 184}
!4315 = !{!"_ZTSN8facebook5velox10FlatVectorInEE", !4243, i64 0, !429, i64 176, !4316, i64 184, !501, i64 192, !506, i64 216}
!4316 = !{!"p1 __int128", !11, i64 0}
!4317 = !{!4318, !4316, i64 0}
!4318 = !{!"_ZTSN8facebook5velox4exec16FlatVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !4316, i64 0, !4319, i64 8}
!4319 = !{!"p1 _ZTSN8facebook5velox10FlatVectorInEE", !11, i64 0}
!4320 = !{!4318, !4319, i64 8}
!4321 = !{!4322, !850, i64 8}
!4322 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENS1_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_", !4184, i64 0, !850, i64 8, !4323, i64 16, !4181, i64 24, !11, i64 32}
!4323 = !{!"p1 _ZTSN8facebook5velox4exec16FlatVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !11, i64 0}
!4324 = !{!4322, !4323, i64 16}
!4325 = !{!4326}
!4326 = distinct !{!4326, !4327, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4327 = distinct !{!4327, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4328 = !{!4329}
!4329 = distinct !{!4329, !4330, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4330 = distinct !{!4330, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4331 = !{!4332, !4329}
!4332 = distinct !{!4332, !4333, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4333 = distinct !{!4333, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
!4334 = !{!4335}
!4335 = distinct !{!4335, !4336, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4336 = distinct !{!4336, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4337 = !{!4338}
!4338 = distinct !{!4338, !4339, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4339 = distinct !{!4339, !"_ZN8facebook5velox6Status2OKEv"}
!4340 = !{!4322, !4181, i64 24}
!4341 = !{!4322, !11, i64 32}
!4342 = !{!4343, !559, i64 16}
!4343 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENS1_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_bT0_E_", !4181, i64 0, !557, i64 8, !559, i64 16}
!4344 = distinct !{!4344, !45}
!4345 = !{!4346}
!4346 = distinct !{!4346, !4347, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4347 = distinct !{!4347, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISG_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4348 = !{!4349}
!4349 = distinct !{!4349, !4350, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_: argument 0"}
!4350 = distinct !{!4350, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS1_10VectorExecEEES9_iNS0_15ConstantCheckerIJiNS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEEEEEJiSG_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISG_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRiRbRT0_DpRKT1_"}
!4351 = !{!4352, !4349}
!4352 = distinct !{!4352, !4353, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_: argument 0"}
!4353 = distinct !{!4353, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_121BucketDecimalFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERiiT_"}
end_hunk_1
