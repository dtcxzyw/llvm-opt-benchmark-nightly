inline.NumInlined: 17609
inline.NumDeleted: 4561
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEE3runERNS1_19TypeAnalysisResultsE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #40
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64: ; preds = %bb.am, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62
  %i.fa = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64
  %i.fc = load i64, ptr %i.w, align 8, !tbaa !28
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.ai
  %.pn14.pn = phi { ptr, i32 } [ %i.eq, %bb.ai ], [ %.pn14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn14, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
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
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %11) #36
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
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #40
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70: ; preds = %bb.ar, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68
  %i.fo = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bf
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70
  %i.fq = load i64, ptr %i.bf, align 8, !tbaa !28
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.an
  %.pn17.pn = phi { ptr, i32 } [ %i.fe, %bb.an ], [ %.pn17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn17, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
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
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.af
  %.pn20.pn = phi { ptr, i32 } [ %i.ei, %bb.af ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn20, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.fy = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !28
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
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
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #36 ; 2 uses
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
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !4574

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
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #36 ; 2 uses
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
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1366

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1366

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1366

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1366

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1366

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !4575, !range !187, !noundef !188
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !4575, !range !187, !noundef !188
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1366

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !4576, !range !187, !noundef !188
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !4576, !range !187, !noundef !188
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1366

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !4577, !range !187, !noundef !188
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !4577, !range !187, !noundef !188
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4578

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !4579
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !4579
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !4579
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !4579
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.187, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !4579
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.187) #41
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
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #12

declare void @_ZN8facebook5velox7HUGEINTEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.1856") align 8) local_unnamed_addr #12

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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #36 ; 2 uses
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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #36 ; 2 uses
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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #36 ; 2 uses
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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #36 ; 2 uses
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
begin_hunk_1_@llvm.cttz.i16
!4375 = !{!4373, !453, i64 16}
!4376 = !{!4373, !11, i64 0}
!4377 = !{!4378}
!4378 = distinct !{!4378, !4379, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSR_ST_SU_: argument 0"}
!4379 = distinct !{!4379, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSR_ST_SU_"}
!4380 = !{!4381}
!4381 = distinct !{!4381, !4382, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_: argument 0"}
!4382 = distinct !{!4382, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNS1_16FlatVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_"}
!4383 = !{!4384}
!4384 = distinct !{!4384, !4385, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_: argument 0"}
!4385 = distinct !{!4385, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_"}
!4386 = !{!4387, !4384}
!4387 = distinct !{!4387, !4388, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE: argument 0"}
!4388 = distinct !{!4388, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE"}
!4389 = !{!4390, !4387, !4384}
!4390 = distinct !{!4390, !4391, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE: argument 0"}
!4391 = distinct !{!4391, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE"}
!4392 = !{!4393}
!4393 = distinct !{!4393, !4394, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4394 = distinct !{!4394, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4395 = !{!4396}
!4396 = distinct !{!4396, !4397, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4397 = distinct !{!4397, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4398 = !{!4399}
!4399 = distinct !{!4399, !4400, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4400 = distinct !{!4400, !"_ZN8facebook5velox6Status2OKEv"}
!4401 = !{!4373, !11, i64 8}
!4402 = distinct !{!4402, !45}
!4403 = !{!4404, !88, i64 0}
!4404 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_NS0_9VarbinaryENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE8applyUdfIZNKSJ_7iterateIJNS3_16FlatVectorReaderIiEENS3_20ConstantVectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_EUlimE_", !88, i64 0, !296, i64 8, !4405, i64 16}
!4405 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_9VarbinaryENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_16FlatVectorReaderIiEENS1_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSI_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_EUlST_E_", !11, i64 0, !11, i64 8, !453, i64 16}
!4406 = !{!4404, !296, i64 8}
!4407 = !{!4405, !453, i64 16}
!4408 = !{!4405, !11, i64 0}
!4409 = !{!4410}
!4410 = distinct !{!4410, !4411, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_16FlatVectorReaderIiEENS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSR_ST_SU_: argument 0"}
!4411 = distinct !{!4411, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_16FlatVectorReaderIiEENS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSR_ST_SU_"}
!4412 = !{!4413}
!4413 = distinct !{!4413, !4414, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_: argument 0"}
!4414 = distinct !{!4414, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_"}
!4415 = !{!4416, !4413}
!4416 = distinct !{!4416, !4417, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_: argument 0"}
!4417 = distinct !{!4417, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_"}
!4418 = !{!4419, !4413}
!4419 = distinct !{!4419, !4420, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE: argument 0"}
!4420 = distinct !{!4420, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE"}
!4421 = !{!4422, !4419, !4413}
!4422 = distinct !{!4422, !4423, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE: argument 0"}
!4423 = distinct !{!4423, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE"}
!4424 = !{!4425}
!4425 = distinct !{!4425, !4426, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4426 = distinct !{!4426, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4427 = !{!4428}
!4428 = distinct !{!4428, !4429, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4429 = distinct !{!4429, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4430 = !{!4431}
!4431 = distinct !{!4431, !4432, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4432 = distinct !{!4432, !"_ZN8facebook5velox6Status2OKEv"}
!4433 = !{!4405, !11, i64 8}
!4434 = distinct !{!4434, !45}
!4435 = !{!4436, !88, i64 0}
!4436 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_NS0_9VarbinaryENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE8applyUdfIZNKSJ_7iterateIJNS3_16FlatVectorReaderIiEENSM_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_EUlimE_", !88, i64 0, !296, i64 8, !4437, i64 16}
!4437 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_9VarbinaryENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_16FlatVectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_", !11, i64 0, !11, i64 8, !453, i64 16}
!4438 = !{!4436, !296, i64 8}
!4439 = !{!4437, !453, i64 16}
!4440 = !{!4437, !11, i64 0}
!4441 = !{!4442}
!4442 = distinct !{!4442, !4443, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_16FlatVectorReaderIiEENSH_ISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSQ_SS_ST_: argument 0"}
!4443 = distinct !{!4443, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_16FlatVectorReaderIiEENSH_ISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSQ_SS_ST_"}
!4444 = !{!4445}
!4445 = distinct !{!4445, !4446, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNSH_ISB_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_: argument 0"}
!4446 = distinct !{!4446, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIiEEJNSH_ISB_EEETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_"}
!4447 = !{!4448, !4445}
!4448 = distinct !{!4448, !4449, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_: argument 0"}
!4449 = distinct !{!4449, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_"}
!4450 = !{!4451, !4448, !4445}
!4451 = distinct !{!4451, !4452, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE: argument 0"}
!4452 = distinct !{!4452, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE"}
!4453 = !{!4454, !4451, !4448, !4445}
!4454 = distinct !{!4454, !4455, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE: argument 0"}
!4455 = distinct !{!4455, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE"}
!4456 = !{!4457}
!4457 = distinct !{!4457, !4458, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4458 = distinct !{!4458, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4459 = !{!4460}
!4460 = distinct !{!4460, !4461, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4461 = distinct !{!4461, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4462 = !{!4463}
!4463 = distinct !{!4463, !4464, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4464 = distinct !{!4464, !"_ZN8facebook5velox6Status2OKEv"}
!4465 = !{!4437, !11, i64 8}
!4466 = distinct !{!4466, !45}
!4467 = !{!4468, !88, i64 0}
!4468 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_NS0_9VarbinaryENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE8applyUdfIZNKSJ_7iterateIJNS3_12VectorReaderIiEENSM_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_EUlimE_", !88, i64 0, !296, i64 8, !4469, i64 16}
!4469 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_9VarbinaryENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_", !11, i64 0, !11, i64 8, !453, i64 16}
!4470 = !{!4468, !296, i64 8}
!4471 = !{!4469, !453, i64 16}
!4472 = !{!4469, !11, i64 0}
!4473 = !{!4474}
!4474 = distinct !{!4474, !4475, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_12VectorReaderIiEENSH_ISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSQ_SS_ST_: argument 0"}
!4475 = distinct !{!4475, !"_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE7iterateIJNS1_12VectorReaderIiEENSH_ISB_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_12StringWriterEbiEEDaSQ_SS_ST_"}
!4476 = !{!4477}
!4477 = distinct !{!4477, !4478, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_: argument 0"}
!4478 = distinct !{!4478, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJiETnNSt9enable_ifIXneT_L_ZNSE_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_12StringWriterERbRT0_DpRKT1_"}
!4479 = !{!4480, !4477}
!4480 = distinct !{!4480, !4481, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE: argument 0"}
!4481 = distinct !{!4481, !"_ZN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE8callImplERNS7_12StringWriterERbRKiRKNS0_10StringViewE"}
!4482 = !{!4483, !4480, !4477}
!4483 = distinct !{!4483, !4484, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE: argument 0"}
!4484 = distinct !{!4484, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callERNS5_12StringWriterEiRKNS0_10StringViewE"}
!4485 = !{!4486}
!4486 = distinct !{!4486, !4487, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4487 = distinct !{!4487, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4488 = !{!4489}
!4489 = distinct !{!4489, !4490, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4490 = distinct !{!4490, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4491 = !{!4492}
!4492 = distinct !{!4492, !4493, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4493 = distinct !{!4493, !"_ZN8facebook5velox6Status2OKEv"}
!4494 = !{!4469, !11, i64 8}
!4495 = distinct !{!4495, !45}
!4496 = !{!4497, !4498, i64 0}
!4497 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJiSF_EEEJiSF_EEELN9__gnu_cxx12_Lock_policyE2EE", !4498, i64 0, !25, i64 8}
!4498 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EEE", !11, i64 0}
!4499 = !{!4500}
!4500 = distinct !{!4500, !4501, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm1EEENSD_ILm5EEEEENS2_15ConstantCheckerIJiSG_EEEJiSG_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSR_: argument 0"}
!4501 = distinct !{!4501, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm1EEENSD_ILm5EEEEENS2_15ConstantCheckerIJiSG_EEEJiSG_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSR_"}
!4502 = !{!4503, !88, i64 8}
!4503 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EEE", !87, i64 0, !88, i64 8, !89, i64 16, !4, i64 32, !92, i64 40, !95, i64 56}
!4504 = !{!4505}
!4505 = distinct !{!4505, !4506, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EE21analyzeSignatureTypesERKSt6vectorINS7_17SignatureVariableESaISJ_EE: argument 0"}
!4506 = distinct !{!4506, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EE21analyzeSignatureTypesERKSt6vectorINS7_17SignatureVariableESaISJ_EE"}
!4507 = !{!4508}
!4508 = distinct !{!4508, !4509, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4509 = distinct !{!4509, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4510 = !{!4511}
!4511 = distinct !{!4511, !4512, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4512 = distinct !{!4512, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4513 = !{!4514}
!4514 = distinct !{!4514, !4515, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4515 = distinct !{!4515, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4516 = !{!4514, !4511, !4508}
!4517 = !{!4514, !4511, !4508, !4505}
!4518 = !{!4519}
!4519 = distinct !{!4519, !4520, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4520 = distinct !{!4520, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4521 = !{!4522}
!4522 = distinct !{!4522, !4523, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4523 = distinct !{!4523, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4524 = !{!4525}
!4525 = distinct !{!4525, !4526, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4526 = distinct !{!4526, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4527 = !{!4525, !4522, !4519}
!4528 = !{!4525, !4522, !4519, !4505}
!4529 = !{!4530}
!4530 = distinct !{!4530, !4531, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4531 = distinct !{!4531, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4532 = !{!4533}
!4533 = distinct !{!4533, !4534, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4534 = distinct !{!4534, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4535 = !{!4536}
!4536 = distinct !{!4536, !4537, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4537 = distinct !{!4537, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4538 = !{!4536, !4533, !4530}
!4539 = !{!4536, !4533, !4530, !4505}
!4540 = !{!4541, !4505}
!4541 = distinct !{!4541, !4542, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4542 = distinct !{!4542, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4543 = !{!4541}
!4544 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4545 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4546 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4547 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4548 = !{!4503, !4, i64 32}
!4549 = distinct !{null, null, null, null, null, null, null, null, null, null}
!4550 = !{!4498, !4498, i64 0}
!4551 = distinct !{null, null}
!4552 = !{!4553}
!4553 = distinct !{!4553, !4554, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EE10CreateTypeISE_E6createERKSt10shared_ptrINS7_17FunctionSignatureEE: argument 0"}
!4554 = distinct !{!4554, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EE10CreateTypeISE_E6createERKSt10shared_ptrINS7_17FunctionSignatureEE"}
!4555 = distinct !{!4555, !45}
!4556 = !{!4557}
!4557 = distinct !{!4557, !4558, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4558 = distinct !{!4558, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4559 = !{!4560, !4562}
!4560 = distinct !{!4560, !4561, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4561 = distinct !{!4561, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4562 = distinct !{!4562, !4563, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!4563 = distinct !{!4563, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!4564 = !{!4565, !4567}
!4565 = distinct !{!4565, !4566, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4566 = distinct !{!4566, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4567 = distinct !{!4567, !4568, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!4568 = distinct !{!4568, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!4569 = !{!4570}
!4570 = distinct !{!4570, !4571, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4571 = distinct !{!4571, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4572 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4573 = distinct !{null, null, null}
!4574 = distinct !{!4574, !45}
!4575 = !{!165, !88, i64 65}
!4576 = !{!165, !88, i64 66}
!4577 = !{!165, !88, i64 67}
!4578 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!4579 = !{!4580}
!4580 = distinct !{!4580, !4581, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4581 = distinct !{!4581, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4582 = !{!4583}
!4583 = distinct !{!4583, !4584, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESH_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSK_ILm5EEEEENS2_15ConstantCheckerIJiSN_EEEJiSN_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1B_E4typeEOS1C_DpOS1D_: argument 0"}
!4584 = distinct !{!4584, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESH_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSK_ILm5EEEEENS2_15ConstantCheckerIJiSN_EEEJiSN_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISY_EERKSS_INS3_17SignatureVariableESaIS13_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1B_E4typeEOS1C_DpOS1D_"}
!4585 = !{!4586, !4588, !4590, !4583}
!4586 = distinct !{!4586, !4587, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS2_10VectorExecEEESA_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSD_ILm5EEEEENS1_15ConstantCheckerIJiSG_EEEJiSG_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4587 = distinct !{!4587, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS2_10VectorExecEEESA_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSD_ILm5EEEEENS1_15ConstantCheckerIJiSG_EEEJiSG_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4588 = distinct !{!4588, !4589, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJiSH_EEEJiSH_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS1_17SignatureVariableESaISX_EEbENKUlvE_clEv: argument 0"}
!4589 = distinct !{!4589, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJiSH_EEEJiSH_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS1_17SignatureVariableESaISX_EEbENKUlvE_clEv"}
!4590 = distinct !{!4590, !4591, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESB_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSE_ILm5EEEEENS2_15ConstantCheckerIJiSH_EEEJiSH_EEEEESt14default_deleteISL_EERZNS3_22SimpleFunctionRegistry16registerFunctionISL_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!4591 = distinct !{!4591, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESB_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSE_ILm5EEEEENS2_15ConstantCheckerIJiSH_EEEJiSH_EEEEESt14default_deleteISL_EERZNS3_22SimpleFunctionRegistry16registerFunctionISL_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!4592 = !{!4593}
!4593 = distinct !{!4593, !4594, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS2_10VectorExecEEESA_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSD_ILm5EEEEENS1_15ConstantCheckerIJiSG_EEEJiSG_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISP_EERKNS4_11QueryConfigERKSL_ISM_INS1_10BaseVectorEESaISY_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4594 = distinct !{!4594, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS2_10VectorExecEEESA_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSD_ILm5EEEEENS1_15ConstantCheckerIJiSG_EEEJiSG_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISP_EERKNS4_11QueryConfigERKSL_ISM_INS1_10BaseVectorEESaISY_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4595 = !{!4596}
!4596 = distinct !{!4596, !4597, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJiSF_EEEJiSF_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4597 = distinct !{!4597, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJiSF_EEEJiSF_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4598 = !{!4596, !4593}
!4599 = !{!4600, !4600, i64 0}
!4600 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EEE", !11, i64 0}
!4601 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEED2Ev}
!4602 = !{!4603, !449, i64 0}
!4603 = !{!"_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE12ApplyContextE", !449, i64 0, !4604, i64 8, !4605, i64 16, !453, i64 48, !88, i64 56, !88, i64 57}
!4604 = !{!"p1 _ZTSN8facebook5velox10FlatVectorInEE", !11, i64 0}
!4605 = !{!"_ZTSN8facebook5velox4exec12VectorWriterINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEvEE", !452, i64 0, !4604, i64 16, !4606, i64 24}
!4606 = !{!"p1 __int128", !11, i64 0}
!4607 = !{!4603, !88, i64 56}
!4608 = !{!4603, !88, i64 57}
!4609 = !{!4603, !4604, i64 8}
!4610 = !{!4611, !4606, i64 184}
!4611 = !{!"_ZTSN8facebook5velox10FlatVectorInEE", !4612, i64 0, !432, i64 176, !4606, i64 184, !507, i64 192, !512, i64 216}
!4612 = !{!"_ZTSN8facebook5velox12SimpleVectorInEE", !429, i64 0, !498, i64 94, !5, i64 96, !4, i64 100, !4613, i64 112}
!4613 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsInEE", !4614, i64 0, !4614, i64 32}
!4614 = !{!"_ZTSSt8optionalInE", !4615, i64 0}
!4615 = !{!"_ZTSSt14_Optional_baseInLb1ELb1EE", !4616, i64 0}
!4616 = !{!"_ZTSSt17_Optional_payloadInLb1ELb1ELb1EE", !4617, i64 0}
!4617 = !{!"_ZTSSt22_Optional_payload_baseInE", !5, i64 0, !88, i64 16}
!4618 = !{!4605, !4604, i64 16}
!4619 = !{!4605, !4606, i64 24}
!4620 = !{!4603, !453, i64 48}
!4621 = !{!4603, !4606, i64 40}
!4622 = !{!4606, !4606, i64 0}
!4623 = !{!4624, !4624, i64 0}
!4624 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE12ApplyContextE", !11, i64 0}
!4625 = !{!4626, !4626, i64 0}
!4626 = !{!"p2 __int128", !178, i64 0}
!4627 = !{!4628, !584, i64 8}
!4628 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE7iterateIJNS1_12VectorReaderIiEENSL_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_", !4629, i64 0, !584, i64 8, !4630, i64 16, !4624, i64 24, !11, i64 32}
!4629 = !{!"p1 _ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEEE", !11, i64 0}
!4630 = !{!"p1 _ZTSN8facebook5velox4exec12VectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !11, i64 0}
!4631 = !{!4628, !4630, i64 16}
!4632 = !{!4633, !548, i64 0}
!4633 = !{!"_ZTSN8facebook5velox4exec12VectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !548, i64 0}
!4634 = !{!4635}
!4635 = distinct !{!4635, !4636, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4636 = distinct !{!4636, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4637 = !{!4638, !4635}
!4638 = distinct !{!4638, !4639, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_: argument 0"}
!4639 = distinct !{!4639, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_"}
!4640 = !{!4641}
!4641 = distinct !{!4641, !4642, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4642 = distinct !{!4642, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4643 = !{!4644}
!4644 = distinct !{!4644, !4645, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4645 = distinct !{!4645, !"_ZN8facebook5velox6Status2OKEv"}
!4646 = !{!4628, !4624, i64 24}
!4647 = !{!4628, !11, i64 32}
!4648 = !{!4649, !4626, i64 16}
!4649 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE7iterateIJNS1_12VectorReaderIiEENSL_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_bT0_E_", !4624, i64 0, !569, i64 8, !4626, i64 16}
!4650 = !{!4651, !4651, i64 0}
!4651 = !{!"__int128", !5, i64 0}
!4652 = distinct !{!4652, !45}
!4653 = !{!4654}
!4654 = distinct !{!4654, !4655, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4655 = distinct !{!4655, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4656 = !{!4657, !4654}
!4657 = distinct !{!4657, !4658, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_: argument 0"}
!4658 = distinct !{!4658, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_"}
!4659 = !{!4660}
!4660 = distinct !{!4660, !4661, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4661 = distinct !{!4661, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4662 = !{!4663}
!4663 = distinct !{!4663, !4664, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4664 = distinct !{!4664, !"_ZN8facebook5velox6Status2OKEv"}
!4665 = distinct !{!4665, !45}
!4666 = !{!4667}
!4667 = distinct !{!4667, !4668, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4668 = distinct !{!4668, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4669 = !{!4670, !4667}
!4670 = distinct !{!4670, !4671, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_: argument 0"}
!4671 = distinct !{!4671, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_"}
!4672 = !{!4673}
!4673 = distinct !{!4673, !4674, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4674 = distinct !{!4674, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4675 = !{!4676}
!4676 = distinct !{!4676, !4677, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_: argument 0"}
!4677 = distinct !{!4677, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_"}
!4678 = !{!4679, !4676}
!4679 = distinct !{!4679, !4680, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!4680 = distinct !{!4680, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!4681 = !{!4682}
!4682 = distinct !{!4682, !4683, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4683 = distinct !{!4683, !"_ZN8facebook5velox6Status2OKEv"}
!4684 = distinct !{!4684, !45}
!4685 = distinct !{!4685, !45}
!4686 = !{!4687}
!4687 = distinct !{!4687, !4688, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4688 = distinct !{!4688, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4689 = !{!4617, !88, i64 16}
!4690 = !{!4691}
!4691 = distinct !{!4691, !4692, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4692 = distinct !{!4692, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4693 = !{!4694}
!4694 = distinct !{!4694, !4695, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4695 = distinct !{!4695, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4696 = !{!4697}
!4697 = distinct !{!4697, !4698, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4698 = distinct !{!4698, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4699 = !{!4700}
!4700 = distinct !{!4700, !4701, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4701 = distinct !{!4701, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4702 = !{!4703}
!4703 = distinct !{!4703, !4704, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!4704 = distinct !{!4704, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!4705 = distinct !{!4705, !45}
!4706 = !{!4707}
!4707 = distinct !{!4707, !4708, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4708 = distinct !{!4708, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4709 = !{!4710}
!4710 = distinct !{!4710, !4711, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4711 = distinct !{!4711, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4712 = !{!4713}
!4713 = distinct !{!4713, !4714, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4714 = distinct !{!4714, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4715 = !{!4716}
!4716 = distinct !{!4716, !4717, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4717 = distinct !{!4717, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4718 = !{!4719}
!4719 = distinct !{!4719, !4720, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!4720 = distinct !{!4720, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!4721 = !{!4722, !88, i64 224}
!4722 = !{!"_ZTSN8facebook5velox14ConstantVectorInEE", !4612, i64 0, !527, i64 176, !4, i64 192, !432, i64 200, !4651, i64 208, !88, i64 224, !88, i64 225, !528, i64 232}
!4723 = !{!4724, !857, i64 8}
!4724 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENSL_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_", !4629, i64 0, !857, i64 8, !4725, i64 16, !4624, i64 24, !11, i64 32}
!4725 = !{!"p1 _ZTSN8facebook5velox4exec20ConstantVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEE", !11, i64 0}
!4726 = !{!4724, !4725, i64 16}
!4727 = !{i64 16}
!4728 = !{!4729}
!4729 = distinct !{!4729, !4730, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISF_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4730 = distinct !{!4730, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISF_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4731 = !{!4732}
!4732 = distinct !{!4732, !4733, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4733 = distinct !{!4733, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4734 = !{!4735}
!4735 = distinct !{!4735, !4736, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_: argument 0"}
!4736 = distinct !{!4736, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_"}
!4737 = !{!4738}
!4738 = distinct !{!4738, !4739, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4739 = distinct !{!4739, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4740 = !{!4741}
!4741 = distinct !{!4741, !4742, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4742 = distinct !{!4742, !"_ZN8facebook5velox6Status2OKEv"}
!4743 = !{!4724, !4624, i64 24}
!4744 = !{!4724, !11, i64 32}
!4745 = !{!4746, !4626, i64 16}
!4746 = !{!"_ZTSZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE7iterateIJNS1_20ConstantVectorReaderIiEENSL_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_bT0_E_", !4624, i64 0, !569, i64 8, !4626, i64 16}
!4747 = distinct !{!4747, !45}
!4748 = !{!4749}
!4749 = distinct !{!4749, !4750, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISF_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4750 = distinct !{!4750, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISF_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4751 = !{!4752}
!4752 = distinct !{!4752, !4753, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4753 = distinct !{!4753, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4754 = !{!4755}
!4755 = distinct !{!4755, !4756, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_: argument 0"}
!4756 = distinct !{!4756, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_"}
!4757 = !{!4758}
!4758 = distinct !{!4758, !4759, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4759 = distinct !{!4759, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4760 = !{!4761}
!4761 = distinct !{!4761, !4762, !"_ZN8facebook5velox6Status2OKEv: argument 0"}
!4762 = distinct !{!4762, !"_ZN8facebook5velox6Status2OKEv"}
!4763 = distinct !{!4763, !45}
!4764 = !{!4765}
!4765 = distinct !{!4765, !4766, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISF_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4766 = distinct !{!4766, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIiEEJNSL_ISF_EEETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4767 = !{!4768}
!4768 = distinct !{!4768, !4769, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4769 = distinct !{!4769, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderISF_EEJiETnNSt9enable_ifIXneT_L_ZNSI_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4770 = !{!4771}
!4771 = distinct !{!4771, !4772, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_: argument 0"}
!4772 = distinct !{!4772, !"_ZN8facebook5velox9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEE4callInEENS0_6StatusERT_iSA_"}
!4773 = !{!4774}
!4774 = distinct !{!4774, !4775, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4775 = distinct !{!4775, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4776 = !{!4777}
!4777 = distinct !{!4777, !4778, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_: argument 0"}
!4778 = distinct !{!4778, !"_ZN8facebook5velox6Status9UserErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_"}
!4779 = !{!4780, !4777}
!4780 = distinct !{!4780, !4781, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!4781 = distinct !{!4781, !"_ZN8facebook5velox6Status8fromArgsIJEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
end_hunk_1
