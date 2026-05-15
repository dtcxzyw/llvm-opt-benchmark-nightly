inline.NumInlined: 75479
inline.NumDeleted: 20342
begin_hunk_0_@_ZN8facebook5velox4core12TypeAnalysisINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEE3runERNS1_19TypeAnalysisResultsE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #43
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64: ; preds = %bb.am, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62
  %i.fa = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64
  %i.fc = load i64, ptr %i.w, align 8, !tbaa !17
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.ai
  %.pn14.pn = phi { ptr, i32 } [ %i.eq, %bb.ai ], [ %.pn14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn14, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
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
  call void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %11) #37
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn17 = phi { ptr, i32 } [ %i.fg, %bb.ap ], [ %i.ff, %bb.ao ] ; 2 uses
  %i.fh = load i8, ptr %i.br, align 8, !tbaa !485, !range !392, !noundef !393
  %i.fi = trunc nuw i8 %i.fh to i1
  store i8 0, ptr %i.br, align 8, !tbaa !485
  br i1 %i.fi, label %bb.ar, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70

bb.ar:                                            ; preds = %bb.aq
  %i.fj = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68: ; preds = %bb.ar
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !17
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #43
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70: ; preds = %bb.ar, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68
  %i.fo = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bf
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70
  %i.fq = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.an
  %.pn17.pn = phi { ptr, i32 } [ %i.fe, %bb.an ], [ %.pn17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn17, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn20 = phi { ptr, i32 } [ %i.fs, %bb.as ], [ %.pn17.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn14.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  %i.ft = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.at
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.af
  %.pn20.pn = phi { ptr, i32 } [ %i.ei, %bb.af ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn20, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.fy = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !17
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !328  ; 2 uses
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
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !4418

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
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #37 ; 2 uses
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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !369
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !369
  %i.ae = icmp eq i8 %i.ab, %i.ad
  %.pre = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !4419 ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1148

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.pre, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1148

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %.pre)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1148

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1148

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %bcmp.i7.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %i.ap)
  %i.aw = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1148

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !4422, !range !392, !noundef !393
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !4422, !range !392, !noundef !393
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1148

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !4423, !range !392, !noundef !393
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !4423, !range !392, !noundef !393
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !1148

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !4424, !range !392, !noundef !393
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !4424, !range !392, !noundef !393
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread, !prof !4425

_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit8.thread.i, %bb.h, %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !4419
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7, !noalias !4419
  %i.bn = ptrtoint ptr %i.bm to i64
  store i64 %i.bn, ptr %2, align 16, !noalias !4419
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre, ptr %.sroa_idx3.i, align 8, !noalias !4419
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.218, i64 56, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !4419
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults11addVariableEONS0_4exec17SignatureVariableEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.218) #45
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
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !17
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.bo

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec17SignatureVariableeqERKS2_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread
  ret void
}

declare void @_ZN8facebook5velox4exec17SignatureVariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS8_ENS1_13ParameterTypeEbbb(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN8facebook5velox7HUGEINTEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3080") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328  ; 2 uses
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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !440

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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #37 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328  ; 2 uses
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
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !440

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
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #37 ; 2 uses
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
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %i.qu = sext i32 %i.qt to i64
  %.0.off.i.i.i.i.i.i.i.i.i.i.i = add i32 %.065.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not232.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i, 64
  br i1 %.not232.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_12VectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph231.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph231.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.cc
  %i.qv = sext i32 %i.qs to i64
  br label %bb.cd

bb.cd:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_12VectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph231.i.i.i.i.i.i.i.i.i.i.i.i
  %.0226.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qv, %.lr.ph231.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wt, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_12VectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !366
  %i.qw = load ptr, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !tbaa !17746, !nonnull !393, !align !891
  %i.qx = load ptr, ptr %.sroa.526.0..sroa_idx.i.i.i.i, align 8, !tbaa !17750, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37, !noalias !17790
  %i.qy = load ptr, ptr %i.qw, align 8, !tbaa !17754, !noalias !17790, !nonnull !393, !align !891 ; 5 uses
  %i.qz = trunc i64 %.0226.i.i.i.i.i.i.i.i.i.i.i.i to i32 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !783, !noalias !17790
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 58
  %i.rd = load i8, ptr %i.rc, align 2, !tbaa !792, !range !392, !noalias !17790, !noundef !393
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 59
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !793, !range !392, !noalias !17790, !noundef !393
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qy, i64 64
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !794, !noalias !17790
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !795, !noalias !17790
  %sext.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.0226.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.rm = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.rn = getelementptr inbounds i8, ptr %i.rl, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !3, !noalias !17790
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf, %bb.cd
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ro, %bb.cg ], [ %i.rj, %bb.cf ], [ %i.qz, %bb.cd ]
  %i.rp = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.rq = getelementptr inbounds [16 x i8], ptr %i.rb, i64 %i.rp ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rq, align 8, !noalias !17790 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !17790 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %21, align 8, !noalias !17790
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.oq, align 8, !noalias !17790
  %i.rr = load ptr, ptr %i.qx, align 8, !tbaa !3983, !noalias !17793, !nonnull !393, !align !891 ; 5 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !783, !noalias !17793
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 58
  %i.rv = load i8, ptr %i.ru, align 2, !tbaa !792, !range !392, !noalias !17793, !noundef !393
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.rw, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rr, i64 59
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !793, !range !392, !noalias !17793, !noundef !393
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rr, i64 64
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !794, !noalias !17793
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !795, !noalias !17793
  %sext.i60.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.0226.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.sf = ashr exact i64 %sext.i60.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.sg = getelementptr inbounds i8, ptr %i.se, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3, !noalias !17793
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %bb.ci, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i61.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.sh, %bb.cj ], [ %i.sc, %bb.ci ], [ %i.qz, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.si = sext i32 %.0.i.i.i61.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.rt, i64 %i.si
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !366, !noalias !17793 ; 6 uses
  %i.sl = icmp slt i64 %i.sk, 2
  br i1 %i.sl, label %.noexc41.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cm, !prof !45

.noexc41.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37, !noalias !17796
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37, !noalias !17799
  store i64 %i.sk, ptr %13, align 16, !tbaa !17, !alias.scope !17802, !noalias !17799
  store i32 2, ptr %i.pk, align 16, !tbaa !17, !alias.scope !17802, !noalias !17799
  store i32 2, ptr %i.pl, align 16, !tbaa !17, !alias.scope !17802, !noalias !17799
  store i32 36, ptr %i.pm, align 16, !tbaa !17, !alias.scope !17802, !noalias !17799
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %13)
          to label %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.df

.noexc42.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc41.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37, !noalias !17799
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull @.str.249) #45
          to label %bb.ck unwind label %bb.cl, !noalias !17796

bb.ck:                                            ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cl:                                            ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.sn = load ptr, ptr %14, align 8, !tbaa !7, !noalias !17796 ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.pn
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cl
  %i.sp = load i64, ptr %i.pn, align 8, !tbaa !17, !noalias !17796
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #43, !noalias !17796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !17796
  br label %.body45.i.i.i.i.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sr = icmp samesign ugt i64 %i.sk, 36
  br i1 %i.sr, label %.noexc43.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc47.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc43.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37, !noalias !17796
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37, !noalias !17805
  store i64 %i.sk, ptr %12, align 16, !tbaa !17, !alias.scope !17808, !noalias !17805
  store i32 36, ptr %i.pg, align 16, !tbaa !17, !alias.scope !17808, !noalias !17805
  store i32 2, ptr %i.ph, align 16, !tbaa !17, !alias.scope !17808, !noalias !17805
  store i32 36, ptr %i.pi, align 16, !tbaa !17, !alias.scope !17808, !noalias !17805
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %12)
          to label %.noexc44.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.df

.noexc44.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc43.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37, !noalias !17805
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr nonnull @.str.249) #45
          to label %bb.cn unwind label %bb.co, !noalias !17796

bb.cn:                                            ; preds = %.noexc44.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.co:                                            ; preds = %.noexc44.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ss = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.st = load ptr, ptr %15, align 8, !tbaa !7, !noalias !17796 ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.pj
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.co
  %i.sv = load i64, ptr %i.pj, align 8, !tbaa !17, !noalias !17796
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #43, !noalias !17796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !17796
  br label %.body45.i.i.i.i.i.i.i.i.i.i.i.i

.noexc47.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cm
  %i.sx = icmp ult i32 %i.rx, 13                  ; 2 uses
  %i.sy = select i1 %i.sx, ptr %i.or, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.sz = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.rx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc50.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc48.i.i.i.i.i.i.i.i.i.i.i.i

.noexc48.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc47.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ta = load i8, ptr %i.sy, align 1, !tbaa !17, !noalias !17796
  %i.tb = icmp eq i8 %i.ta, 43
  br i1 %i.tb, label %.noexc49.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc50.i.i.i.i.i.i.i.i.i.i.i.i

.noexc49.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc48.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.gep189.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel190.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.sx, ptr %.sroa.gep188.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep189.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.noexc50.i.i.i.i.i.i.i.i.i.i.i.i

.noexc50.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc49.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc48.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc47.i.i.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel190.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc49.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sy, %.noexc48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sy, %.noexc47.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37, !noalias !17796
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sz
  %i.td = trunc nuw nsw i64 %i.sk to i32
  %i.te = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.tc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.td)
          to label %.noexc51.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.df ; 2 uses

.noexc51.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tf = extractvalue { ptr, i32 } %i.te, 0      ; 2 uses
  store ptr %i.tf, ptr %16, align 8, !noalias !17796
  %i.tg = extractvalue { ptr, i32 } %i.te, 1      ; 3 uses
  store i32 %i.tg, ptr %i.os, align 8, !noalias !17796
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.tg, 22
  %.pre76.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %21, align 8, !tbaa !17774, !noalias !17811 ; 8 uses
  %.pre77.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oq, align 8, !noalias !17811 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.noexc52.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre83.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %.noexc53.i.i.i.i.i.i.i.i.i.i.i.i

.noexc52.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i.i.i
  %i.th = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i, 13
  %i.ti = select i1 %i.th, ptr %i.or, ptr %.pre77.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.tj = zext i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj
  %.not209.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tf, %i.tk
  br i1 %.not209.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cw, label %.noexc53.i.i.i.i.i.i.i.i.i.i.i.i, !prof !442

.noexc53.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi84.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre83.i.i.i.i.i.i.i.i.i.i.i, %.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tj, %.noexc52.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37, !noalias !17796
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37, !noalias !17796
  call void @llvm.experimental.noalias.scope.decl(metadata !17811)
  %i.tl = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i, 13
  %i.tm = select i1 %i.tl, ptr %i.or, ptr %.pre77.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.pe, ptr %18, align 8, !tbaa !341, !alias.scope !17811
  %i.tn = icmp eq ptr %i.tm, null
  br i1 %i.tn, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp

.noexc.i52.invoke.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc55.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc53.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i52.cont.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.df

.noexc.i52.cont.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cp:                                            ; preds = %.noexc53.i.i.i.i.i.i.i.i.i.i.i.i
  %i.to = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp
  %i.tp = add nuw nsw i64 %.pre-phi84.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.tq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tp) #44
          to label %.noexc54.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.df ; 2 uses

.noexc54.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.tq, ptr %18, align 8, !tbaa !7, !alias.scope !17811
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i.i.i, ptr %i.pe, align 8, !tbaa !17, !alias.scope !17811
  br label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i.i, %bb.cp
  %i.tr = phi ptr [ %i.tq, %.noexc54.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pe, %bb.cp ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i, label %bb.cr [
    i32 1, label %bb.cq
    i32 0, label %.noexc54.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i
  %i.ts = load i8, ptr %i.or, align 4, !tbaa !17, !noalias !17811
  store i8 %i.ts, ptr %i.tr, align 1, !tbaa !17
  br label %.noexc54.i.i.i.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tr, ptr nonnull align 1 %i.tm, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.noexc54.i.i.i.i.i.i.i.i.i.i.i.i

.noexc54.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i.i.i, ptr %i.pc, align 8, !tbaa !16, !alias.scope !17811
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.tt, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37, !noalias !17814
  store i64 %i.sk, ptr %11, align 16, !tbaa !17, !alias.scope !17817, !noalias !17814
  %i.tu = load ptr, ptr %18, align 8, !tbaa !7, !noalias !17814
  %i.tv = load i64, ptr %i.pc, align 8, !tbaa !16, !noalias !17814
  store ptr %i.tu, ptr %i.pb, align 16, !tbaa !17, !noalias !17814
  store i64 %i.tv, ptr %i.pd, align 8, !tbaa !17, !noalias !17814
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %11)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37, !noalias !17814
  %i.tw = load ptr, ptr %18, align 8, !tbaa !7, !noalias !17796 ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.pe
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cs
  %i.ty = load i64, ptr %i.pe, align 8, !tbaa !17, !noalias !17796
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #43, !noalias !17796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37, !noalias !17796
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr nonnull @.str.244) #45
          to label %bb.ct unwind label %bb.cv, !noalias !17796

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cu:                                            ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ua = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ub = load ptr, ptr %18, align 8, !tbaa !7, !noalias !17796 ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.pe
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu
  %i.ud = load i64, ptr %i.pe, align 8, !tbaa !17, !noalias !17796
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.ue) #43, !noalias !17796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37, !noalias !17796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ug = load ptr, ptr %17, align 8, !tbaa !7, !noalias !17796 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.pf
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv
  %i.ui = load i64, ptr %i.pf, align 8, !tbaa !17, !noalias !17796
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #43, !noalias !17796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ua, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.uf, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37, !noalias !17796
  br label %bb.de

bb.cw:                                            ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.tg, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc55.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit95.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc55.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37, !noalias !17796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !17796
  store i32 34, ptr %i.a, align 4, !tbaa !17781, !noalias !17796
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37, !noalias !17796
  call void @llvm.experimental.noalias.scope.decl(metadata !17820)
  store ptr %i.oz, ptr %20, align 8, !tbaa !341, !alias.scope !17820
  %i.uk = icmp eq ptr %i.ti, null
  br i1 %i.uk, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.noexc55.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ul = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cx
  %i.um = add nuw nsw i64 %i.tj, 1
  %i.un = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.um) #44
          to label %.noexc48.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.df ; 2 uses

.noexc48.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.un, ptr %20, align 8, !tbaa !7, !alias.scope !17820
  store i64 %i.tj, ptr %i.oz, align 8, !tbaa !17, !alias.scope !17820
  br label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc48.i.i.i.i.i.i.i.i.i.i.i, %bb.cx
  %i.uo = phi ptr [ %i.un, %.noexc48.i.i.i.i.i.i.i.i.i.i.i ], [ %i.oz, %bb.cx ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i.i.i, label %bb.cz [
    i32 1, label %bb.cy
    i32 0, label %.noexc56.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i
  %i.up = load i8, ptr %i.or, align 4, !tbaa !17, !noalias !17820
  store i8 %i.up, ptr %i.uo, align 1, !tbaa !17
  br label %.noexc56.i.i.i.i.i.i.i.i.i.i.i.i

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uo, ptr nonnull align 1 %i.ti, i64 %i.tj, i1 false)
  br label %.noexc56.i.i.i.i.i.i.i.i.i.i.i.i

.noexc56.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.tj, ptr %i.ox, align 8, !tbaa !16, !alias.scope !17820
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.tj
  store i8 0, ptr %i.uq, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37, !noalias !17823
  store ptr %i.os, ptr %10, align 16, !tbaa !17, !noalias !17823
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ot, align 8, !tbaa !17, !noalias !17823
  store ptr %i.a, ptr %i.ou, align 16, !tbaa !17, !noalias !17823
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ov, align 8, !tbaa !17, !noalias !17823
  %i.ur = load ptr, ptr %20, align 8, !tbaa !7, !noalias !17823
  %i.us = load i64, ptr %i.ox, align 8, !tbaa !16, !noalias !17823
  store ptr %i.ur, ptr %i.ow, align 16, !tbaa !17, !noalias !17823
  store i64 %i.us, ptr %i.oy, align 8, !tbaa !17, !noalias !17823
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %10)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %.noexc56.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37, !noalias !17823
  %i.ut = load ptr, ptr %20, align 8, !tbaa !7, !noalias !17796 ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.oz
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i.i.i.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
bb.du:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_12VectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.invoke, %_ZN8facebook5velox6StatusD2Ev.exit95.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wt = add nuw i64 %.0226.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.wu = icmp ult i64 %i.wt, %i.qu
  br i1 %i.wu, label %bb.cd, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_12VectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !17826

bb.dv:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_12VectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.015225.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_12VectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015225.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ww = trunc nuw nsw i64 %i.wv to i32
  %i.wx = or disjoint i32 %i.qr, %i.ww            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !366
  %i.wy = sext i32 %i.wx to i64                   ; 3 uses
  %i.wz = load ptr, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !tbaa !17746, !nonnull !393, !align !891
  %i.xa = load ptr, ptr %.sroa.526.0..sroa_idx.i.i.i.i, align 8, !tbaa !17750, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37, !noalias !17827
  %i.xb = load ptr, ptr %i.wz, align 8, !tbaa !17754, !noalias !17827, !nonnull !393, !align !891 ; 5 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !783, !noalias !17827
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 58
  %i.xf = load i8, ptr %i.xe, align 2, !tbaa !792, !range !392, !noalias !17827, !noundef !393
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit110.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xb, i64 59
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !793, !range !392, !noalias !17827, !noundef !393
  %i.xj = trunc nuw i8 %i.xi to i1
  br i1 %i.xj, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xb, i64 64
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !794, !noalias !17827
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit110.i.i.i.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !795, !noalias !17827
  %i.xo = shl nsw i64 %i.wy, 2
  %i.xp = getelementptr inbounds i8, ptr %i.xn, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !3, !noalias !17827
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit110.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit110.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %bb.dv
  %.0.i.i.i104.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.xq, %bb.dy ], [ %i.xl, %bb.dx ], [ %i.wx, %bb.dv ]
  %i.xr = sext i32 %.0.i.i.i104.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.xs = getelementptr inbounds [16 x i8], ptr %i.xd, i64 %i.xr ; 2 uses
  %.sroa.0.0.copyload.i.i105.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xs, align 8, !noalias !17827 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i106.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %.sroa.2.0.copyload.i.i107.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i106.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !17827 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i105.i.i.i.i.i.i.i.i.i.i.i.i, ptr %31, align 8, !noalias !17827
  store ptr %.sroa.2.0.copyload.i.i107.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.po, align 8, !noalias !17827
  %i.xt = load ptr, ptr %i.xa, align 8, !tbaa !3983, !noalias !17830, !nonnull !393, !align !891 ; 5 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !783, !noalias !17830
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 58
  %i.xx = load i8, ptr %i.xw, align 2, !tbaa !792, !range !392, !noalias !17830, !noundef !393
  %i.xy = trunc nuw i8 %i.xx to i1
  %i.xz = trunc i64 %.sroa.0.0.copyload.i.i105.i.i.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.xy, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit113.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit110.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xt, i64 59
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !793, !range !392, !noalias !17830, !noundef !393
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xt, i64 64
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !794, !noalias !17830
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit113.i.i.i.i.i.i.i.i.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !795, !noalias !17830
  %i.yh = shl nsw i64 %i.wy, 2
  %i.yi = getelementptr inbounds i8, ptr %i.yg, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !3, !noalias !17830
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit113.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit113.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit110.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i112.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yj, %bb.eb ], [ %i.ye, %bb.ea ], [ %i.wx, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit110.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.yk = sext i32 %.0.i.i.i112.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.yl = getelementptr inbounds [8 x i8], ptr %i.xv, i64 %i.yk
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !366, !noalias !17830 ; 6 uses
  %i.yn = icmp slt i64 %i.ym, 2
  br i1 %i.yn, label %.noexc20.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ee, !prof !45

.noexc20.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit113.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37, !noalias !17833
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37, !noalias !17836
  store i64 %i.ym, ptr %9, align 16, !tbaa !17, !alias.scope !17839, !noalias !17836
  store i32 2, ptr %i.qi, align 16, !tbaa !17, !alias.scope !17839, !noalias !17836
  store i32 2, ptr %i.qj, align 16, !tbaa !17, !alias.scope !17839, !noalias !17836
  store i32 36, ptr %i.qk, align 16, !tbaa !17, !alias.scope !17839, !noalias !17836
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %9)
          to label %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ex

.noexc21.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc20.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !17836
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr nonnull @.str.249) #45
          to label %bb.ec unwind label %bb.ed, !noalias !17833

bb.ec:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ed:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.yp = load ptr, ptr %24, align 8, !tbaa !7, !noalias !17833 ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.ql
  br i1 %i.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ed
  %i.yr = load i64, ptr %i.ql, align 8, !tbaa !17, !noalias !17833
  %i.ys = add i64 %i.yr, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.ys) #43, !noalias !17833
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37, !noalias !17833
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit113.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yt = icmp samesign ugt i64 %i.ym, 36
  br i1 %i.yt, label %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc22.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37, !noalias !17833
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37, !noalias !17842
  store i64 %i.ym, ptr %8, align 16, !tbaa !17, !alias.scope !17845, !noalias !17842
  store i32 36, ptr %i.qe, align 16, !tbaa !17, !alias.scope !17845, !noalias !17842
  store i32 2, ptr %i.qf, align 16, !tbaa !17, !alias.scope !17845, !noalias !17842
  store i32 36, ptr %i.qg, align 16, !tbaa !17, !alias.scope !17845, !noalias !17842
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %8)
          to label %.noexc23.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ex

.noexc23.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !17842
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr nonnull @.str.249) #45
          to label %bb.ef unwind label %bb.eg, !noalias !17833

bb.ef:                                            ; preds = %.noexc23.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.eg:                                            ; preds = %.noexc23.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.yv = load ptr, ptr %25, align 8, !tbaa !7, !noalias !17833 ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.qh
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eg
  %i.yx = load i64, ptr %i.qh, align 8, !tbaa !17, !noalias !17833
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #43, !noalias !17833
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37, !noalias !17833
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.noexc26.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ee
  %i.yz = icmp ult i32 %i.xz, 13                  ; 2 uses
  %i.za = select i1 %i.yz, ptr %i.pp, ptr %.sroa.2.0.copyload.i.i107.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.zb = and i64 %.sroa.0.0.copyload.i.i105.i.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.xz, 0
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc27.i.i.i.i.i.i.i.i.i.i.i.i

.noexc27.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zc = load i8, ptr %i.za, align 1, !tbaa !17, !noalias !17833
  %i.zd = icmp eq i8 %i.zc, 43
  br i1 %i.zd, label %.noexc28.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i.i.i.i.i.i.i.i.i.i.i.i

.noexc28.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc27.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.gep171.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i107.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.yz, ptr %.sroa.gep.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep171.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.noexc29.i.i.i.i.i.i.i.i.i.i.i.i

.noexc29.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc28.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc27.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc28.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.za, %.noexc27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.za, %.noexc26.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37, !noalias !17833
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zb
  %i.zf = trunc nuw nsw i64 %i.ym to i32
  %i.zg = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.ze, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.zf)
          to label %.noexc30.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ex ; 2 uses

.noexc30.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zh = extractvalue { ptr, i32 } %i.zg, 0      ; 2 uses
  store ptr %i.zh, ptr %26, align 8, !noalias !17833
  %i.zi = extractvalue { ptr, i32 } %i.zg, 1      ; 3 uses
  store i32 %i.zi, ptr %i.pq, align 8, !noalias !17833
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zi, 22
  %.pre80.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %31, align 8, !tbaa !17774, !noalias !17848 ; 8 uses
  %.pre81.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.po, align 8, !noalias !17848 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre82.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %.noexc32.i.i.i.i.i.i.i.i.i.i.i.i

.noexc31.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zj = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i, 13
  %i.zk = select i1 %i.zj, ptr %i.pp, ptr %.pre81.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.zl = zext i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zl
  %.not208.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zh, %i.zm
  br i1 %.not208.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eo, label %.noexc32.i.i.i.i.i.i.i.i.i.i.i.i, !prof !442

.noexc32.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre82.i.i.i.i.i.i.i.i.i.i.i, %.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zl, %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37, !noalias !17833
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37, !noalias !17833
  call void @llvm.experimental.noalias.scope.decl(metadata !17848)
  %i.zn = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i, 13
  %i.zo = select i1 %i.zn, ptr %i.pp, ptr %.pre81.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.qc, ptr %28, align 8, !tbaa !341, !alias.scope !17848
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i.i.i, label %bb.eh

.noexc.i40.invoke.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc32.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i40.cont.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ex

.noexc.i40.cont.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.eh:                                            ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zq = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eh
  %i.zr = add nuw nsw i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.zs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zr) #44
          to label %.noexc42.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ex ; 2 uses

.noexc42.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.zs, ptr %28, align 8, !tbaa !7, !alias.scope !17848
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i, ptr %i.qc, align 8, !tbaa !17, !alias.scope !17848
  br label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i.i, %bb.eh
  %i.zt = phi ptr [ %i.zs, %.noexc42.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qc, %bb.eh ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej [
    i32 1, label %bb.ei
    i32 0, label %.noexc33.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.ei:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i
  %i.zu = load i8, ptr %i.pp, align 4, !tbaa !17, !noalias !17848
  store i8 %i.zu, ptr %i.zt, align 1, !tbaa !17
  br label %.noexc33.i.i.i.i.i.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zt, ptr nonnull align 1 %i.zo, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.noexc33.i.i.i.i.i.i.i.i.i.i.i.i

.noexc33.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ej, %bb.ei, %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i, ptr %i.qa, align 8, !tbaa !16, !alias.scope !17848
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.zv, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !17851
  store i64 %i.ym, ptr %7, align 16, !tbaa !17, !alias.scope !17854, !noalias !17851
  %i.zw = load ptr, ptr %28, align 8, !tbaa !7, !noalias !17851
  %i.zx = load i64, ptr %i.qa, align 8, !tbaa !16, !noalias !17851
  store ptr %i.zw, ptr %i.pz, align 16, !tbaa !17, !noalias !17851
  store i64 %i.zx, ptr %i.qb, align 8, !tbaa !17, !noalias !17851
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %7)
          to label %bb.ek unwind label %bb.em

bb.ek:                                            ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37, !noalias !17851
  %i.zy = load ptr, ptr %28, align 8, !tbaa !7, !noalias !17833 ; 2 uses
  %i.zz = icmp eq ptr %i.zy, %i.qc
  br i1 %i.zz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ek
  %i.aaa = load i64, ptr %i.qc, align 8, !tbaa !17, !noalias !17833
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zy, i64 noundef %i.aab) #43, !noalias !17833
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37, !noalias !17833
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr nonnull @.str.244) #45
          to label %bb.el unwind label %bb.en, !noalias !17833

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.em:                                            ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.aad = load ptr, ptr %28, align 8, !tbaa !7, !noalias !17833 ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.qc
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.em
  %i.aaf = load i64, ptr %i.qc, align 8, !tbaa !17, !noalias !17833
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aad, i64 noundef %i.aag) #43, !noalias !17833
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37, !noalias !17833
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i.i.i.i.i.i.i.i.i

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aah = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.aai = load ptr, ptr %27, align 8, !tbaa !7, !noalias !17833 ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.qd
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.en
  %i.aak = load i64, ptr %i.qd, align 8, !tbaa !17, !noalias !17833
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #43, !noalias !17833
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aah, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37, !noalias !17833
  br label %bb.ew

bb.eo:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zi, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc34.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit157.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc34.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37, !noalias !17833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37, !noalias !17833
  store i32 34, ptr %i.c, align 4, !tbaa !17781, !noalias !17833
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37, !noalias !17833
  call void @llvm.experimental.noalias.scope.decl(metadata !17857)
  store ptr %i.px, ptr %30, align 8, !tbaa !341, !alias.scope !17857
  %i.aam = icmp eq ptr %i.zk, null
  br i1 %i.aam, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aan = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ep
  %i.aao = add nuw nsw i64 %i.zl, 1
  %i.aap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aao) #44
          to label %.noexc37.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ex ; 2 uses

.noexc37.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.aap, ptr %30, align 8, !tbaa !7, !alias.scope !17857
  store i64 %i.zl, ptr %i.px, align 8, !tbaa !17, !alias.scope !17857
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.noexc37.i.i.i.i.i.i.i.i.i.i.i, %bb.ep
  %i.aaq = phi ptr [ %i.aap, %.noexc37.i.i.i.i.i.i.i.i.i.i.i ], [ %i.px, %bb.ep ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i.i.i, label %bb.er [
    i32 1, label %bb.eq
    i32 0, label %.noexc35.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.eq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aar = load i8, ptr %i.pp, align 4, !tbaa !17, !noalias !17857
  store i8 %i.aar, ptr %i.aaq, align 1, !tbaa !17
  br label %.noexc35.i.i.i.i.i.i.i.i.i.i.i.i

bb.er:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aaq, ptr nonnull align 1 %i.zk, i64 %i.zl, i1 false)
  br label %.noexc35.i.i.i.i.i.i.i.i.i.i.i.i

.noexc35.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.er, %bb.eq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.zl, ptr %i.pv, align 8, !tbaa !16, !alias.scope !17857
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.zl
  store i8 0, ptr %i.aas, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37, !noalias !17860
  store ptr %i.pq, ptr %6, align 16, !tbaa !17, !noalias !17860
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.pr, align 8, !tbaa !17, !noalias !17860
  store ptr %i.c, ptr %i.ps, align 16, !tbaa !17, !noalias !17860
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.pt, align 8, !tbaa !17, !noalias !17860
  %i.aat = load ptr, ptr %30, align 8, !tbaa !7, !noalias !17860
  %i.aau = load i64, ptr %i.pv, align 8, !tbaa !16, !noalias !17860
  store ptr %i.aat, ptr %i.pu, align 16, !tbaa !17, !noalias !17860
  store i64 %i.aau, ptr %i.pw, align 8, !tbaa !17, !noalias !17860
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %6)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %.noexc35.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37, !noalias !17860
  %i.aav = load ptr, ptr %30, align 8, !tbaa !7, !noalias !17833 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.px
  br i1 %i.aaw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i.i.i.i.i.i.i.i.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a
  %i.hw = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.ib = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %55, i64 48
  %i.ig = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %56, i64 48
  %i.ik = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %74, i64 4 ; 5 uses
  %.sroa.gep.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %74, i64 5
  %i.in = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %49, i64 40
  %i.iu = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 7 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.jd = getelementptr inbounds nuw i8, ptr %51, i64 48
  %i.je = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.ji = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  br label %bb.aw

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %bb.av
  %.not34.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.go, %i.gs
  br i1 %.not34.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiiSS_.exit.i.i.i.i.i.i, label %bb.dw

bb.aw:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.jj = phi i32 [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.tb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.065.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.jj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jk = sdiv i32 %.065.i.i.i.i.i.i.i.i.i, 64    ; 3 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.jl
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !366 ; 2 uses
  switch i64 %i.jn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.ax
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.aw
  %i.jo = shl nsw i32 %i.jk, 6
  br label %bb.ck

bb.ax:                                            ; preds = %bb.aw
  %i.jp = shl nsw i32 %i.jk, 6                    ; 2 uses
  %i.jq = add i32 %i.jp, 64
  %i.jr = sext i32 %i.jq to i64
  %.0.off.i.i.i.i.i.i.i.i.i = add i32 %.065.i.i.i.i.i.i.i.i.i, 127
  %.not233.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i, 64
  br i1 %.not233.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph232.i.i.i.i.i.i.i.i.i.i

.lr.ph232.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ax
  %i.js = sext i32 %i.jp to i64
  br label %bb.ay

bb.ay:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph232.i.i.i.i.i.i.i.i.i.i
  %.0227.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph232.i.i.i.i.i.i.i.i.i.i ], [ %i.oh, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  store i64 0, ptr %i.j, align 8, !tbaa !366
  %i.jt = load ptr, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !tbaa !17865, !nonnull !393, !align !891 ; 2 uses
  %i.ju = load ptr, ptr %.sroa.526.0..sroa_idx.i.i, align 8, !tbaa !17868, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #37, !noalias !17900
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jt, align 8, !noalias !17900 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !17900 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %64, align 8, !noalias !17900
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hn, align 8, !noalias !17900
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !366, !noalias !17903 ; 6 uses
  %i.jw = icmp slt i64 %i.jv, 2
  %i.jx = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.jw, label %.noexc49.i.i.i.i.i.i.i.i.i.i, label %bb.bb, !prof !45

.noexc49.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #37, !noalias !17906
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #37, !noalias !17909
  store i64 %i.jv, ptr %56, align 16, !tbaa !17, !alias.scope !17912, !noalias !17909
  store i32 2, ptr %i.ih, align 16, !tbaa !17, !alias.scope !17912, !noalias !17909
  store i32 2, ptr %i.ii, align 16, !tbaa !17, !alias.scope !17912, !noalias !17909
  store i32 36, ptr %i.ij, align 16, !tbaa !17, !alias.scope !17912, !noalias !17909
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %57, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %56)
          to label %.noexc50.i.i.i.i.i.i.i.i.i.i unwind label %bb.bu

.noexc50.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc49.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #37, !noalias !17909
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr nonnull @.str.249) #45
          to label %bb.az unwind label %bb.ba, !noalias !17906

bb.az:                                            ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ba:                                            ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.jz = load ptr, ptr %57, align 8, !tbaa !7, !noalias !17906 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.ik
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.kb = load i64, ptr %i.ik, align 8, !tbaa !17, !noalias !17906
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #43, !noalias !17906
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #37, !noalias !17906
  br label %.body53.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ay
  %i.kd = icmp samesign ugt i64 %i.jv, 36
  br i1 %i.kd, label %.noexc51.i.i.i.i.i.i.i.i.i.i, label %.noexc55.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc51.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #37, !noalias !17906
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #37, !noalias !17915
  store i64 %i.jv, ptr %55, align 16, !tbaa !17, !alias.scope !17918, !noalias !17915
  store i32 36, ptr %i.id, align 16, !tbaa !17, !alias.scope !17918, !noalias !17915
  store i32 2, ptr %i.ie, align 16, !tbaa !17, !alias.scope !17918, !noalias !17915
  store i32 36, ptr %i.if, align 16, !tbaa !17, !alias.scope !17918, !noalias !17915
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %55)
          to label %.noexc52.i.i.i.i.i.i.i.i.i.i unwind label %bb.bu

.noexc52.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #37, !noalias !17915
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr nonnull @.str.249) #45
          to label %bb.bc unwind label %bb.bd, !noalias !17906

bb.bc:                                            ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.bd:                                            ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.kf = load ptr, ptr %58, align 8, !tbaa !7, !noalias !17906 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.ig
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.kh = load i64, ptr %i.ig, align 8, !tbaa !17, !noalias !17906
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #43, !noalias !17906
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #37, !noalias !17906
  br label %.body53.i.i.i.i.i.i.i.i.i.i

.noexc55.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bb
  %i.kj = icmp ult i32 %i.jx, 13                  ; 2 uses
  %i.kk = select i1 %i.kj, ptr %i.ho, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.kl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i7.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i.i, label %.noexc58.i.i.i.i.i.i.i.i.i.i, label %.noexc56.i.i.i.i.i.i.i.i.i.i

.noexc56.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc55.i.i.i.i.i.i.i.i.i.i
  %i.km = load i8, ptr %i.kk, align 1, !tbaa !17, !noalias !17906
  %i.kn = icmp eq i8 %i.km, 43
  br i1 %i.kn, label %.noexc57.i.i.i.i.i.i.i.i.i.i, label %.noexc58.i.i.i.i.i.i.i.i.i.i

.noexc57.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc56.i.i.i.i.i.i.i.i.i.i
  %.sroa.gep190.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel191.i.i.i.i.i.i.i.i.i.i = select i1 %i.kj, ptr %.sroa.gep189.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep190.i.i.i.i.i.i.i.i.i.i
  br label %.noexc58.i.i.i.i.i.i.i.i.i.i

.noexc58.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc57.i.i.i.i.i.i.i.i.i.i, %.noexc56.i.i.i.i.i.i.i.i.i.i, %.noexc55.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel191.i.i.i.i.i.i.i.i.i.i, %.noexc57.i.i.i.i.i.i.i.i.i.i ], [ %i.kk, %.noexc56.i.i.i.i.i.i.i.i.i.i ], [ %i.kk, %.noexc55.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #37, !noalias !17906
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kl
  %i.kp = trunc nuw nsw i64 %i.jv to i32
  %i.kq = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.ko, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.kp)
          to label %.noexc59.i.i.i.i.i.i.i.i.i.i unwind label %bb.bu ; 2 uses

.noexc59.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc58.i.i.i.i.i.i.i.i.i.i
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0      ; 2 uses
  store ptr %i.kr, ptr %59, align 8, !noalias !17906
  %i.ks = extractvalue { ptr, i32 } %i.kq, 1      ; 3 uses
  store i32 %i.ks, ptr %i.hp, align 8, !noalias !17906
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ks, 22
  %.pre76.i.i.i.i.i.i.i.i.i = load i32, ptr %64, align 8, !tbaa !17774, !noalias !17921 ; 8 uses
  %.pre77.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !noalias !17921 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc59.i..noexc61.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc60.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc59.i..noexc61.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc59.i.i.i.i.i.i.i.i.i.i
  %.pre83.i.i.i.i.i.i.i.i.i = zext i32 %.pre76.i.i.i.i.i.i.i.i.i to i64
  br label %.noexc61.i.i.i.i.i.i.i.i.i.i

.noexc60.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc59.i.i.i.i.i.i.i.i.i.i
  %i.kt = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i, 13
  %i.ku = select i1 %i.kt, ptr %i.ho, ptr %.pre77.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.kv = zext i32 %.pre76.i.i.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kv
  %.not210.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kr, %i.kw
  br i1 %.not210.i.i.i.i.i.i.i.i.i.i, label %bb.bl, label %.noexc61.i.i.i.i.i.i.i.i.i.i, !prof !442

.noexc61.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc60.i.i.i.i.i.i.i.i.i.i, %.noexc59.i..noexc61.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi84.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre83.i.i.i.i.i.i.i.i.i, %.noexc59.i..noexc61.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.kv, %.noexc60.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #37, !noalias !17906
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #37, !noalias !17906
  call void @llvm.experimental.noalias.scope.decl(metadata !17921)
  %i.kx = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i, 13
  %i.ky = select i1 %i.kx, ptr %i.ho, ptr %.pre77.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.ib, ptr %61, align 8, !tbaa !341, !alias.scope !17921
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i, label %bb.be

.noexc.i52.invoke.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc63.i.i.i.i.i.i.i.i.i.i, %.noexc61.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i52.cont.i.i.i.i.i.i.i.i.i unwind label %bb.bu

.noexc.i52.cont.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i
  unreachable

bb.be:                                            ; preds = %.noexc61.i.i.i.i.i.i.i.i.i.i
  %i.la = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i: ; preds = %bb.be
  %i.lb = add nuw nsw i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, 1
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #44
          to label %.noexc54.i.i.i.i.i.i.i.i.i unwind label %bb.bu ; 2 uses

.noexc54.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i
  store ptr %i.lc, ptr %61, align 8, !tbaa !7, !alias.scope !17921
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, ptr %i.ib, align 8, !tbaa !17, !alias.scope !17921
  br label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc54.i.i.i.i.i.i.i.i.i, %bb.be
  %i.ld = phi ptr [ %i.lc, %.noexc54.i.i.i.i.i.i.i.i.i ], [ %i.ib, %bb.be ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i, label %bb.bg [
    i32 1, label %bb.bf
    i32 0, label %.noexc62.i.i.i.i.i.i.i.i.i.i
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i
  %i.le = load i8, ptr %i.ho, align 4, !tbaa !17, !noalias !17921
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !17
  br label %.noexc62.i.i.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr nonnull align 1 %i.ky, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.noexc62.i.i.i.i.i.i.i.i.i.i

.noexc62.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, ptr %i.hz, align 8, !tbaa !16, !alias.scope !17921
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.lf, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #37, !noalias !17924
  store i64 %i.jv, ptr %54, align 16, !tbaa !17, !alias.scope !17927, !noalias !17924
  %i.lg = load ptr, ptr %61, align 8, !tbaa !7, !noalias !17924
  %i.lh = load i64, ptr %i.hz, align 8, !tbaa !16, !noalias !17924
  store ptr %i.lg, ptr %i.hy, align 16, !tbaa !17, !noalias !17924
  store i64 %i.lh, ptr %i.ia, align 8, !tbaa !17, !noalias !17924
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %54)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %.noexc62.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37, !noalias !17924
  %i.li = load ptr, ptr %61, align 8, !tbaa !7, !noalias !17906 ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.ib
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.lk = load i64, ptr %i.ib, align 8, !tbaa !17, !noalias !17906
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #43, !noalias !17906
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #37, !noalias !17906
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr nonnull @.str.244) #45
          to label %bb.bi unwind label %bb.bk, !noalias !17906

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.bj:                                            ; preds = %.noexc62.i.i.i.i.i.i.i.i.i.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ln = load ptr, ptr %61, align 8, !tbaa !7, !noalias !17906 ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.ib
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj
  %i.lp = load i64, ptr %i.ib, align 8, !tbaa !17, !noalias !17906
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #43, !noalias !17906
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #37, !noalias !17906
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ls = load ptr, ptr %60, align 8, !tbaa !7, !noalias !17906 ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.ic
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bk
  %i.lu = load i64, ptr %i.ic, align 8, !tbaa !17, !noalias !17906
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #43, !noalias !17906
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #37, !noalias !17906
  br label %bb.bt

bb.bl:                                            ; preds = %.noexc60.i.i.i.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ks, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc63.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit102.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc63.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #37, !noalias !17906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37, !noalias !17906
  store i32 34, ptr %i.i, align 4, !tbaa !17781, !noalias !17906
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #37, !noalias !17906
  call void @llvm.experimental.noalias.scope.decl(metadata !17930)
  store ptr %i.hw, ptr %63, align 8, !tbaa !341, !alias.scope !17930
  %i.lw = icmp eq ptr %i.ku, null
  br i1 %i.lw, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc63.i.i.i.i.i.i.i.i.i.i
  %i.lx = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm
  %i.ly = add nuw nsw i64 %i.kv, 1
  %i.lz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #44
          to label %.noexc48.i.i.i.i.i.i.i.i.i unwind label %bb.bu ; 2 uses

.noexc48.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i
  store ptr %i.lz, ptr %63, align 8, !tbaa !7, !alias.scope !17930
  store i64 %i.kv, ptr %i.hw, align 8, !tbaa !17, !alias.scope !17930
  br label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc48.i.i.i.i.i.i.i.i.i, %bb.bm
  %i.ma = phi ptr [ %i.lz, %.noexc48.i.i.i.i.i.i.i.i.i ], [ %i.hw, %bb.bm ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i, label %bb.bo [
    i32 1, label %bb.bn
    i32 0, label %.noexc64.i.i.i.i.i.i.i.i.i.i
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i
  %i.mb = load i8, ptr %i.ho, align 4, !tbaa !17, !noalias !17930
  store i8 %i.mb, ptr %i.ma, align 1, !tbaa !17
  br label %.noexc64.i.i.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ma, ptr nonnull align 1 %i.ku, i64 %i.kv, i1 false)
  br label %.noexc64.i.i.i.i.i.i.i.i.i.i

.noexc64.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i
  store i64 %i.kv, ptr %i.hu, align 8, !tbaa !16, !alias.scope !17930
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.kv
  store i8 0, ptr %i.mc, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #37, !noalias !17933
  store ptr %i.hp, ptr %53, align 16, !tbaa !17, !noalias !17933
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.hq, align 8, !tbaa !17, !noalias !17933
  store ptr %i.i, ptr %i.hr, align 16, !tbaa !17, !noalias !17933
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.hs, align 8, !tbaa !17, !noalias !17933
  %i.md = load ptr, ptr %63, align 8, !tbaa !7, !noalias !17933
  %i.me = load i64, ptr %i.hu, align 8, !tbaa !16, !noalias !17933
  store ptr %i.md, ptr %i.ht, align 16, !tbaa !17, !noalias !17933
  store i64 %i.me, ptr %i.hv, align 8, !tbaa !17, !noalias !17933
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %53)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %.noexc64.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37, !noalias !17933
  %i.mf = load ptr, ptr %63, align 8, !tbaa !7, !noalias !17906 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.hw
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i.i.i.i.i.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a

bb.ca:                                            ; preds = %bb.bx
  %i.nz = landingpad { ptr, i32 }
          cleanup
  %i.oa = load ptr, ptr %65, align 8, !tbaa !618
  %.not.i104.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i104.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105.i.i.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %65) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #37
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ci

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i
  %i.oc = load ptr, ptr %66, align 8, !tbaa !618
  %.not.i106.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i106.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107.i.i.i.i.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %66) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #37
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i
  %i.od = landingpad { ptr, i32 }
          cleanup
  %i.oe = load ptr, ptr %66, align 8, !tbaa !618
  %.not.i108.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not.i108.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109.i.i.i.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %66) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #37
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109.i.i.i.i.i.i.i.i.i.i, %bb.cc
  %.pn.i45.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.od, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109.i.i.i.i.i.i.i.i.i.i ], [ %i.ob, %bb.cc ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105.i.i.i.i.i.i.i.i.i.i
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #46
  unreachable

bb.cj:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit102.i.i.i.i.i.i.i.i.i.i
  %i.oh = add nuw i64 %.0227.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.oi = icmp ult i64 %i.oh, %i.jr
  br i1 %i.oi, label %bb.ay, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !17936

bb.ck:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.015226.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ta, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015226.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ok = trunc nuw nsw i64 %i.oj to i32
  %i.ol = or disjoint i32 %i.jo, %i.ok            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  store i64 0, ptr %i.l, align 8, !tbaa !366
  %i.om = load ptr, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !tbaa !17865, !nonnull !393, !align !891 ; 2 uses
  %i.on = load ptr, ptr %.sroa.526.0..sroa_idx.i.i, align 8, !tbaa !17868, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #37, !noalias !17937
  %.sroa.0.0.copyload.i110.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.om, align 8, !noalias !17937 ; 3 uses
  %.sroa.2.0..sroa_idx.i111.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %.sroa.2.0.copyload.i112.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i111.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !17937 ; 3 uses
  store i64 %.sroa.0.0.copyload.i110.i.i.i.i.i.i.i.i.i.i, ptr %74, align 8, !noalias !17937
  store ptr %.sroa.2.0.copyload.i112.i.i.i.i.i.i.i.i.i.i, ptr %i.il, align 8, !noalias !17937
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !366, !noalias !17940 ; 6 uses
  %i.op = icmp slt i64 %i.oo, 2
  %i.oq = trunc i64 %.sroa.0.0.copyload.i110.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.op, label %.noexc38.i.i.i.i.i.i.i.i.i.i, label %bb.cn, !prof !45

.noexc38.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #37, !noalias !17943
  store i64 %i.oo, ptr %52, align 16, !tbaa !17, !alias.scope !17946, !noalias !17943
  store i32 2, ptr %i.jf, align 16, !tbaa !17, !alias.scope !17946, !noalias !17943
  store i32 2, ptr %i.jg, align 16, !tbaa !17, !alias.scope !17946, !noalias !17943
  store i32 36, ptr %i.jh, align 16, !tbaa !17, !alias.scope !17946, !noalias !17943
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %67, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %52)
          to label %.noexc39.i.i.i.i.i.i.i.i.i.i unwind label %bb.dg

.noexc39.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc38.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #37, !noalias !17943
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %67, ptr nonnull @.str.249) #45
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %.noexc39.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cm:                                            ; preds = %.noexc39.i.i.i.i.i.i.i.i.i.i
  %i.or = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.os = load ptr, ptr %67, align 8, !tbaa !7    ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.ji
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm
  %i.ou = load i64, ptr %i.ji, align 8, !tbaa !17
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #37
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.ck
  %i.ow = icmp samesign ugt i64 %i.oo, 36
  br i1 %i.ow, label %.noexc40.i.i.i.i.i.i.i.i.i.i, label %.noexc25.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc40.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #37, !noalias !17949
  store i64 %i.oo, ptr %51, align 16, !tbaa !17, !alias.scope !17952, !noalias !17949
  store i32 36, ptr %i.jb, align 16, !tbaa !17, !alias.scope !17952, !noalias !17949
  store i32 2, ptr %i.jc, align 16, !tbaa !17, !alias.scope !17952, !noalias !17949
  store i32 36, ptr %i.jd, align 16, !tbaa !17, !alias.scope !17952, !noalias !17949
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %51)
          to label %.noexc41.i.i.i.i.i.i.i.i.i.i unwind label %bb.dg

.noexc41.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc40.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37, !noalias !17949
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %68, ptr nonnull @.str.249) #45
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %.noexc41.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cp:                                            ; preds = %.noexc41.i.i.i.i.i.i.i.i.i.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.oy = load ptr, ptr %68, align 8, !tbaa !7    ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.je
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp
  %i.pa = load i64, ptr %i.je, align 8, !tbaa !17
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #37
  br label %.body.i.i.i.i.i.i.i.i.i.i

.noexc25.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cn
  %i.pc = icmp ult i32 %i.oq, 13                  ; 2 uses
  %i.pd = select i1 %i.pc, ptr %i.im, ptr %.sroa.2.0.copyload.i112.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.pe = and i64 %.sroa.0.0.copyload.i110.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.noexc28.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.i.i.i.i.i.i.i.i.i

.noexc26.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc25.i.i.i.i.i.i.i.i.i.i
  %i.pf = load i8, ptr %i.pd, align 1, !tbaa !17
  %i.pg = icmp eq i8 %i.pf, 43
  br i1 %i.pg, label %.noexc27.i.i.i.i.i.i.i.i.i.i, label %.noexc28.i.i.i.i.i.i.i.i.i.i

.noexc27.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i
  %.sroa.gep172.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i112.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel.i.i.i.i.i.i.i.i.i.i = select i1 %i.pc, ptr %.sroa.gep.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep172.i.i.i.i.i.i.i.i.i.i
  br label %.noexc28.i.i.i.i.i.i.i.i.i.i

.noexc28.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc27.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel.i.i.i.i.i.i.i.i.i.i, %.noexc27.i.i.i.i.i.i.i.i.i.i ], [ %i.pd, %.noexc26.i.i.i.i.i.i.i.i.i.i ], [ %i.pd, %.noexc25.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #37
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pe
  %i.pi = trunc nuw nsw i64 %i.oo to i32
  %i.pj = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.ph, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.pi)
          to label %.noexc29.i.i.i.i.i.i.i.i.i.i unwind label %bb.dg ; 2 uses

.noexc29.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc28.i.i.i.i.i.i.i.i.i.i
  %i.pk = extractvalue { ptr, i32 } %i.pj, 0      ; 2 uses
  store ptr %i.pk, ptr %69, align 8
  %i.pl = extractvalue { ptr, i32 } %i.pj, 1      ; 3 uses
  store i32 %i.pl, ptr %i.in, align 8
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.pl, 22
  %.pre80.i.i.i.i.i.i.i.i.i = load i32, ptr %74, align 8, !tbaa !17774, !noalias !17955 ; 8 uses
  %.pre81.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.il, align 8, !noalias !17955 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i
  %.pre82.i.i.i.i.i.i.i.i.i = zext i32 %.pre80.i.i.i.i.i.i.i.i.i to i64
  br label %.noexc31.i.i.i.i.i.i.i.i.i.i

.noexc30.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i
  %i.pm = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i, 13
  %i.pn = select i1 %i.pm, ptr %i.im, ptr %.pre81.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.po = zext i32 %.pre80.i.i.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.po
  %.not209.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pk, %i.pp
  br i1 %.not209.i.i.i.i.i.i.i.i.i.i, label %bb.cx, label %.noexc31.i.i.i.i.i.i.i.i.i.i, !prof !442

.noexc31.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i, %.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre82.i.i.i.i.i.i.i.i.i, %.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.po, %.noexc30.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !17955)
  %i.pq = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i, 13
  %i.pr = select i1 %i.pq, ptr %i.im, ptr %.pre81.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.iz, ptr %71, align 8, !tbaa !341, !alias.scope !17955
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i, label %bb.cq

.noexc.i40.invoke.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i40.cont.i.i.i.i.i.i.i.i.i unwind label %bb.dg

.noexc.i40.cont.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i
  unreachable

bb.cq:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i
  %i.pt = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i: ; preds = %bb.cq
  %i.pu = add nuw nsw i64 %.pre-phi.i.i.i.i.i.i.i.i.i, 1
  %i.pv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pu) #44
          to label %.noexc42.i.i.i.i.i.i.i.i.i unwind label %bb.dg ; 2 uses

.noexc42.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i
  store ptr %i.pv, ptr %71, align 8, !tbaa !7, !alias.scope !17955
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i, ptr %i.iz, align 8, !tbaa !17, !alias.scope !17955
  br label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc42.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.pw = phi ptr [ %i.pv, %.noexc42.i.i.i.i.i.i.i.i.i ], [ %i.iz, %bb.cq ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i, label %bb.cs [
    i32 1, label %bb.cr
    i32 0, label %.noexc32.i.i.i.i.i.i.i.i.i.i
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i
  %i.px = load i8, ptr %i.im, align 4, !tbaa !17, !noalias !17955
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !17
  br label %.noexc32.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pw, ptr nonnull align 1 %i.pr, i64 %.pre-phi.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.noexc32.i.i.i.i.i.i.i.i.i.i

.noexc32.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i, ptr %i.ix, align 8, !tbaa !16, !alias.scope !17955
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.py, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #37, !noalias !17958
  store i64 %i.oo, ptr %50, align 16, !tbaa !17, !alias.scope !17961, !noalias !17958
  %i.pz = load ptr, ptr %71, align 8, !tbaa !7, !noalias !17958
  %i.qa = load i64, ptr %i.ix, align 8, !tbaa !16, !noalias !17958
  store ptr %i.pz, ptr %i.iw, align 16, !tbaa !17, !noalias !17958
  store i64 %i.qa, ptr %i.iy, align 8, !tbaa !17, !noalias !17958
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %50)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #37, !noalias !17958
  %i.qb = load ptr, ptr %71, align 8, !tbaa !7    ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.iz
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct
  %i.qd = load i64, ptr %i.iz, align 8, !tbaa !17
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr nonnull @.str.244) #45
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cv:                                            ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i
  %i.qf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.qg = load ptr, ptr %71, align 8, !tbaa !7    ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.iz
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv
  %i.qi = load i64, ptr %i.iz, align 8, !tbaa !17
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i.i.i.i.i.i.i
  %i.qk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ql = load ptr, ptr %70, align 8, !tbaa !7    ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.ja
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %i.qn = load i64, ptr %i.ja, align 8, !tbaa !17
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.qf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i.i.i.i.i.i.i ], [ %i.qk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i.i.i.i.i.i.i ], [ %i.qk, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #37
  br label %bb.df

bb.cx:                                            ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.pl, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i, label %.noexc33.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit158.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc33.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37
  store i32 34, ptr %i.k, align 4, !tbaa !17781
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !17964)
  store ptr %i.iu, ptr %73, align 8, !tbaa !341, !alias.scope !17964
  %i.qp = icmp eq ptr %i.pn, null
  br i1 %i.qp, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i
  %i.qq = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cy
  %i.qr = add nuw nsw i64 %i.po, 1
  %i.qs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qr) #44
          to label %.noexc37.i.i.i.i.i.i.i.i.i unwind label %bb.dg ; 2 uses

.noexc37.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.qs, ptr %73, align 8, !tbaa !7, !alias.scope !17964
  store i64 %i.po, ptr %i.iu, align 8, !tbaa !17, !alias.scope !17964
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc37.i.i.i.i.i.i.i.i.i, %bb.cy
  %i.qt = phi ptr [ %i.qs, %.noexc37.i.i.i.i.i.i.i.i.i ], [ %i.iu, %bb.cy ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i, label %bb.da [
    i32 1, label %bb.cz
    i32 0, label %.noexc34.i.i.i.i.i.i.i.i.i.i
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qu = load i8, ptr %i.im, align 4, !tbaa !17, !noalias !17964
  store i8 %i.qu, ptr %i.qt, align 1, !tbaa !17
  br label %.noexc34.i.i.i.i.i.i.i.i.i.i

bb.da:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qt, ptr nonnull align 1 %i.pn, i64 %i.po, i1 false)
  br label %.noexc34.i.i.i.i.i.i.i.i.i.i

.noexc34.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.po, ptr %i.is, align 8, !tbaa !16, !alias.scope !17964
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.po
  store i8 0, ptr %i.qv, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #37, !noalias !17967
  store ptr %i.in, ptr %49, align 16, !tbaa !17, !noalias !17967
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.io, align 8, !tbaa !17, !noalias !17967
  store ptr %i.k, ptr %i.ip, align 16, !tbaa !17, !noalias !17967
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.iq, align 8, !tbaa !17, !noalias !17967
  %i.qw = load ptr, ptr %73, align 8, !tbaa !7, !noalias !17967
  %i.qx = load i64, ptr %i.is, align 8, !tbaa !16, !noalias !17967
  store ptr %i.qw, ptr %i.ir, align 16, !tbaa !17, !noalias !17967
  store i64 %i.qx, ptr %i.it, align 8, !tbaa !17, !noalias !17967
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %49)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37, !noalias !17967
  %i.qy = load ptr, ptr %73, align 8, !tbaa !7    ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.iu
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i.i.i.i.i.i.i.i.i

end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a
  %i.abn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.abq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.abr = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.abs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.abu = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.abv = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.abw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 5 uses
  %.sroa.gep.i.i.i.i.i.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %28, i64 5
  %i.abz = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.acb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.acd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.acg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.acl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aco = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.acp = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.acq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acs = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.act = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.acu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  br label %bb.fr

._crit_edge.i.i.i.i.i.i.i.i.i35:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %bb.fq
  %.not34.i.i.i.i.i.i.i.i.i36 = icmp eq i32 %i.aaa, %i.aae
  br i1 %.not34.i.i.i.i.i.i.i.i.i36, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i.i.i.i, label %bb.ir

bb.fr:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i31
  %i.acv = phi i32 [ %i.aay, %.lr.ph.i.i.i.i.i.i.i.i.i31 ], [ %i.amr, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.065.i.i.i.i.i.i.i.i.i33 = phi i32 [ %i.aad, %.lr.ph.i.i.i.i.i.i.i.i.i31 ], [ %i.acv, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acw = sdiv i32 %.065.i.i.i.i.i.i.i.i.i33, 64 ; 3 uses
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.zw, i64 %i.acx
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !366 ; 2 uses
  switch i64 %i.acz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i77 [
    i64 -1, label %bb.fs
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i.i.i77:                     ; preds = %bb.fr
  %i.ada = shl nsw i32 %i.acw, 6
  br label %bb.hf

bb.fs:                                            ; preds = %bb.fr
  %i.adb = shl nsw i32 %i.acw, 6                  ; 2 uses
  %i.adc = add i32 %i.adb, 64
  %i.add = sext i32 %i.adc to i64
  %.0.off.i.i.i.i.i.i.i.i.i38 = add i32 %.065.i.i.i.i.i.i.i.i.i33, 127
  %.not224.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i38, 64
  br i1 %.not224.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph223.i.i.i.i.i.i.i.i.i.i

.lr.ph223.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.fs
  %i.ade = sext i32 %i.adb to i64
  br label %bb.ft

bb.ft:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph223.i.i.i.i.i.i.i.i.i.i
  %.0218.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ade, %.lr.ph223.i.i.i.i.i.i.i.i.i.i ], [ %i.ahv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !366
  %i.adf = load ptr, ptr %.sroa.425.0..sroa_idx.i.i14, align 8, !tbaa !17972, !nonnull !393, !align !891 ; 2 uses
  %i.adg = load ptr, ptr %.sroa.526.0..sroa_idx.i.i15, align 8, !tbaa !17974, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37, !noalias !18009
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39 = load i64, ptr %i.adf, align 8, !noalias !18009 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i40, align 8, !tbaa !17, !noalias !18009 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39, ptr %18, align 8, !noalias !18009
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41, ptr %i.aaz, align 8, !noalias !18009
  %i.adh = trunc i64 %.0218.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.adi = load ptr, ptr %i.adg, align 8, !tbaa !3939, !noalias !18012
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.0218.i.i.i.i.i.i.i.i.i.i, 32
  %i.adj = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 29
  %i.adk = getelementptr inbounds i8, ptr %i.adi, i64 %i.adj
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !366, !noalias !18012 ; 6 uses
  %i.adm = icmp slt i64 %i.adl, 2
  %i.adn = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39 to i32 ; 2 uses
  br i1 %i.adm, label %.noexc41.i.i.i.i.i.i.i.i.i.i73, label %bb.fw, !prof !45

.noexc41.i.i.i.i.i.i.i.i.i.i73:                   ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37, !noalias !18015
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37, !noalias !18018
  store i64 %i.adl, ptr %10, align 16, !tbaa !17, !alias.scope !18021, !noalias !18018
  store i32 2, ptr %i.abt, align 16, !tbaa !17, !alias.scope !18021, !noalias !18018
  store i32 2, ptr %i.abu, align 16, !tbaa !17, !alias.scope !18021, !noalias !18018
  store i32 36, ptr %i.abv, align 16, !tbaa !17, !alias.scope !18021, !noalias !18018
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %10)
          to label %.noexc42.i.i.i.i.i.i.i.i.i.i unwind label %bb.gp

.noexc42.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc41.i.i.i.i.i.i.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37, !noalias !18018
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.249) #45
          to label %bb.fu unwind label %bb.fv, !noalias !18015

bb.fu:                                            ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.fv:                                            ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i
  %i.ado = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.adp = load ptr, ptr %11, align 8, !tbaa !7, !noalias !18015 ; 2 uses
  %i.adq = icmp eq ptr %i.adp, %i.abw
  br i1 %i.adq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i74: ; preds = %bb.fv
  %i.adr = load i64, ptr %i.abw, align 8, !tbaa !17, !noalias !18015
  %i.ads = add i64 %i.adr, 1
  call void @_ZdlPvm(ptr noundef %i.adp, i64 noundef %i.ads) #43, !noalias !18015
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i75: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37, !noalias !18015
  br label %.body45.i.i.i.i.i.i.i.i.i.i

bb.fw:                                            ; preds = %bb.ft
  %i.adt = icmp samesign ugt i64 %i.adl, 36
  br i1 %i.adt, label %.noexc43.i.i.i.i.i.i.i.i.i.i, label %.noexc47.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc43.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37, !noalias !18015
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37, !noalias !18024
  store i64 %i.adl, ptr %9, align 16, !tbaa !17, !alias.scope !18027, !noalias !18024
  store i32 36, ptr %i.abp, align 16, !tbaa !17, !alias.scope !18027, !noalias !18024
  store i32 2, ptr %i.abq, align 16, !tbaa !17, !alias.scope !18027, !noalias !18024
  store i32 36, ptr %i.abr, align 16, !tbaa !17, !alias.scope !18027, !noalias !18024
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %9)
          to label %.noexc44.i.i.i.i.i.i.i.i.i.i unwind label %bb.gp

.noexc44.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc43.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !18024
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.249) #45
          to label %bb.fx unwind label %bb.fy, !noalias !18015

bb.fx:                                            ; preds = %.noexc44.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.fy:                                            ; preds = %.noexc44.i.i.i.i.i.i.i.i.i.i
  %i.adu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.adv = load ptr, ptr %12, align 8, !tbaa !7, !noalias !18015 ; 2 uses
  %i.adw = icmp eq ptr %i.adv, %i.abs
  br i1 %i.adw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy
  %i.adx = load i64, ptr %i.abs, align 8, !tbaa !17, !noalias !18015
  %i.ady = add i64 %i.adx, 1
  call void @_ZdlPvm(ptr noundef %i.adv, i64 noundef %i.ady) #43, !noalias !18015
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37, !noalias !18015
  br label %.body45.i.i.i.i.i.i.i.i.i.i

.noexc47.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fw
  %i.adz = icmp ult i32 %i.adn, 13                ; 2 uses
  %i.aea = select i1 %i.adz, ptr %i.aba, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41 ; 4 uses
  %i.aeb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39, 4294967295
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.adn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc50.i.i.i.i.i.i.i.i.i.i42, label %.noexc48.i.i.i.i.i.i.i.i.i.i

.noexc48.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc47.i.i.i.i.i.i.i.i.i.i
  %i.aec = load i8, ptr %i.aea, align 1, !tbaa !17, !noalias !18015
  %i.aed = icmp eq i8 %i.aec, 43
  br i1 %i.aed, label %.noexc49.i.i.i.i.i.i.i.i.i.i72, label %.noexc50.i.i.i.i.i.i.i.i.i.i42

.noexc49.i.i.i.i.i.i.i.i.i.i72:                   ; preds = %.noexc48.i.i.i.i.i.i.i.i.i.i
  %.sroa.gep181.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41, i64 1
  %.sroa.sel182.i.i.i.i.i.i.i.i.i.i = select i1 %i.adz, ptr %.sroa.gep180.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep181.i.i.i.i.i.i.i.i.i.i
  br label %.noexc50.i.i.i.i.i.i.i.i.i.i42

.noexc50.i.i.i.i.i.i.i.i.i.i42:                   ; preds = %.noexc49.i.i.i.i.i.i.i.i.i.i72, %.noexc48.i.i.i.i.i.i.i.i.i.i, %.noexc47.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel182.i.i.i.i.i.i.i.i.i.i, %.noexc49.i.i.i.i.i.i.i.i.i.i72 ], [ %i.aea, %.noexc48.i.i.i.i.i.i.i.i.i.i ], [ %i.aea, %.noexc47.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37, !noalias !18015
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.aeb
  %i.aef = trunc nuw nsw i64 %i.adl to i32
  %i.aeg = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.aee, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.aef)
          to label %.noexc51.i.i.i.i.i.i.i.i.i.i56 unwind label %bb.gp ; 2 uses

.noexc51.i.i.i.i.i.i.i.i.i.i56:                   ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i42
  %i.aeh = extractvalue { ptr, i32 } %i.aeg, 0    ; 2 uses
  store ptr %i.aeh, ptr %13, align 8, !noalias !18015
  %i.aei = extractvalue { ptr, i32 } %i.aeg, 1    ; 3 uses
  store i32 %i.aei, ptr %i.abb, align 8, !noalias !18015
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aei, 22
  %.pre76.i.i.i.i.i.i.i.i.i57 = load i32, ptr %18, align 8, !tbaa !17774, !noalias !18030 ; 8 uses
  %.pre77.i.i.i.i.i.i.i.i.i58 = load ptr, ptr %i.aaz, align 8, !noalias !18030 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc52.i.i.i.i.i.i.i.i.i.i59, !prof !45

.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i56
  %.pre83.i.i.i.i.i.i.i.i.i71 = zext i32 %.pre76.i.i.i.i.i.i.i.i.i57 to i64
  br label %.noexc53.i.i.i.i.i.i.i.i.i.i

.noexc52.i.i.i.i.i.i.i.i.i.i59:                   ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i56
  %i.aej = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i57, 13
  %i.aek = select i1 %i.aej, ptr %i.aba, ptr %.pre77.i.i.i.i.i.i.i.i.i58 ; 3 uses
  %i.ael = zext i32 %.pre76.i.i.i.i.i.i.i.i.i57 to i64 ; 7 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.ael
  %.not201.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aeh, %i.aem
  br i1 %.not201.i.i.i.i.i.i.i.i.i.i, label %bb.gg, label %.noexc53.i.i.i.i.i.i.i.i.i.i, !prof !442

.noexc53.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i59, %.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi84.i.i.i.i.i.i.i.i.i60 = phi i64 [ %.pre83.i.i.i.i.i.i.i.i.i71, %.noexc51.i..noexc53.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ael, %.noexc52.i.i.i.i.i.i.i.i.i.i59 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37, !noalias !18015
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37, !noalias !18015
  call void @llvm.experimental.noalias.scope.decl(metadata !18030)
  %i.aen = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i57, 13
  %i.aeo = select i1 %i.aen, ptr %i.aba, ptr %.pre77.i.i.i.i.i.i.i.i.i58 ; 2 uses
  store ptr %i.abn, ptr %15, align 8, !tbaa !341, !alias.scope !18030
  %i.aep = icmp eq ptr %i.aeo, null
  br i1 %i.aep, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i64, label %bb.fz

.noexc.i52.invoke.i.i.i.i.i.i.i.i.i64:            ; preds = %.noexc55.i.i.i.i.i.i.i.i.i.i66, %.noexc53.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i52.cont.i.i.i.i.i.i.i.i.i65 unwind label %bb.gp

.noexc.i52.cont.i.i.i.i.i.i.i.i.i65:              ; preds = %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i64
  unreachable

bb.fz:                                            ; preds = %.noexc53.i.i.i.i.i.i.i.i.i.i
  %i.aeq = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i57, 15
  br i1 %i.aeq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i62, label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i62: ; preds = %bb.fz
  %i.aer = add nuw nsw i64 %.pre-phi84.i.i.i.i.i.i.i.i.i60, 1
  %i.aes = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aer) #44
          to label %.noexc54.i.i.i.i.i.i.i.i.i63 unwind label %bb.gp ; 2 uses

.noexc54.i.i.i.i.i.i.i.i.i63:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i62
  store ptr %i.aes, ptr %15, align 8, !tbaa !7, !alias.scope !18030
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i60, ptr %i.abn, align 8, !tbaa !17, !alias.scope !18030
  br label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i61:      ; preds = %.noexc54.i.i.i.i.i.i.i.i.i63, %bb.fz
  %i.aet = phi ptr [ %i.aes, %.noexc54.i.i.i.i.i.i.i.i.i63 ], [ %i.abn, %bb.fz ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i57, label %bb.gb [
    i32 1, label %bb.ga
    i32 0, label %.noexc54.i.i.i.i.i.i.i.i.i.i
  ]

bb.ga:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i61
  %i.aeu = load i8, ptr %i.aba, align 4, !tbaa !17, !noalias !18030
  store i8 %i.aeu, ptr %i.aet, align 1, !tbaa !17
  br label %.noexc54.i.i.i.i.i.i.i.i.i.i

bb.gb:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aet, ptr nonnull align 1 %i.aeo, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i60, i1 false)
  br label %.noexc54.i.i.i.i.i.i.i.i.i.i

.noexc54.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gb, %bb.ga, %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i61
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i60, ptr %i.abl, align 8, !tbaa !16, !alias.scope !18030
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i60
  store i8 0, ptr %i.aev, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37, !noalias !18033
  store i64 %i.adl, ptr %8, align 16, !tbaa !17, !alias.scope !18036, !noalias !18033
  %i.aew = load ptr, ptr %15, align 8, !tbaa !7, !noalias !18033
  %i.aex = load i64, ptr %i.abl, align 8, !tbaa !16, !noalias !18033
  store ptr %i.aew, ptr %i.abk, align 16, !tbaa !17, !noalias !18033
  store i64 %i.aex, ptr %i.abm, align 8, !tbaa !17, !noalias !18033
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %8)
          to label %bb.gc unwind label %bb.ge

bb.gc:                                            ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !18033
  %i.aey = load ptr, ptr %15, align 8, !tbaa !7, !noalias !18015 ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.abn
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc
  %i.afa = load i64, ptr %i.abn, align 8, !tbaa !17, !noalias !18015
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #43, !noalias !18015
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !18015
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull @.str.244) #45
          to label %bb.gd unwind label %bb.gf, !noalias !18015

bb.gd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ge:                                            ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i
  %i.afc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.afd = load ptr, ptr %15, align 8, !tbaa !7, !noalias !18015 ; 2 uses
  %i.afe = icmp eq ptr %i.afd, %i.abn
  br i1 %i.afe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ge
  %i.aff = load i64, ptr %i.abn, align 8, !tbaa !17, !noalias !18015
  %i.afg = add i64 %i.aff, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afg) #43, !noalias !18015
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !18015
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i.i.i.i.i.i.i

bb.gf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i.i.i.i.i.i.i.i
  %i.afh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.afi = load ptr, ptr %14, align 8, !tbaa !7, !noalias !18015 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.abo
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gf
  %i.afk = load i64, ptr %i.abo, align 8, !tbaa !17, !noalias !18015
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #43, !noalias !18015
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.afc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i.i.i.i.i.i.i.i ], [ %i.afh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i.i.i.i.i.i.i.i ], [ %i.afh, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !18015
  br label %bb.go

bb.gg:                                            ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i59
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aei, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc55.i.i.i.i.i.i.i.i.i.i66, label %_ZN8facebook5velox6StatusD2Ev.exit93.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc55.i.i.i.i.i.i.i.i.i.i66:                   ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37, !noalias !18015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !18015
  store i32 34, ptr %i.a, align 4, !tbaa !17781, !noalias !18015
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37, !noalias !18015
  call void @llvm.experimental.noalias.scope.decl(metadata !18039)
  store ptr %i.abi, ptr %17, align 8, !tbaa !341, !alias.scope !18039
  %i.afm = icmp eq ptr %i.aek, null
  br i1 %i.afm, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i64, label %bb.gh

bb.gh:                                            ; preds = %.noexc55.i.i.i.i.i.i.i.i.i.i66
  %i.afn = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i57, 15
  br i1 %i.afn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i69, label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i69: ; preds = %bb.gh
  %i.afo = add nuw nsw i64 %i.ael, 1
  %i.afp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afo) #44
          to label %.noexc48.i.i.i.i.i.i.i.i.i70 unwind label %bb.gp ; 2 uses

.noexc48.i.i.i.i.i.i.i.i.i70:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i69
  store ptr %i.afp, ptr %17, align 8, !tbaa !7, !alias.scope !18039
  store i64 %i.ael, ptr %i.abi, align 8, !tbaa !17, !alias.scope !18039
  br label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i67

._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i67:      ; preds = %.noexc48.i.i.i.i.i.i.i.i.i70, %bb.gh
  %i.afq = phi ptr [ %i.afp, %.noexc48.i.i.i.i.i.i.i.i.i70 ], [ %i.abi, %bb.gh ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i57, label %bb.gj [
    i32 1, label %bb.gi
    i32 0, label %.noexc56.i.i.i.i.i.i.i.i.i.i68
  ]

bb.gi:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i67
  %i.afr = load i8, ptr %i.aba, align 4, !tbaa !17, !noalias !18039
  store i8 %i.afr, ptr %i.afq, align 1, !tbaa !17
  br label %.noexc56.i.i.i.i.i.i.i.i.i.i68

bb.gj:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afq, ptr nonnull align 1 %i.aek, i64 %i.ael, i1 false)
  br label %.noexc56.i.i.i.i.i.i.i.i.i.i68

.noexc56.i.i.i.i.i.i.i.i.i.i68:                   ; preds = %bb.gj, %bb.gi, %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i67
  store i64 %i.ael, ptr %i.abg, align 8, !tbaa !16, !alias.scope !18039
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.ael
  store i8 0, ptr %i.afs, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !18042
  store ptr %i.abb, ptr %7, align 16, !tbaa !17, !noalias !18042
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.abc, align 8, !tbaa !17, !noalias !18042
  store ptr %i.a, ptr %i.abd, align 16, !tbaa !17, !noalias !18042
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.abe, align 8, !tbaa !17, !noalias !18042
  %i.aft = load ptr, ptr %17, align 8, !tbaa !7, !noalias !18042
  %i.afu = load i64, ptr %i.abg, align 8, !tbaa !16, !noalias !18042
  store ptr %i.aft, ptr %i.abf, align 16, !tbaa !17, !noalias !18042
  store i64 %i.afu, ptr %i.abh, align 8, !tbaa !17, !noalias !18042
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %7)
          to label %bb.gk unwind label %bb.gm

bb.gk:                                            ; preds = %.noexc56.i.i.i.i.i.i.i.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37, !noalias !18042
  %i.afv = load ptr, ptr %17, align 8, !tbaa !7, !noalias !18015 ; 2 uses
  %i.afw = icmp eq ptr %i.afv, %i.abi
  br i1 %i.afw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i.i.i.i.i.i.i.i.i

end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a
          cleanup
  %i.aho = load ptr, ptr %19, align 8, !tbaa !618
  %.not.i95.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aho, null
  br i1 %.not.i95.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.hd

bb.gx:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i46
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.gy:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i55
  %i.ahq = load ptr, ptr %20, align 8, !tbaa !618
  %.not.i97.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahq, null
  br i1 %.not.i97.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i

bb.ha:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i55
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  %i.ahs = load ptr, ptr %20, align 8, !tbaa !618
  %.not.i99.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not.i99.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100.i.i.i.i.i.i.i.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hb, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.hc

bb.hc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100.i.i.i.i.i.i.i.i.i.i, %bb.gx
  %.pn.i37.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ahr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100.i.i.i.i.i.i.i.i.i.i ], [ %i.ahp, %bb.gx ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i
  %i.aht = landingpad { ptr, i32 }
          catch ptr null
  %i.ahu = extractvalue { ptr, i32 } %i.aht, 0
  call void @__clang_call_terminate(ptr %i.ahu) #46
  unreachable

bb.he:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i46
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i45, %_ZN8facebook5velox6StatusD2Ev.exit93.i.i.i.i.i.i.i.i.i.i
  %i.ahv = add nuw i64 %.0218.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ahw = icmp ult i64 %i.ahv, %i.add
  br i1 %i.ahw, label %bb.ft, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !18045

bb.hf:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i77
  %.015217.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.acz, %.lr.ph.i.i.i.i.i.i.i.i.i.i77 ], [ %i.amq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ahx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015217.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ahy = trunc nuw nsw i64 %i.ahx to i32
  %i.ahz = or disjoint i32 %i.ada, %i.ahy         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !366
  %i.aia = load ptr, ptr %.sroa.425.0..sroa_idx.i.i14, align 8, !tbaa !17972, !nonnull !393, !align !891 ; 2 uses
  %i.aib = load ptr, ptr %.sroa.526.0..sroa_idx.i.i15, align 8, !tbaa !17974, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37, !noalias !18046
  %.sroa.0.0.copyload.i101.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aia, align 8, !noalias !18046 ; 3 uses
  %.sroa.2.0..sroa_idx.i102.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %.sroa.2.0.copyload.i103.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i102.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !18046 ; 3 uses
  store i64 %.sroa.0.0.copyload.i101.i.i.i.i.i.i.i.i.i.i, ptr %28, align 8, !noalias !18046
  store ptr %.sroa.2.0.copyload.i103.i.i.i.i.i.i.i.i.i.i, ptr %i.abx, align 8, !noalias !18046
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !3939, !noalias !18049
  %i.aid = sext i32 %i.ahz to i64                 ; 2 uses
  %i.aie = getelementptr inbounds [8 x i8], ptr %i.aic, i64 %i.aid
  %i.aif = load i64, ptr %i.aie, align 8, !tbaa !366, !noalias !18049 ; 6 uses
  %i.aig = icmp slt i64 %i.aif, 2
  %i.aih = trunc i64 %.sroa.0.0.copyload.i101.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.aig, label %.noexc20.i.i.i.i.i.i.i.i.i.i, label %bb.hi, !prof !45

.noexc20.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37, !noalias !18052
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37, !noalias !18055
  store i64 %i.aif, ptr %6, align 16, !tbaa !17, !alias.scope !18058, !noalias !18055
  store i32 2, ptr %i.acr, align 16, !tbaa !17, !alias.scope !18058, !noalias !18055
  store i32 2, ptr %i.acs, align 16, !tbaa !17, !alias.scope !18058, !noalias !18055
  store i32 36, ptr %i.act, align 16, !tbaa !17, !alias.scope !18058, !noalias !18055
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %6)
          to label %.noexc21.i.i.i.i.i.i.i.i.i.i unwind label %bb.ib

.noexc21.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc20.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37, !noalias !18055
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr nonnull @.str.249) #45
          to label %bb.hg unwind label %bb.hh, !noalias !18052

bb.hg:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.hh:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i
  %i.aii = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.aij = load ptr, ptr %21, align 8, !tbaa !7, !noalias !18052 ; 2 uses
  %i.aik = icmp eq ptr %i.aij, %i.acu
  br i1 %i.aik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hh
  %i.ail = load i64, ptr %i.acu, align 8, !tbaa !17, !noalias !18052
  %i.aim = add i64 %i.ail, 1
  call void @_ZdlPvm(ptr noundef %i.aij, i64 noundef %i.aim) #43, !noalias !18052
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37, !noalias !18052
  br label %.body.i.i.i.i.i.i.i.i.i.i82

bb.hi:                                            ; preds = %bb.hf
  %i.ain = icmp samesign ugt i64 %i.aif, 36
  br i1 %i.ain, label %.noexc22.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.i.i.i.i.i.i.i.i.i78, !prof !45

.noexc22.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37, !noalias !18052
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37, !noalias !18061
  store i64 %i.aif, ptr %5, align 16, !tbaa !17, !alias.scope !18064, !noalias !18061
  store i32 36, ptr %i.acn, align 16, !tbaa !17, !alias.scope !18064, !noalias !18061
  store i32 2, ptr %i.aco, align 16, !tbaa !17, !alias.scope !18064, !noalias !18061
  store i32 36, ptr %i.acp, align 16, !tbaa !17, !alias.scope !18064, !noalias !18061
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %5)
          to label %.noexc23.i.i.i.i.i.i.i.i.i.i unwind label %bb.ib

.noexc23.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37, !noalias !18061
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr nonnull @.str.249) #45
          to label %bb.hj unwind label %bb.hk, !noalias !18052

bb.hj:                                            ; preds = %.noexc23.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.hk:                                            ; preds = %.noexc23.i.i.i.i.i.i.i.i.i.i
  %i.aio = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.aip = load ptr, ptr %22, align 8, !tbaa !7, !noalias !18052 ; 2 uses
  %i.aiq = icmp eq ptr %i.aip, %i.acq
  br i1 %i.aiq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hk
  %i.air = load i64, ptr %i.acq, align 8, !tbaa !17, !noalias !18052
  %i.ais = add i64 %i.air, 1
  call void @_ZdlPvm(ptr noundef %i.aip, i64 noundef %i.ais) #43, !noalias !18052
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37, !noalias !18052
  br label %.body.i.i.i.i.i.i.i.i.i.i82

.noexc26.i.i.i.i.i.i.i.i.i.i78:                   ; preds = %bb.hi
  %i.ait = icmp ult i32 %i.aih, 13                ; 2 uses
  %i.aiu = select i1 %i.ait, ptr %i.aby, ptr %.sroa.2.0.copyload.i103.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.aiv = and i64 %.sroa.0.0.copyload.i101.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i.i19.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aih, 0
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i.i.i.i.i.i.i.i.i.i80, label %.noexc27.i.i.i.i.i.i.i.i.i.i79

.noexc27.i.i.i.i.i.i.i.i.i.i79:                   ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i78
  %i.aiw = load i8, ptr %i.aiu, align 1, !tbaa !17, !noalias !18052
  %i.aix = icmp eq i8 %i.aiw, 43
  br i1 %i.aix, label %.noexc28.i.i.i.i.i.i.i.i.i.i107, label %.noexc29.i.i.i.i.i.i.i.i.i.i80

.noexc28.i.i.i.i.i.i.i.i.i.i107:                  ; preds = %.noexc27.i.i.i.i.i.i.i.i.i.i79
  %.sroa.gep163.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i103.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel.i.i.i.i.i.i.i.i.i.i108 = select i1 %i.ait, ptr %.sroa.gep.i.i.i.i.i.i.i.i.i.i32, ptr %.sroa.gep163.i.i.i.i.i.i.i.i.i.i
  br label %.noexc29.i.i.i.i.i.i.i.i.i.i80

.noexc29.i.i.i.i.i.i.i.i.i.i80:                   ; preds = %.noexc28.i.i.i.i.i.i.i.i.i.i107, %.noexc27.i.i.i.i.i.i.i.i.i.i79, %.noexc26.i.i.i.i.i.i.i.i.i.i78
  %.014.i.i.i.i.i.i.i.i.i.i.i.i81 = phi ptr [ %.sroa.sel.i.i.i.i.i.i.i.i.i.i108, %.noexc28.i.i.i.i.i.i.i.i.i.i107 ], [ %i.aiu, %.noexc27.i.i.i.i.i.i.i.i.i.i79 ], [ %i.aiu, %.noexc26.i.i.i.i.i.i.i.i.i.i78 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37, !noalias !18052
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %i.aiv
  %i.aiz = trunc nuw nsw i64 %i.aif to i32
  %i.aja = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i81, ptr noundef %i.aiy, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.aiz)
          to label %.noexc30.i.i.i.i.i.i.i.i.i.i85 unwind label %bb.ib ; 2 uses

.noexc30.i.i.i.i.i.i.i.i.i.i85:                   ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i80
  %i.ajb = extractvalue { ptr, i32 } %i.aja, 0    ; 2 uses
  store ptr %i.ajb, ptr %23, align 8, !noalias !18052
  %i.ajc = extractvalue { ptr, i32 } %i.aja, 1    ; 3 uses
  store i32 %i.ajc, ptr %i.abz, align 8, !noalias !18052
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i86 = icmp eq i32 %i.ajc, 22
  %.pre80.i.i.i.i.i.i.i.i.i87 = load i32, ptr %28, align 8, !tbaa !17774, !noalias !18067 ; 8 uses
  %.pre81.i.i.i.i.i.i.i.i.i88 = load ptr, ptr %i.abx, align 8, !noalias !18067 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i86, label %.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc31.i.i.i.i.i.i.i.i.i.i89, !prof !45

.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i85
  %.pre82.i.i.i.i.i.i.i.i.i106 = zext i32 %.pre80.i.i.i.i.i.i.i.i.i87 to i64
  br label %.noexc32.i.i.i.i.i.i.i.i.i.i90

.noexc31.i.i.i.i.i.i.i.i.i.i89:                   ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i85
  %i.ajd = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i87, 13
  %i.aje = select i1 %i.ajd, ptr %i.aby, ptr %.pre81.i.i.i.i.i.i.i.i.i88 ; 3 uses
  %i.ajf = zext i32 %.pre80.i.i.i.i.i.i.i.i.i87 to i64 ; 7 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aje, i64 %i.ajf
  %.not200.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajb, %i.ajg
  br i1 %.not200.i.i.i.i.i.i.i.i.i.i, label %bb.hs, label %.noexc32.i.i.i.i.i.i.i.i.i.i90, !prof !442

.noexc32.i.i.i.i.i.i.i.i.i.i90:                   ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i89, %.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i91 = phi i64 [ %.pre82.i.i.i.i.i.i.i.i.i106, %.noexc30.i..noexc32.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ajf, %.noexc31.i.i.i.i.i.i.i.i.i.i89 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37, !noalias !18052
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37, !noalias !18052
  call void @llvm.experimental.noalias.scope.decl(metadata !18067)
  %i.ajh = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i87, 13
  %i.aji = select i1 %i.ajh, ptr %i.aby, ptr %.pre81.i.i.i.i.i.i.i.i.i88 ; 2 uses
  store ptr %i.acl, ptr %25, align 8, !tbaa !341, !alias.scope !18067
  %i.ajj = icmp eq ptr %i.aji, null
  br i1 %i.ajj, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i98, label %bb.hl

.noexc.i40.invoke.i.i.i.i.i.i.i.i.i98:            ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i101, %.noexc32.i.i.i.i.i.i.i.i.i.i90
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i40.cont.i.i.i.i.i.i.i.i.i99 unwind label %bb.ib

.noexc.i40.cont.i.i.i.i.i.i.i.i.i99:              ; preds = %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i98
  unreachable

bb.hl:                                            ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i90
  %i.ajk = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i87, 15
  br i1 %i.ajk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i96, label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i96: ; preds = %bb.hl
  %i.ajl = add nuw nsw i64 %.pre-phi.i.i.i.i.i.i.i.i.i91, 1
  %i.ajm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajl) #44
          to label %.noexc42.i.i.i.i.i.i.i.i.i97 unwind label %bb.ib ; 2 uses

.noexc42.i.i.i.i.i.i.i.i.i97:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i96
  store ptr %i.ajm, ptr %25, align 8, !tbaa !7, !alias.scope !18067
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i91, ptr %i.acl, align 8, !tbaa !17, !alias.scope !18067
  br label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i92

._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i92:      ; preds = %.noexc42.i.i.i.i.i.i.i.i.i97, %bb.hl
  %i.ajn = phi ptr [ %i.ajm, %.noexc42.i.i.i.i.i.i.i.i.i97 ], [ %i.acl, %bb.hl ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i87, label %bb.hn [
    i32 1, label %bb.hm
    i32 0, label %.noexc33.i.i.i.i.i.i.i.i.i.i93
  ]

bb.hm:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i92
  %i.ajo = load i8, ptr %i.aby, align 4, !tbaa !17, !noalias !18067
  store i8 %i.ajo, ptr %i.ajn, align 1, !tbaa !17
  br label %.noexc33.i.i.i.i.i.i.i.i.i.i93

bb.hn:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajn, ptr nonnull align 1 %i.aji, i64 %.pre-phi.i.i.i.i.i.i.i.i.i91, i1 false)
  br label %.noexc33.i.i.i.i.i.i.i.i.i.i93

.noexc33.i.i.i.i.i.i.i.i.i.i93:                   ; preds = %bb.hn, %bb.hm, %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i92
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i91, ptr %i.acj, align 8, !tbaa !16, !alias.scope !18067
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %.pre-phi.i.i.i.i.i.i.i.i.i91
  store i8 0, ptr %i.ajp, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !18070
  store i64 %i.aif, ptr %4, align 16, !tbaa !17, !alias.scope !18073, !noalias !18070
  %i.ajq = load ptr, ptr %25, align 8, !tbaa !7, !noalias !18070
  %i.ajr = load i64, ptr %i.acj, align 8, !tbaa !16, !noalias !18070
  store ptr %i.ajq, ptr %i.aci, align 16, !tbaa !17, !noalias !18070
  store i64 %i.ajr, ptr %i.ack, align 8, !tbaa !17, !noalias !18070
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %4)
          to label %bb.ho unwind label %bb.hq

bb.ho:                                            ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !18070
  %i.ajs = load ptr, ptr %25, align 8, !tbaa !7, !noalias !18052 ; 2 uses
  %i.ajt = icmp eq ptr %i.ajs, %i.acl
  br i1 %i.ajt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ho
  %i.aju = load i64, ptr %i.acl, align 8, !tbaa !17, !noalias !18052
  %i.ajv = add i64 %i.aju, 1
  call void @_ZdlPvm(ptr noundef %i.ajs, i64 noundef %i.ajv) #43, !noalias !18052
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37, !noalias !18052
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr nonnull @.str.244) #45
          to label %bb.hp unwind label %bb.hr, !noalias !18052

bb.hp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.hq:                                            ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i93
  %i.ajw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ajx = load ptr, ptr %25, align 8, !tbaa !7, !noalias !18052 ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, %i.acl
  br i1 %i.ajy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hq
  %i.ajz = load i64, ptr %i.acl, align 8, !tbaa !17, !noalias !18052
  %i.aka = add i64 %i.ajz, 1
  call void @_ZdlPvm(ptr noundef %i.ajx, i64 noundef %i.aka) #43, !noalias !18052
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37, !noalias !18052
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i.i.i.i.i.i.i.i.i.i
  %i.akb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.akc = load ptr, ptr %24, align 8, !tbaa !7, !noalias !18052 ; 2 uses
  %i.akd = icmp eq ptr %i.akc, %i.acm
  br i1 %i.akd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr
  %i.ake = load i64, ptr %i.acm, align 8, !tbaa !17, !noalias !18052
  %i.akf = add i64 %i.ake, 1
  call void @_ZdlPvm(ptr noundef %i.akc, i64 noundef %i.akf) #43, !noalias !18052
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i94 = phi { ptr, i32 } [ %i.ajw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i.i.i.i.i.i.i ], [ %i.akb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i.i.i.i.i.i.i.i.i.i ], [ %i.akb, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37, !noalias !18052
  br label %bb.ia

bb.hs:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i89
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i100 = icmp eq i32 %i.ajc, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i100, label %.noexc34.i.i.i.i.i.i.i.i.i.i101, label %_ZN8facebook5velox6StatusD2Ev.exit149.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc34.i.i.i.i.i.i.i.i.i.i101:                  ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37, !noalias !18052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37, !noalias !18052
  store i32 34, ptr %i.c, align 4, !tbaa !17781, !noalias !18052
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37, !noalias !18052
  call void @llvm.experimental.noalias.scope.decl(metadata !18076)
  store ptr %i.acg, ptr %27, align 8, !tbaa !341, !alias.scope !18076
  %i.akg = icmp eq ptr %i.aje, null
  br i1 %i.akg, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i98, label %bb.ht

bb.ht:                                            ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i101
  %i.akh = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i87, 15
  br i1 %i.akh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i104, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i104: ; preds = %bb.ht
  %i.aki = add nuw nsw i64 %i.ajf, 1
  %i.akj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aki) #44
          to label %.noexc37.i.i.i.i.i.i.i.i.i105 unwind label %bb.ib ; 2 uses

.noexc37.i.i.i.i.i.i.i.i.i105:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i104
  store ptr %i.akj, ptr %27, align 8, !tbaa !7, !alias.scope !18076
  store i64 %i.ajf, ptr %i.acg, align 8, !tbaa !17, !alias.scope !18076
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i102

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i102:       ; preds = %.noexc37.i.i.i.i.i.i.i.i.i105, %bb.ht
  %i.akk = phi ptr [ %i.akj, %.noexc37.i.i.i.i.i.i.i.i.i105 ], [ %i.acg, %bb.ht ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i87, label %bb.hv [
    i32 1, label %bb.hu
    i32 0, label %.noexc35.i.i.i.i.i.i.i.i.i.i
  ]

bb.hu:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i102
  %i.akl = load i8, ptr %i.aby, align 4, !tbaa !17, !noalias !18076
  store i8 %i.akl, ptr %i.akk, align 1, !tbaa !17
  br label %.noexc35.i.i.i.i.i.i.i.i.i.i

bb.hv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akk, ptr nonnull align 1 %i.aje, i64 %i.ajf, i1 false)
  br label %.noexc35.i.i.i.i.i.i.i.i.i.i

.noexc35.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hv, %bb.hu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i102
  store i64 %i.ajf, ptr %i.ace, align 8, !tbaa !16, !alias.scope !18076
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.ajf
  store i8 0, ptr %i.akm, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !18079
  store ptr %i.abz, ptr %3, align 16, !tbaa !17, !noalias !18079
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.aca, align 8, !tbaa !17, !noalias !18079
  store ptr %i.c, ptr %i.acb, align 16, !tbaa !17, !noalias !18079
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.acc, align 8, !tbaa !17, !noalias !18079
  %i.akn = load ptr, ptr %27, align 8, !tbaa !7, !noalias !18079
  %i.ako = load i64, ptr %i.ace, align 8, !tbaa !16, !noalias !18079
  store ptr %i.akn, ptr %i.acd, align 16, !tbaa !17, !noalias !18079
  store i64 %i.ako, ptr %i.acf, align 8, !tbaa !17, !noalias !18079
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %3)
          to label %bb.hw unwind label %bb.hy

bb.hw:                                            ; preds = %.noexc35.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !18079
  %i.akp = load ptr, ptr %27, align 8, !tbaa !7, !noalias !18052 ; 2 uses
  %i.akq = icmp eq ptr %i.akp, %i.acg
  br i1 %i.akq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i.i.i.i.i.i.i.i.i

end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 7 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %55, i64 48
  %i.ii = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %56, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %74, i64 4 ; 5 uses
  %.sroa.gep.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %74, i64 5
  %i.ip = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %49, i64 40
  %i.iw = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 7 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %51, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.jk = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  br label %bb.aw

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %bb.av
  %.not34.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gq, %i.gu
  br i1 %.not34.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i.i.i.i, label %bb.dw

bb.aw:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.jl = phi i32 [ %i.ho, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.th, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.065.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.jl, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jm = sdiv i32 %.065.i.i.i.i.i.i.i.i.i, 64    ; 3 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.jn
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !366 ; 2 uses
  switch i64 %i.jp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.ax
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.aw
  %i.jq = shl nsw i32 %i.jm, 6
  br label %bb.ck

bb.ax:                                            ; preds = %bb.aw
  %i.jr = shl nsw i32 %i.jm, 6                    ; 2 uses
  %i.js = add i32 %i.jr, 64
  %i.jt = sext i32 %i.js to i64
  %.0.off.i.i.i.i.i.i.i.i.i = add i32 %.065.i.i.i.i.i.i.i.i.i, 127
  %.not223.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i, 64
  br i1 %.not223.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph222.i.i.i.i.i.i.i.i.i.i

.lr.ph222.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ax
  %i.ju = sext i32 %i.jr to i64
  br label %bb.ay

bb.ay:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph222.i.i.i.i.i.i.i.i.i.i
  %.0217.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ju, %.lr.ph222.i.i.i.i.i.i.i.i.i.i ], [ %i.ol, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  store i64 0, ptr %i.j, align 8, !tbaa !366
  %i.jv = load ptr, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !tbaa !18084, !nonnull !393, !align !891
  %i.jw = load ptr, ptr %.sroa.526.0..sroa_idx.i.i, align 8, !tbaa !18087, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #37, !noalias !18122
  %i.jx = trunc i64 %.0217.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !17738, !noalias !18122
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.0217.i.i.i.i.i.i.i.i.i.i, 32
  %i.jz = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 28
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 %i.jz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ka, align 8, !noalias !18122 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !18122 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %64, align 8, !noalias !18122
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hp, align 8, !noalias !18122
  %i.kb = load i64, ptr %i.jw, align 8, !tbaa !366, !noalias !18125 ; 6 uses
  %i.kc = icmp slt i64 %i.kb, 2
  %i.kd = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.kc, label %.noexc40.i.i.i.i.i.i.i.i.i.i, label %bb.bb, !prof !45

.noexc40.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #37, !noalias !18128
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #37, !noalias !18131
  store i64 %i.kb, ptr %56, align 16, !tbaa !17, !alias.scope !18134, !noalias !18131
  store i32 2, ptr %i.ij, align 16, !tbaa !17, !alias.scope !18134, !noalias !18131
  store i32 2, ptr %i.ik, align 16, !tbaa !17, !alias.scope !18134, !noalias !18131
  store i32 36, ptr %i.il, align 16, !tbaa !17, !alias.scope !18134, !noalias !18131
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %57, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %56)
          to label %.noexc41.i.i.i.i.i.i.i.i.i.i unwind label %bb.bu

.noexc41.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc40.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #37, !noalias !18131
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr nonnull @.str.249) #45
          to label %bb.az unwind label %bb.ba, !noalias !18128

bb.az:                                            ; preds = %.noexc41.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ba:                                            ; preds = %.noexc41.i.i.i.i.i.i.i.i.i.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.kf = load ptr, ptr %57, align 8, !tbaa !7, !noalias !18128 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.im
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.kh = load i64, ptr %i.im, align 8, !tbaa !17, !noalias !18128
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #43, !noalias !18128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #37, !noalias !18128
  br label %.body44.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ay
  %i.kj = icmp samesign ugt i64 %i.kb, 36
  br i1 %i.kj, label %.noexc42.i.i.i.i.i.i.i.i.i.i, label %.noexc46.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc42.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #37, !noalias !18128
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #37, !noalias !18137
  store i64 %i.kb, ptr %55, align 16, !tbaa !17, !alias.scope !18140, !noalias !18137
  store i32 36, ptr %i.if, align 16, !tbaa !17, !alias.scope !18140, !noalias !18137
  store i32 2, ptr %i.ig, align 16, !tbaa !17, !alias.scope !18140, !noalias !18137
  store i32 36, ptr %i.ih, align 16, !tbaa !17, !alias.scope !18140, !noalias !18137
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %55)
          to label %.noexc43.i.i.i.i.i.i.i.i.i.i unwind label %bb.bu

.noexc43.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #37, !noalias !18137
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr nonnull @.str.249) #45
          to label %bb.bc unwind label %bb.bd, !noalias !18128

bb.bc:                                            ; preds = %.noexc43.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.bd:                                            ; preds = %.noexc43.i.i.i.i.i.i.i.i.i.i
  %i.kk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.kl = load ptr, ptr %58, align 8, !tbaa !7, !noalias !18128 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ii
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.kn = load i64, ptr %i.ii, align 8, !tbaa !17, !noalias !18128
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #43, !noalias !18128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #37, !noalias !18128
  br label %.body44.i.i.i.i.i.i.i.i.i.i

.noexc46.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bb
  %i.kp = icmp ult i32 %i.kd, 13                  ; 2 uses
  %i.kq = select i1 %i.kp, ptr %i.hq, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.kr = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc49.i.i.i.i.i.i.i.i.i.i, label %.noexc47.i.i.i.i.i.i.i.i.i.i

.noexc47.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc46.i.i.i.i.i.i.i.i.i.i
  %i.ks = load i8, ptr %i.kq, align 1, !tbaa !17, !noalias !18128
  %i.kt = icmp eq i8 %i.ks, 43
  br i1 %i.kt, label %.noexc48.i.i.i.i.i.i.i.i.i.i, label %.noexc49.i.i.i.i.i.i.i.i.i.i

.noexc48.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc47.i.i.i.i.i.i.i.i.i.i
  %.sroa.gep180.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel181.i.i.i.i.i.i.i.i.i.i = select i1 %i.kp, ptr %.sroa.gep179.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep180.i.i.i.i.i.i.i.i.i.i
  br label %.noexc49.i.i.i.i.i.i.i.i.i.i

.noexc49.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc48.i.i.i.i.i.i.i.i.i.i, %.noexc47.i.i.i.i.i.i.i.i.i.i, %.noexc46.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel181.i.i.i.i.i.i.i.i.i.i, %.noexc48.i.i.i.i.i.i.i.i.i.i ], [ %i.kq, %.noexc47.i.i.i.i.i.i.i.i.i.i ], [ %i.kq, %.noexc46.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #37, !noalias !18128
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kr
  %i.kv = trunc nuw nsw i64 %i.kb to i32
  %i.kw = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.ku, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.kv)
          to label %.noexc50.i.i.i.i.i.i.i.i.i.i unwind label %bb.bu ; 2 uses

.noexc50.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc49.i.i.i.i.i.i.i.i.i.i
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0      ; 2 uses
  store ptr %i.kx, ptr %59, align 8, !noalias !18128
  %i.ky = extractvalue { ptr, i32 } %i.kw, 1      ; 3 uses
  store i32 %i.ky, ptr %i.hr, align 8, !noalias !18128
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ky, 22
  %.pre76.i.i.i.i.i.i.i.i.i = load i32, ptr %64, align 8, !tbaa !17774, !noalias !18143 ; 8 uses
  %.pre77.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hp, align 8, !noalias !18143 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc50.i..noexc52.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc51.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc50.i..noexc52.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i
  %.pre83.i.i.i.i.i.i.i.i.i = zext i32 %.pre76.i.i.i.i.i.i.i.i.i to i64
  br label %.noexc52.i.i.i.i.i.i.i.i.i.i

.noexc51.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i
  %i.kz = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i, 13
  %i.la = select i1 %i.kz, ptr %i.hq, ptr %.pre77.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.lb = zext i32 %.pre76.i.i.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb
  %.not200.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kx, %i.lc
  br i1 %.not200.i.i.i.i.i.i.i.i.i.i, label %bb.bl, label %.noexc52.i.i.i.i.i.i.i.i.i.i, !prof !442

.noexc52.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i, %.noexc50.i..noexc52.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi84.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre83.i.i.i.i.i.i.i.i.i, %.noexc50.i..noexc52.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.lb, %.noexc51.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #37, !noalias !18128
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #37, !noalias !18128
  call void @llvm.experimental.noalias.scope.decl(metadata !18143)
  %i.ld = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i, 13
  %i.le = select i1 %i.ld, ptr %i.hq, ptr %.pre77.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.id, ptr %61, align 8, !tbaa !341, !alias.scope !18143
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i, label %bb.be

.noexc.i52.invoke.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i, %.noexc52.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i52.cont.i.i.i.i.i.i.i.i.i unwind label %bb.bu

.noexc.i52.cont.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i
  unreachable

bb.be:                                            ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i
  %i.lg = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i: ; preds = %bb.be
  %i.lh = add nuw nsw i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, 1
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #44
          to label %.noexc54.i.i.i.i.i.i.i.i.i unwind label %bb.bu ; 2 uses

.noexc54.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i
  store ptr %i.li, ptr %61, align 8, !tbaa !7, !alias.scope !18143
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, ptr %i.id, align 8, !tbaa !17, !alias.scope !18143
  br label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc54.i.i.i.i.i.i.i.i.i, %bb.be
  %i.lj = phi ptr [ %i.li, %.noexc54.i.i.i.i.i.i.i.i.i ], [ %i.id, %bb.be ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i, label %bb.bg [
    i32 1, label %bb.bf
    i32 0, label %.noexc53.i.i.i.i.i.i.i.i.i.i
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i
  %i.lk = load i8, ptr %i.hq, align 4, !tbaa !17, !noalias !18143
  store i8 %i.lk, ptr %i.lj, align 1, !tbaa !17
  br label %.noexc53.i.i.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lj, ptr nonnull align 1 %i.le, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.noexc53.i.i.i.i.i.i.i.i.i.i

.noexc53.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i, ptr %i.ib, align 8, !tbaa !16, !alias.scope !18143
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.ll, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #37, !noalias !18146
  store i64 %i.kb, ptr %54, align 16, !tbaa !17, !alias.scope !18149, !noalias !18146
  %i.lm = load ptr, ptr %61, align 8, !tbaa !7, !noalias !18146
  %i.ln = load i64, ptr %i.ib, align 8, !tbaa !16, !noalias !18146
  store ptr %i.lm, ptr %i.ia, align 16, !tbaa !17, !noalias !18146
  store i64 %i.ln, ptr %i.ic, align 8, !tbaa !17, !noalias !18146
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %54)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %.noexc53.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37, !noalias !18146
  %i.lo = load ptr, ptr %61, align 8, !tbaa !7, !noalias !18128 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.id
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.lq = load i64, ptr %i.id, align 8, !tbaa !17, !noalias !18128
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #43, !noalias !18128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #37, !noalias !18128
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr nonnull @.str.244) #45
          to label %bb.bi unwind label %bb.bk, !noalias !18128

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.bj:                                            ; preds = %.noexc53.i.i.i.i.i.i.i.i.i.i
  %i.ls = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.lt = load ptr, ptr %61, align 8, !tbaa !7, !noalias !18128 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.id
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj
  %i.lv = load i64, ptr %i.id, align 8, !tbaa !17, !noalias !18128
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #43, !noalias !18128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #37, !noalias !18128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i.i.i.i.i
  %i.lx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ly = load ptr, ptr %60, align 8, !tbaa !7, !noalias !18128 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ie
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bk
  %i.ma = load i64, ptr %i.ie, align 8, !tbaa !17, !noalias !18128
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #43, !noalias !18128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i.i.i.i.i.i.i ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i.i.i.i.i ], [ %i.lx, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #37, !noalias !18128
  br label %bb.bt

bb.bl:                                            ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ky, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc54.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit92.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc54.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #37, !noalias !18128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37, !noalias !18128
  store i32 34, ptr %i.i, align 4, !tbaa !17781, !noalias !18128
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #37, !noalias !18128
  call void @llvm.experimental.noalias.scope.decl(metadata !18152)
  store ptr %i.hy, ptr %63, align 8, !tbaa !341, !alias.scope !18152
  %i.mc = icmp eq ptr %i.la, null
  br i1 %i.mc, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i
  %i.md = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm
  %i.me = add nuw nsw i64 %i.lb, 1
  %i.mf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #44
          to label %.noexc48.i.i.i.i.i.i.i.i.i unwind label %bb.bu ; 2 uses

.noexc48.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i
  store ptr %i.mf, ptr %63, align 8, !tbaa !7, !alias.scope !18152
  store i64 %i.lb, ptr %i.hy, align 8, !tbaa !17, !alias.scope !18152
  br label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc48.i.i.i.i.i.i.i.i.i, %bb.bm
  %i.mg = phi ptr [ %i.mf, %.noexc48.i.i.i.i.i.i.i.i.i ], [ %i.hy, %bb.bm ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i, label %bb.bo [
    i32 1, label %bb.bn
    i32 0, label %.noexc55.i.i.i.i.i.i.i.i.i.i
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i
  %i.mh = load i8, ptr %i.hq, align 4, !tbaa !17, !noalias !18152
  store i8 %i.mh, ptr %i.mg, align 1, !tbaa !17
  br label %.noexc55.i.i.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mg, ptr nonnull align 1 %i.la, i64 %i.lb, i1 false)
  br label %.noexc55.i.i.i.i.i.i.i.i.i.i

.noexc55.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i
  store i64 %i.lb, ptr %i.hw, align 8, !tbaa !16, !alias.scope !18152
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.lb
  store i8 0, ptr %i.mi, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #37, !noalias !18155
  store ptr %i.hr, ptr %53, align 16, !tbaa !17, !noalias !18155
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.hs, align 8, !tbaa !17, !noalias !18155
  store ptr %i.i, ptr %i.ht, align 16, !tbaa !17, !noalias !18155
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.hu, align 8, !tbaa !17, !noalias !18155
  %i.mj = load ptr, ptr %63, align 8, !tbaa !7, !noalias !18155
  %i.mk = load i64, ptr %i.hw, align 8, !tbaa !16, !noalias !18155
  store ptr %i.mj, ptr %i.hv, align 16, !tbaa !17, !noalias !18155
  store i64 %i.mk, ptr %i.hx, align 8, !tbaa !17, !noalias !18155
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %53)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %.noexc55.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37, !noalias !18155
  %i.ml = load ptr, ptr %63, align 8, !tbaa !7, !noalias !18128 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.hy
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i.i.i.i.i.i.i.i.i

end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a
          cleanup
  %i.oe = load ptr, ptr %65, align 8, !tbaa !618
  %.not.i94.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not.i94.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95.i.i.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %65) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #37
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ci

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i
  %i.og = load ptr, ptr %66, align 8, !tbaa !618
  %.not.i96.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i96.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97.i.i.i.i.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %66) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #37
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i
  %i.oh = landingpad { ptr, i32 }
          cleanup
  %i.oi = load ptr, ptr %66, align 8, !tbaa !618
  %.not.i98.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not.i98.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %66) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #37
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i, %bb.cc
  %.pn.i36.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.oh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i ], [ %i.of, %bb.cc ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95.i.i.i.i.i.i.i.i.i.i
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #46
  unreachable

bb.cj:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit92.i.i.i.i.i.i.i.i.i.i
  %i.ol = add nuw i64 %.0217.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.om = icmp ult i64 %i.ol, %i.jt
  br i1 %i.om, label %bb.ay, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderIlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !18158

bb.ck:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.015216.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.tg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.on = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015216.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = or disjoint i32 %i.jq, %i.oo            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  store i64 0, ptr %i.l, align 8, !tbaa !366
  %i.oq = load ptr, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !tbaa !18084, !nonnull !393, !align !891
  %i.or = load ptr, ptr %.sroa.526.0..sroa_idx.i.i, align 8, !tbaa !18087, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #37, !noalias !18159
  %i.os = load ptr, ptr %i.oq, align 8, !tbaa !17738, !noalias !18159
  %i.ot = sext i32 %i.op to i64                   ; 2 uses
  %i.ou = getelementptr inbounds [16 x i8], ptr %i.os, i64 %i.ot ; 2 uses
  %.sroa.0.0.copyload.i100.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ou, align 8, !noalias !18159 ; 3 uses
  %.sroa.2.0..sroa_idx.i101.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.2.0.copyload.i102.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i101.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !18159 ; 3 uses
  store i64 %.sroa.0.0.copyload.i100.i.i.i.i.i.i.i.i.i.i, ptr %74, align 8, !noalias !18159
  store ptr %.sroa.2.0.copyload.i102.i.i.i.i.i.i.i.i.i.i, ptr %i.in, align 8, !noalias !18159
  %i.ov = load i64, ptr %i.or, align 8, !tbaa !366, !noalias !18162 ; 6 uses
  %i.ow = icmp slt i64 %i.ov, 2
  %i.ox = trunc i64 %.sroa.0.0.copyload.i100.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.ow, label %.noexc19.i.i.i.i.i.i.i.i.i.i, label %bb.cn, !prof !45

.noexc19.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #37, !noalias !18165
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #37, !noalias !18168
  store i64 %i.ov, ptr %52, align 16, !tbaa !17, !alias.scope !18171, !noalias !18168
  store i32 2, ptr %i.jh, align 16, !tbaa !17, !alias.scope !18171, !noalias !18168
  store i32 2, ptr %i.ji, align 16, !tbaa !17, !alias.scope !18171, !noalias !18168
  store i32 36, ptr %i.jj, align 16, !tbaa !17, !alias.scope !18171, !noalias !18168
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %67, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %52)
          to label %.noexc20.i.i.i.i.i.i.i.i.i.i unwind label %bb.dg

.noexc20.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc19.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #37, !noalias !18168
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %67, ptr nonnull @.str.249) #45
          to label %bb.cl unwind label %bb.cm, !noalias !18165

bb.cl:                                            ; preds = %.noexc20.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cm:                                            ; preds = %.noexc20.i.i.i.i.i.i.i.i.i.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.oz = load ptr, ptr %67, align 8, !tbaa !7, !noalias !18165 ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.jk
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm
  %i.pb = load i64, ptr %i.jk, align 8, !tbaa !17, !noalias !18165
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pc) #43, !noalias !18165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #37, !noalias !18165
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.ck
  %i.pd = icmp samesign ugt i64 %i.ov, 36
  br i1 %i.pd, label %.noexc21.i.i.i.i.i.i.i.i.i.i, label %.noexc25.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc21.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #37, !noalias !18165
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #37, !noalias !18174
  store i64 %i.ov, ptr %51, align 16, !tbaa !17, !alias.scope !18177, !noalias !18174
  store i32 36, ptr %i.jd, align 16, !tbaa !17, !alias.scope !18177, !noalias !18174
  store i32 2, ptr %i.je, align 16, !tbaa !17, !alias.scope !18177, !noalias !18174
  store i32 36, ptr %i.jf, align 16, !tbaa !17, !alias.scope !18177, !noalias !18174
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %51)
          to label %.noexc22.i.i.i.i.i.i.i.i.i.i unwind label %bb.dg

.noexc22.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37, !noalias !18174
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %68, ptr nonnull @.str.249) #45
          to label %bb.co unwind label %bb.cp, !noalias !18165

bb.co:                                            ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cp:                                            ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i
  %i.pe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.pf = load ptr, ptr %68, align 8, !tbaa !7, !noalias !18165 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.jg
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp
  %i.ph = load i64, ptr %i.jg, align 8, !tbaa !17, !noalias !18165
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #43, !noalias !18165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #37, !noalias !18165
  br label %.body.i.i.i.i.i.i.i.i.i.i

.noexc25.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cn
  %i.pj = icmp ult i32 %i.ox, 13                  ; 2 uses
  %i.pk = select i1 %i.pj, ptr %i.io, ptr %.sroa.2.0.copyload.i102.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.pl = and i64 %.sroa.0.0.copyload.i100.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i.i18.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ox, 0
  br i1 %.not.i.i18.i.i.i.i.i.i.i.i.i.i, label %.noexc28.i.i.i.i.i.i.i.i.i.i, label %.noexc26.i.i.i.i.i.i.i.i.i.i

.noexc26.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc25.i.i.i.i.i.i.i.i.i.i
  %i.pm = load i8, ptr %i.pk, align 1, !tbaa !17, !noalias !18165
  %i.pn = icmp eq i8 %i.pm, 43
  br i1 %i.pn, label %.noexc27.i.i.i.i.i.i.i.i.i.i, label %.noexc28.i.i.i.i.i.i.i.i.i.i

.noexc27.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i
  %.sroa.gep162.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i102.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel.i.i.i.i.i.i.i.i.i.i = select i1 %i.pj, ptr %.sroa.gep.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep162.i.i.i.i.i.i.i.i.i.i
  br label %.noexc28.i.i.i.i.i.i.i.i.i.i

.noexc28.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc27.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel.i.i.i.i.i.i.i.i.i.i, %.noexc27.i.i.i.i.i.i.i.i.i.i ], [ %i.pk, %.noexc26.i.i.i.i.i.i.i.i.i.i ], [ %i.pk, %.noexc25.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #37, !noalias !18165
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pl
  %i.pp = trunc nuw nsw i64 %i.ov to i32
  %i.pq = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.po, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.pp)
          to label %.noexc29.i.i.i.i.i.i.i.i.i.i unwind label %bb.dg ; 2 uses

.noexc29.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc28.i.i.i.i.i.i.i.i.i.i
  %i.pr = extractvalue { ptr, i32 } %i.pq, 0      ; 2 uses
  store ptr %i.pr, ptr %69, align 8, !noalias !18165
  %i.ps = extractvalue { ptr, i32 } %i.pq, 1      ; 3 uses
  store i32 %i.ps, ptr %i.ip, align 8, !noalias !18165
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ps, 22
  %.pre80.i.i.i.i.i.i.i.i.i = load i32, ptr %74, align 8, !tbaa !17774, !noalias !18180 ; 8 uses
  %.pre81.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !noalias !18180 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i
  %.pre82.i.i.i.i.i.i.i.i.i = zext i32 %.pre80.i.i.i.i.i.i.i.i.i to i64
  br label %.noexc31.i.i.i.i.i.i.i.i.i.i

.noexc30.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i
  %i.pt = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i, 13
  %i.pu = select i1 %i.pt, ptr %i.io, ptr %.pre81.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.pv = zext i32 %.pre80.i.i.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pv
  %.not199.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pr, %i.pw
  br i1 %.not199.i.i.i.i.i.i.i.i.i.i, label %bb.cx, label %.noexc31.i.i.i.i.i.i.i.i.i.i, !prof !442

.noexc31.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i, %.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre82.i.i.i.i.i.i.i.i.i, %.noexc29.i..noexc31.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.pv, %.noexc30.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #37, !noalias !18165
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #37, !noalias !18165
  call void @llvm.experimental.noalias.scope.decl(metadata !18180)
  %i.px = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i, 13
  %i.py = select i1 %i.px, ptr %i.io, ptr %.pre81.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.jb, ptr %71, align 8, !tbaa !341, !alias.scope !18180
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i, label %bb.cq

.noexc.i40.invoke.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i40.cont.i.i.i.i.i.i.i.i.i unwind label %bb.dg

.noexc.i40.cont.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i
  unreachable

bb.cq:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i
  %i.qa = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i: ; preds = %bb.cq
  %i.qb = add nuw nsw i64 %.pre-phi.i.i.i.i.i.i.i.i.i, 1
  %i.qc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qb) #44
          to label %.noexc42.i.i.i.i.i.i.i.i.i unwind label %bb.dg ; 2 uses

.noexc42.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i
  store ptr %i.qc, ptr %71, align 8, !tbaa !7, !alias.scope !18180
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i, ptr %i.jb, align 8, !tbaa !17, !alias.scope !18180
  br label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc42.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.qd = phi ptr [ %i.qc, %.noexc42.i.i.i.i.i.i.i.i.i ], [ %i.jb, %bb.cq ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i, label %bb.cs [
    i32 1, label %bb.cr
    i32 0, label %.noexc32.i.i.i.i.i.i.i.i.i.i
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i
  %i.qe = load i8, ptr %i.io, align 4, !tbaa !17, !noalias !18180
  store i8 %i.qe, ptr %i.qd, align 1, !tbaa !17
  br label %.noexc32.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.py, i64 %.pre-phi.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.noexc32.i.i.i.i.i.i.i.i.i.i

.noexc32.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i, ptr %i.iz, align 8, !tbaa !16, !alias.scope !18180
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.qf, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #37, !noalias !18183
  store i64 %i.ov, ptr %50, align 16, !tbaa !17, !alias.scope !18186, !noalias !18183
  %i.qg = load ptr, ptr %71, align 8, !tbaa !7, !noalias !18183
  %i.qh = load i64, ptr %i.iz, align 8, !tbaa !16, !noalias !18183
  store ptr %i.qg, ptr %i.iy, align 16, !tbaa !17, !noalias !18183
  store i64 %i.qh, ptr %i.ja, align 8, !tbaa !17, !noalias !18183
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %50)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #37, !noalias !18183
  %i.qi = load ptr, ptr %71, align 8, !tbaa !7, !noalias !18165 ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.jb
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct
  %i.qk = load i64, ptr %i.jb, align 8, !tbaa !17, !noalias !18165
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #43, !noalias !18165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37, !noalias !18165
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr nonnull @.str.244) #45
          to label %bb.cu unwind label %bb.cw, !noalias !18165

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cv:                                            ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i
  %i.qm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.qn = load ptr, ptr %71, align 8, !tbaa !7, !noalias !18165 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.jb
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv
  %i.qp = load i64, ptr %i.jb, align 8, !tbaa !17, !noalias !18165
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #43, !noalias !18165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37, !noalias !18165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i.i.i.i.i.i.i.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.qs = load ptr, ptr %70, align 8, !tbaa !7, !noalias !18165 ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.jc
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %i.qu = load i64, ptr %i.jc, align 8, !tbaa !17, !noalias !18165
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #43, !noalias !18165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.qm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i.i.i.i.i.i.i.i ], [ %i.qr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i.i.i.i.i.i.i.i ], [ %i.qr, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #37, !noalias !18165
  br label %bb.df

bb.cx:                                            ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ps, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc33.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit148.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc33.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #37, !noalias !18165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37, !noalias !18165
  store i32 34, ptr %i.k, align 4, !tbaa !17781, !noalias !18165
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #37, !noalias !18165
  call void @llvm.experimental.noalias.scope.decl(metadata !18189)
  store ptr %i.iw, ptr %73, align 8, !tbaa !341, !alias.scope !18189
  %i.qw = icmp eq ptr %i.pu, null
  br i1 %i.qw, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i
  %i.qx = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cy
  %i.qy = add nuw nsw i64 %i.pv, 1
  %i.qz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #44
          to label %.noexc37.i.i.i.i.i.i.i.i.i unwind label %bb.dg ; 2 uses

.noexc37.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.qz, ptr %73, align 8, !tbaa !7, !alias.scope !18189
  store i64 %i.pv, ptr %i.iw, align 8, !tbaa !17, !alias.scope !18189
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc37.i.i.i.i.i.i.i.i.i, %bb.cy
  %i.ra = phi ptr [ %i.qz, %.noexc37.i.i.i.i.i.i.i.i.i ], [ %i.iw, %bb.cy ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i, label %bb.da [
    i32 1, label %bb.cz
    i32 0, label %.noexc34.i.i.i.i.i.i.i.i.i.i
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rb = load i8, ptr %i.io, align 4, !tbaa !17, !noalias !18189
  store i8 %i.rb, ptr %i.ra, align 1, !tbaa !17
  br label %.noexc34.i.i.i.i.i.i.i.i.i.i

bb.da:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ra, ptr nonnull align 1 %i.pu, i64 %i.pv, i1 false)
  br label %.noexc34.i.i.i.i.i.i.i.i.i.i

.noexc34.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.pv, ptr %i.iu, align 8, !tbaa !16, !alias.scope !18189
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.pv
  store i8 0, ptr %i.rc, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #37, !noalias !18192
  store ptr %i.ip, ptr %49, align 16, !tbaa !17, !noalias !18192
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.iq, align 8, !tbaa !17, !noalias !18192
  store ptr %i.k, ptr %i.ir, align 16, !tbaa !17, !noalias !18192
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.is, align 8, !tbaa !17, !noalias !18192
  %i.rd = load ptr, ptr %73, align 8, !tbaa !7, !noalias !18192
  %i.re = load i64, ptr %i.iu, align 8, !tbaa !16, !noalias !18192
  store ptr %i.rd, ptr %i.it, align 16, !tbaa !17, !noalias !18192
  store i64 %i.re, ptr %i.iv, align 8, !tbaa !17, !noalias !18192
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %49)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37, !noalias !18192
  %i.rf = load ptr, ptr %73, align 8, !tbaa !7, !noalias !18165 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.iw
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i.i.i.i.i.i.i.i

end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a
  %i.abx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aby = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.abz = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.aca = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.acc = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.acd = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ace = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 5 uses
  %.sroa.gep.i.i.i.i.i.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %28, i64 5
  %i.ach = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.acj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.acl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.acm = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aco = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.acr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.act = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.acx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.acy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ada = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.adb = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.adc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  br label %bb.fr

._crit_edge.i.i.i.i.i.i.i.i.i34:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %bb.fq
  %.not34.i.i.i.i.i.i.i.i.i35 = icmp eq i32 %i.aai, %i.aam
  br i1 %.not34.i.i.i.i.i.i.i.i.i35, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiiSS_.exit.i.i.i.i.i.i, label %bb.ir

bb.fr:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i30
  %i.add = phi i32 [ %i.abg, %.lr.ph.i.i.i.i.i.i.i.i.i30 ], [ %i.and, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.065.i.i.i.i.i.i.i.i.i32 = phi i32 [ %i.aal, %.lr.ph.i.i.i.i.i.i.i.i.i30 ], [ %i.add, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ade = sdiv i32 %.065.i.i.i.i.i.i.i.i.i32, 64 ; 3 uses
  %i.adf = sext i32 %i.ade to i64
  %i.adg = getelementptr inbounds [8 x i8], ptr %i.aae, i64 %i.adf
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !366 ; 2 uses
  switch i64 %i.adh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i85 [
    i64 -1, label %bb.fs
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i.i.i85:                     ; preds = %bb.fr
  %i.adi = shl nsw i32 %i.ade, 6
  br label %bb.hf

bb.fs:                                            ; preds = %bb.fr
  %i.adj = shl nsw i32 %i.ade, 6                  ; 2 uses
  %i.adk = add i32 %i.adj, 64
  %i.adl = sext i32 %i.adk to i64
  %.0.off.i.i.i.i.i.i.i.i.i37 = add i32 %.065.i.i.i.i.i.i.i.i.i32, 127
  %.not222.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i37, 64
  br i1 %.not222.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph221.i.i.i.i.i.i.i.i.i.i

.lr.ph221.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.fs
  %i.adm = sext i32 %i.adj to i64
  br label %bb.ft

bb.ft:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph221.i.i.i.i.i.i.i.i.i.i
  %.0216.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.adm, %.lr.ph221.i.i.i.i.i.i.i.i.i.i ], [ %i.aif, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !366
  %i.adn = load ptr, ptr %.sroa.425.0..sroa_idx.i.i14, align 8, !tbaa !18197, !nonnull !393, !align !891
  %i.ado = load ptr, ptr %.sroa.526.0..sroa_idx.i.i15, align 8, !tbaa !18199, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37, !noalias !18234
  %i.adp = trunc i64 %.0216.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.adq = load ptr, ptr %i.adn, align 8, !tbaa !17738, !noalias !18234
  %sext.i.i.i.i.i.i.i.i.i.i38 = shl i64 %.0216.i.i.i.i.i.i.i.i.i.i, 32
  %i.adr = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i38, 32 ; 2 uses
  %i.ads = getelementptr inbounds [16 x i8], ptr %i.adq, i64 %i.adr ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39 = load i64, ptr %i.ads, align 8, !noalias !18234 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i40, align 8, !tbaa !17, !noalias !18234 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39, ptr %18, align 8, !noalias !18234
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41, ptr %i.abh, align 8, !noalias !18234
  %i.adt = load ptr, ptr %i.ado, align 8, !tbaa !3939, !noalias !18237
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.adt, i64 %i.adr
  %i.adv = load i64, ptr %i.adu, align 8, !tbaa !366, !noalias !18237 ; 6 uses
  %i.adw = icmp slt i64 %i.adv, 2
  %i.adx = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39 to i32 ; 2 uses
  br i1 %i.adw, label %.noexc39.i.i.i.i.i.i.i.i.i.i, label %bb.fw, !prof !45

.noexc39.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37, !noalias !18240
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37, !noalias !18243
  store i64 %i.adv, ptr %10, align 16, !tbaa !17, !alias.scope !18246, !noalias !18243
  store i32 2, ptr %i.acb, align 16, !tbaa !17, !alias.scope !18246, !noalias !18243
  store i32 2, ptr %i.acc, align 16, !tbaa !17, !alias.scope !18246, !noalias !18243
  store i32 36, ptr %i.acd, align 16, !tbaa !17, !alias.scope !18246, !noalias !18243
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %10)
          to label %.noexc40.i.i.i.i.i.i.i.i.i.i81 unwind label %bb.gp

.noexc40.i.i.i.i.i.i.i.i.i.i81:                   ; preds = %.noexc39.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37, !noalias !18243
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.249) #45
          to label %bb.fu unwind label %bb.fv, !noalias !18240

bb.fu:                                            ; preds = %.noexc40.i.i.i.i.i.i.i.i.i.i81
  unreachable

bb.fv:                                            ; preds = %.noexc40.i.i.i.i.i.i.i.i.i.i81
  %i.ady = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.adz = load ptr, ptr %11, align 8, !tbaa !7, !noalias !18240 ; 2 uses
  %i.aea = icmp eq ptr %i.adz, %i.ace
  br i1 %i.aea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i82: ; preds = %bb.fv
  %i.aeb = load i64, ptr %i.ace, align 8, !tbaa !17, !noalias !18240
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aec) #43, !noalias !18240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37, !noalias !18240
  br label %.body43.i.i.i.i.i.i.i.i.i.i

bb.fw:                                            ; preds = %bb.ft
  %i.aed = icmp samesign ugt i64 %i.adv, 36
  br i1 %i.aed, label %.noexc41.i.i.i.i.i.i.i.i.i.i79, label %.noexc45.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc41.i.i.i.i.i.i.i.i.i.i79:                   ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37, !noalias !18240
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37, !noalias !18249
  store i64 %i.adv, ptr %9, align 16, !tbaa !17, !alias.scope !18252, !noalias !18249
  store i32 36, ptr %i.abx, align 16, !tbaa !17, !alias.scope !18252, !noalias !18249
  store i32 2, ptr %i.aby, align 16, !tbaa !17, !alias.scope !18252, !noalias !18249
  store i32 36, ptr %i.abz, align 16, !tbaa !17, !alias.scope !18252, !noalias !18249
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %9)
          to label %.noexc42.i.i.i.i.i.i.i.i.i.i80 unwind label %bb.gp

.noexc42.i.i.i.i.i.i.i.i.i.i80:                   ; preds = %.noexc41.i.i.i.i.i.i.i.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !18249
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.249) #45
          to label %bb.fx unwind label %bb.fy, !noalias !18240

bb.fx:                                            ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i80
  unreachable

bb.fy:                                            ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i80
  %i.aee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.aef = load ptr, ptr %12, align 8, !tbaa !7, !noalias !18240 ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.aca
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy
  %i.aeh = load i64, ptr %i.aca, align 8, !tbaa !17, !noalias !18240
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aei) #43, !noalias !18240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37, !noalias !18240
  br label %.body43.i.i.i.i.i.i.i.i.i.i

.noexc45.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fw
  %i.aej = icmp ult i32 %i.adx, 13                ; 2 uses
  %i.aek = select i1 %i.aej, ptr %i.abi, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41 ; 4 uses
  %i.ael = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i39, 4294967295
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc48.i.i.i.i.i.i.i.i.i.i43, label %.noexc46.i.i.i.i.i.i.i.i.i.i42

.noexc46.i.i.i.i.i.i.i.i.i.i42:                   ; preds = %.noexc45.i.i.i.i.i.i.i.i.i.i
  %i.aem = load i8, ptr %i.aek, align 1, !tbaa !17, !noalias !18240
  %i.aen = icmp eq i8 %i.aem, 43
  br i1 %i.aen, label %.noexc47.i.i.i.i.i.i.i.i.i.i77, label %.noexc48.i.i.i.i.i.i.i.i.i.i43

.noexc47.i.i.i.i.i.i.i.i.i.i77:                   ; preds = %.noexc46.i.i.i.i.i.i.i.i.i.i42
  %.sroa.gep179.i.i.i.i.i.i.i.i.i.i78 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i41, i64 1
  %.sroa.sel180.i.i.i.i.i.i.i.i.i.i = select i1 %i.aej, ptr %.sroa.gep178.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.gep179.i.i.i.i.i.i.i.i.i.i78
  br label %.noexc48.i.i.i.i.i.i.i.i.i.i43

.noexc48.i.i.i.i.i.i.i.i.i.i43:                   ; preds = %.noexc47.i.i.i.i.i.i.i.i.i.i77, %.noexc46.i.i.i.i.i.i.i.i.i.i42, %.noexc45.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.sel180.i.i.i.i.i.i.i.i.i.i, %.noexc47.i.i.i.i.i.i.i.i.i.i77 ], [ %i.aek, %.noexc46.i.i.i.i.i.i.i.i.i.i42 ], [ %i.aek, %.noexc45.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37, !noalias !18240
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.ael
  %i.aep = trunc nuw nsw i64 %i.adv to i32
  %i.aeq = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.aeo, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.aep)
          to label %.noexc49.i.i.i.i.i.i.i.i.i.i58 unwind label %bb.gp ; 2 uses

.noexc49.i.i.i.i.i.i.i.i.i.i58:                   ; preds = %.noexc48.i.i.i.i.i.i.i.i.i.i43
  %i.aer = extractvalue { ptr, i32 } %i.aeq, 0    ; 2 uses
  store ptr %i.aer, ptr %13, align 8, !noalias !18240
  %i.aes = extractvalue { ptr, i32 } %i.aeq, 1    ; 3 uses
  store i32 %i.aes, ptr %i.abj, align 8, !noalias !18240
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aes, 22
  %.pre76.i.i.i.i.i.i.i.i.i59 = load i32, ptr %18, align 8, !tbaa !17774, !noalias !18255 ; 8 uses
  %.pre77.i.i.i.i.i.i.i.i.i60 = load ptr, ptr %i.abh, align 8, !noalias !18255 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc49.i..noexc51.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc50.i.i.i.i.i.i.i.i.i.i61, !prof !45

.noexc49.i..noexc51.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc49.i.i.i.i.i.i.i.i.i.i58
  %.pre83.i.i.i.i.i.i.i.i.i76 = zext i32 %.pre76.i.i.i.i.i.i.i.i.i59 to i64
  br label %.noexc51.i.i.i.i.i.i.i.i.i.i63

.noexc50.i.i.i.i.i.i.i.i.i.i61:                   ; preds = %.noexc49.i.i.i.i.i.i.i.i.i.i58
  %i.aet = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i59, 13
  %i.aeu = select i1 %i.aet, ptr %i.abi, ptr %.pre77.i.i.i.i.i.i.i.i.i60 ; 3 uses
  %i.aev = zext i32 %.pre76.i.i.i.i.i.i.i.i.i59 to i64 ; 7 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.aev
  %.not199.i.i.i.i.i.i.i.i.i.i62 = icmp eq ptr %i.aer, %i.aew
  br i1 %.not199.i.i.i.i.i.i.i.i.i.i62, label %bb.gg, label %.noexc51.i.i.i.i.i.i.i.i.i.i63, !prof !442

.noexc51.i.i.i.i.i.i.i.i.i.i63:                   ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i61, %.noexc49.i..noexc51.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi84.i.i.i.i.i.i.i.i.i64 = phi i64 [ %.pre83.i.i.i.i.i.i.i.i.i76, %.noexc49.i..noexc51.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.aev, %.noexc50.i.i.i.i.i.i.i.i.i.i61 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37, !noalias !18240
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37, !noalias !18240
  call void @llvm.experimental.noalias.scope.decl(metadata !18255)
  %i.aex = icmp ult i32 %.pre76.i.i.i.i.i.i.i.i.i59, 13
  %i.aey = select i1 %i.aex, ptr %i.abi, ptr %.pre77.i.i.i.i.i.i.i.i.i60 ; 2 uses
  store ptr %i.abv, ptr %15, align 8, !tbaa !341, !alias.scope !18255
  %i.aez = icmp eq ptr %i.aey, null
  br i1 %i.aez, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i69, label %bb.fz

.noexc.i52.invoke.i.i.i.i.i.i.i.i.i69:            ; preds = %.noexc53.i.i.i.i.i.i.i.i.i.i71, %.noexc51.i.i.i.i.i.i.i.i.i.i63
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i52.cont.i.i.i.i.i.i.i.i.i70 unwind label %bb.gp

.noexc.i52.cont.i.i.i.i.i.i.i.i.i70:              ; preds = %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i69
  unreachable

bb.fz:                                            ; preds = %.noexc51.i.i.i.i.i.i.i.i.i.i63
  %i.afa = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i59, 15
  br i1 %i.afa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i67: ; preds = %bb.fz
  %i.afb = add nuw nsw i64 %.pre-phi84.i.i.i.i.i.i.i.i.i64, 1
  %i.afc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afb) #44
          to label %.noexc54.i.i.i.i.i.i.i.i.i68 unwind label %bb.gp ; 2 uses

.noexc54.i.i.i.i.i.i.i.i.i68:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i67
  store ptr %i.afc, ptr %15, align 8, !tbaa !7, !alias.scope !18255
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i64, ptr %i.abv, align 8, !tbaa !17, !alias.scope !18255
  br label %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i65

._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i65:      ; preds = %.noexc54.i.i.i.i.i.i.i.i.i68, %bb.fz
  %i.afd = phi ptr [ %i.afc, %.noexc54.i.i.i.i.i.i.i.i.i68 ], [ %i.abv, %bb.fz ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i59, label %bb.gb [
    i32 1, label %bb.ga
    i32 0, label %.noexc52.i.i.i.i.i.i.i.i.i.i66
  ]

bb.ga:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i65
  %i.afe = load i8, ptr %i.abi, align 4, !tbaa !17, !noalias !18255
  store i8 %i.afe, ptr %i.afd, align 1, !tbaa !17
  br label %.noexc52.i.i.i.i.i.i.i.i.i.i66

bb.gb:                                            ; preds = %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afd, ptr nonnull align 1 %i.aey, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i64, i1 false)
  br label %.noexc52.i.i.i.i.i.i.i.i.i.i66

.noexc52.i.i.i.i.i.i.i.i.i.i66:                   ; preds = %bb.gb, %bb.ga, %._crit_edge.i.i.i.i.i50.i.i.i.i.i.i.i.i.i65
  store i64 %.pre-phi84.i.i.i.i.i.i.i.i.i64, ptr %i.abt, align 8, !tbaa !16, !alias.scope !18255
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 %.pre-phi84.i.i.i.i.i.i.i.i.i64
  store i8 0, ptr %i.aff, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37, !noalias !18258
  store i64 %i.adv, ptr %8, align 16, !tbaa !17, !alias.scope !18261, !noalias !18258
  %i.afg = load ptr, ptr %15, align 8, !tbaa !7, !noalias !18258
  %i.afh = load i64, ptr %i.abt, align 8, !tbaa !16, !noalias !18258
  store ptr %i.afg, ptr %i.abs, align 16, !tbaa !17, !noalias !18258
  store i64 %i.afh, ptr %i.abu, align 8, !tbaa !17, !noalias !18258
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %8)
          to label %bb.gc unwind label %bb.ge

bb.gc:                                            ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !18258
  %i.afi = load ptr, ptr %15, align 8, !tbaa !7, !noalias !18240 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.abv
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc
  %i.afk = load i64, ptr %i.abv, align 8, !tbaa !17, !noalias !18240
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #43, !noalias !18240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !18240
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull @.str.244) #45
          to label %bb.gd unwind label %bb.gf, !noalias !18240

bb.gd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ge:                                            ; preds = %.noexc52.i.i.i.i.i.i.i.i.i.i66
  %i.afm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.afn = load ptr, ptr %15, align 8, !tbaa !7, !noalias !18240 ; 2 uses
  %i.afo = icmp eq ptr %i.afn, %i.abv
  br i1 %i.afo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ge
  %i.afp = load i64, ptr %i.abv, align 8, !tbaa !17, !noalias !18240
  %i.afq = add i64 %i.afp, 1
  call void @_ZdlPvm(ptr noundef %i.afn, i64 noundef %i.afq) #43, !noalias !18240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !18240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i.i.i.i.i.i.i.i.i

bb.gf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i.i.i.i.i.i.i.i
  %i.afr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.afs = load ptr, ptr %14, align 8, !tbaa !7, !noalias !18240 ; 2 uses
  %i.aft = icmp eq ptr %i.afs, %i.abw
  br i1 %i.aft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gf
  %i.afu = load i64, ptr %i.abw, align 8, !tbaa !17, !noalias !18240
  %i.afv = add i64 %i.afu, 1
  call void @_ZdlPvm(ptr noundef %i.afs, i64 noundef %i.afv) #43, !noalias !18240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.afm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i.i.i.i.i.i.i ], [ %i.afr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i.i.i.i.i.i.i ], [ %i.afr, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !18240
  br label %bb.go

bb.gg:                                            ; preds = %.noexc50.i.i.i.i.i.i.i.i.i.i61
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aes, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc53.i.i.i.i.i.i.i.i.i.i71, label %_ZN8facebook5velox6StatusD2Ev.exit91.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc53.i.i.i.i.i.i.i.i.i.i71:                   ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37, !noalias !18240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !18240
  store i32 34, ptr %i.a, align 4, !tbaa !17781, !noalias !18240
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37, !noalias !18240
  call void @llvm.experimental.noalias.scope.decl(metadata !18264)
  store ptr %i.abq, ptr %17, align 8, !tbaa !341, !alias.scope !18264
  %i.afw = icmp eq ptr %i.aeu, null
  br i1 %i.afw, label %.noexc.i52.invoke.i.i.i.i.i.i.i.i.i69, label %bb.gh

bb.gh:                                            ; preds = %.noexc53.i.i.i.i.i.i.i.i.i.i71
  %i.afx = icmp ugt i32 %.pre76.i.i.i.i.i.i.i.i.i59, 15
  br i1 %i.afx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i74, label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i74: ; preds = %bb.gh
  %i.afy = add nuw nsw i64 %i.aev, 1
  %i.afz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afy) #44
          to label %.noexc48.i.i.i.i.i.i.i.i.i75 unwind label %bb.gp ; 2 uses

.noexc48.i.i.i.i.i.i.i.i.i75:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45.i.i.i.i.i.i.i.i.i74
  store ptr %i.afz, ptr %17, align 8, !tbaa !7, !alias.scope !18264
  store i64 %i.aev, ptr %i.abq, align 8, !tbaa !17, !alias.scope !18264
  br label %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i72

._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i72:      ; preds = %.noexc48.i.i.i.i.i.i.i.i.i75, %bb.gh
  %i.aga = phi ptr [ %i.afz, %.noexc48.i.i.i.i.i.i.i.i.i75 ], [ %i.abq, %bb.gh ] ; 3 uses
  switch i32 %.pre76.i.i.i.i.i.i.i.i.i59, label %bb.gj [
    i32 1, label %bb.gi
    i32 0, label %.noexc54.i.i.i.i.i.i.i.i.i.i73
  ]

bb.gi:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i72
  %i.agb = load i8, ptr %i.abi, align 4, !tbaa !17, !noalias !18264
  store i8 %i.agb, ptr %i.aga, align 1, !tbaa !17
  br label %.noexc54.i.i.i.i.i.i.i.i.i.i73

bb.gj:                                            ; preds = %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i72
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aga, ptr nonnull align 1 %i.aeu, i64 %i.aev, i1 false)
  br label %.noexc54.i.i.i.i.i.i.i.i.i.i73

.noexc54.i.i.i.i.i.i.i.i.i.i73:                   ; preds = %bb.gj, %bb.gi, %._crit_edge.i.i.i.i.i44.i.i.i.i.i.i.i.i.i72
  store i64 %i.aev, ptr %i.abo, align 8, !tbaa !16, !alias.scope !18264
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.aev
  store i8 0, ptr %i.agc, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !18267
  store ptr %i.abj, ptr %7, align 16, !tbaa !17, !noalias !18267
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.abk, align 8, !tbaa !17, !noalias !18267
  store ptr %i.a, ptr %i.abl, align 16, !tbaa !17, !noalias !18267
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.abm, align 8, !tbaa !17, !noalias !18267
  %i.agd = load ptr, ptr %17, align 8, !tbaa !7, !noalias !18267
  %i.age = load i64, ptr %i.abo, align 8, !tbaa !16, !noalias !18267
  store ptr %i.agd, ptr %i.abn, align 16, !tbaa !17, !noalias !18267
  store i64 %i.age, ptr %i.abp, align 8, !tbaa !17, !noalias !18267
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %7)
          to label %bb.gk unwind label %bb.gm

bb.gk:                                            ; preds = %.noexc54.i.i.i.i.i.i.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37, !noalias !18267
  %i.agf = load ptr, ptr %17, align 8, !tbaa !7, !noalias !18240 ; 2 uses
  %i.agg = icmp eq ptr %i.agf, %i.abq
  br i1 %i.agg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.i.i.i.i

end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSB_lEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_:bb.a
  %.not.i93.i.i.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.ahy, null
  br i1 %.not.i93.i.i.i.i.i.i.i.i.i.i46, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94.i.i.i.i.i.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.hd

bb.gx:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i48
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.gy:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i57
  %i.aia = load ptr, ptr %20, align 8, !tbaa !618
  %.not.i95.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aia, null
  br i1 %.not.i95.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i

bb.ha:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i57
  %i.aib = landingpad { ptr, i32 }
          cleanup
  %i.aic = load ptr, ptr %20, align 8, !tbaa !618
  %.not.i97.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aic, null
  br i1 %.not.i97.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hb, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.hc

bb.hc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i, %bb.gx
  %.pn.i35.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aib, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98.i.i.i.i.i.i.i.i.i.i ], [ %i.ahz, %bb.gx ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94.i.i.i.i.i.i.i.i.i.i
  %i.aid = landingpad { ptr, i32 }
          catch ptr null
  %i.aie = extractvalue { ptr, i32 } %i.aid, 0
  call void @__clang_call_terminate(ptr %i.aie) #46
  unreachable

bb.he:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i48
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i47, %_ZN8facebook5velox6StatusD2Ev.exit91.i.i.i.i.i.i.i.i.i.i
  %i.aif = add nuw i64 %.0216.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aig = icmp ult i64 %i.aif, %i.adl
  br i1 %i.aig, label %bb.ft, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSF_lEEEE7iterateIJNS3_16FlatVectorReaderISF_EENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !18270

bb.hf:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i85
  %.015215.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.adh, %.lr.ph.i.i.i.i.i.i.i.i.i.i85 ], [ %i.anc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116FromBaseFunctionINS1_10VectorExecEEESA_lNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSD_lEEEE7iterateIJNS1_16FlatVectorReaderISD_EENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aih = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015215.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aii = trunc nuw nsw i64 %i.aih to i32
  %i.aij = or disjoint i32 %i.adi, %i.aii         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !366
  %i.aik = load ptr, ptr %.sroa.425.0..sroa_idx.i.i14, align 8, !tbaa !18197, !nonnull !393, !align !891
  %i.ail = load ptr, ptr %.sroa.526.0..sroa_idx.i.i15, align 8, !tbaa !18199, !nonnull !393, !align !891
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37, !noalias !18271
  %i.aim = load ptr, ptr %i.aik, align 8, !tbaa !17738, !noalias !18271
  %i.ain = sext i32 %i.aij to i64                 ; 3 uses
  %i.aio = getelementptr inbounds [16 x i8], ptr %i.aim, i64 %i.ain ; 2 uses
  %.sroa.0.0.copyload.i99.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aio, align 8, !noalias !18271 ; 3 uses
  %.sroa.2.0..sroa_idx.i100.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %.sroa.2.0.copyload.i101.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i100.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !18271 ; 3 uses
  store i64 %.sroa.0.0.copyload.i99.i.i.i.i.i.i.i.i.i.i, ptr %28, align 8, !noalias !18271
  store ptr %.sroa.2.0.copyload.i101.i.i.i.i.i.i.i.i.i.i, ptr %i.acf, align 8, !noalias !18271
  %i.aip = load ptr, ptr %i.ail, align 8, !tbaa !3939, !noalias !18274
  %i.aiq = getelementptr inbounds [8 x i8], ptr %i.aip, i64 %i.ain
  %i.air = load i64, ptr %i.aiq, align 8, !tbaa !366, !noalias !18274 ; 6 uses
  %i.ais = icmp slt i64 %i.air, 2
  %i.ait = trunc i64 %.sroa.0.0.copyload.i99.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %i.ais, label %.noexc18.i.i.i.i.i.i.i.i.i.i, label %bb.hi, !prof !45

.noexc18.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37, !noalias !18277
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37, !noalias !18280
  store i64 %i.air, ptr %6, align 16, !tbaa !17, !alias.scope !18283, !noalias !18280
  store i32 2, ptr %i.acz, align 16, !tbaa !17, !alias.scope !18283, !noalias !18280
  store i32 2, ptr %i.ada, align 16, !tbaa !17, !alias.scope !18283, !noalias !18280
  store i32 36, ptr %i.adb, align 16, !tbaa !17, !alias.scope !18283, !noalias !18280
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %6)
          to label %.noexc19.i.i.i.i.i.i.i.i.i.i120 unwind label %bb.ib

.noexc19.i.i.i.i.i.i.i.i.i.i120:                  ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37, !noalias !18280
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr nonnull @.str.249) #45
          to label %bb.hg unwind label %bb.hh, !noalias !18277

bb.hg:                                            ; preds = %.noexc19.i.i.i.i.i.i.i.i.i.i120
  unreachable

bb.hh:                                            ; preds = %.noexc19.i.i.i.i.i.i.i.i.i.i120
  %i.aiu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.aiv = load ptr, ptr %21, align 8, !tbaa !7, !noalias !18277 ; 2 uses
  %i.aiw = icmp eq ptr %i.aiv, %i.adc
  br i1 %i.aiw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hh
  %i.aix = load i64, ptr %i.adc, align 8, !tbaa !17, !noalias !18277
  %i.aiy = add i64 %i.aix, 1
  call void @_ZdlPvm(ptr noundef %i.aiv, i64 noundef %i.aiy) #43, !noalias !18277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37, !noalias !18277
  br label %.body.i.i.i.i.i.i.i.i.i.i90

bb.hi:                                            ; preds = %bb.hf
  %i.aiz = icmp samesign ugt i64 %i.air, 36
  br i1 %i.aiz, label %.noexc20.i.i.i.i.i.i.i.i.i.i118, label %.noexc24.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc20.i.i.i.i.i.i.i.i.i.i118:                  ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37, !noalias !18277
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37, !noalias !18286
  store i64 %i.air, ptr %5, align 16, !tbaa !17, !alias.scope !18289, !noalias !18286
  store i32 36, ptr %i.acv, align 16, !tbaa !17, !alias.scope !18289, !noalias !18286
  store i32 2, ptr %i.acw, align 16, !tbaa !17, !alias.scope !18289, !noalias !18286
  store i32 36, ptr %i.acx, align 16, !tbaa !17, !alias.scope !18289, !noalias !18286
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nonnull @.str.249, i64 44, i64 4371, ptr nonnull %5)
          to label %.noexc21.i.i.i.i.i.i.i.i.i.i119 unwind label %bb.ib

.noexc21.i.i.i.i.i.i.i.i.i.i119:                  ; preds = %.noexc20.i.i.i.i.i.i.i.i.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37, !noalias !18286
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_110checkRadixElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr nonnull @.str.249) #45
          to label %bb.hj unwind label %bb.hk, !noalias !18277

bb.hj:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i119
  unreachable

bb.hk:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i119
  %i.aja = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ajb = load ptr, ptr %22, align 8, !tbaa !7, !noalias !18277 ; 2 uses
  %i.ajc = icmp eq ptr %i.ajb, %i.acy
  br i1 %i.ajc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hk
  %i.ajd = load i64, ptr %i.acy, align 8, !tbaa !17, !noalias !18277
  %i.aje = add i64 %i.ajd, 1
  call void @_ZdlPvm(ptr noundef %i.ajb, i64 noundef %i.aje) #43, !noalias !18277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37, !noalias !18277
  br label %.body.i.i.i.i.i.i.i.i.i.i90

.noexc24.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hi
  %i.ajf = icmp ult i32 %i.ait, 13                ; 2 uses
  %i.ajg = select i1 %i.ajf, ptr %i.acg, ptr %.sroa.2.0.copyload.i101.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ajh = and i64 %.sroa.0.0.copyload.i99.i.i.i.i.i.i.i.i.i.i, 4294967295
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i86 = icmp eq i32 %i.ait, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i86, label %.noexc27.i.i.i.i.i.i.i.i.i.i88, label %.noexc25.i.i.i.i.i.i.i.i.i.i87

.noexc25.i.i.i.i.i.i.i.i.i.i87:                   ; preds = %.noexc24.i.i.i.i.i.i.i.i.i.i
  %i.aji = load i8, ptr %i.ajg, align 1, !tbaa !17, !noalias !18277
  %i.ajj = icmp eq i8 %i.aji, 43
  br i1 %i.ajj, label %.noexc26.i.i.i.i.i.i.i.i.i.i116, label %.noexc27.i.i.i.i.i.i.i.i.i.i88

.noexc26.i.i.i.i.i.i.i.i.i.i116:                  ; preds = %.noexc25.i.i.i.i.i.i.i.i.i.i87
  %.sroa.gep161.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i101.i.i.i.i.i.i.i.i.i.i, i64 1
  %.sroa.sel.i.i.i.i.i.i.i.i.i.i117 = select i1 %i.ajf, ptr %.sroa.gep.i.i.i.i.i.i.i.i.i.i31, ptr %.sroa.gep161.i.i.i.i.i.i.i.i.i.i
  br label %.noexc27.i.i.i.i.i.i.i.i.i.i88

.noexc27.i.i.i.i.i.i.i.i.i.i88:                   ; preds = %.noexc26.i.i.i.i.i.i.i.i.i.i116, %.noexc25.i.i.i.i.i.i.i.i.i.i87, %.noexc24.i.i.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i.i.i.i.i.i89 = phi ptr [ %.sroa.sel.i.i.i.i.i.i.i.i.i.i117, %.noexc26.i.i.i.i.i.i.i.i.i.i116 ], [ %i.ajg, %.noexc25.i.i.i.i.i.i.i.i.i.i87 ], [ %i.ajg, %.noexc24.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37, !noalias !18277
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.ajh
  %i.ajl = trunc nuw nsw i64 %i.air to i32
  %i.ajm = invoke { ptr, i32 } @_ZSt10from_charsIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i(ptr noundef %.014.i.i.i.i.i.i.i.i.i.i.i.i.i89, ptr noundef %i.ajk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.ajl)
          to label %.noexc28.i.i.i.i.i.i.i.i.i.i93 unwind label %bb.ib ; 2 uses

.noexc28.i.i.i.i.i.i.i.i.i.i93:                   ; preds = %.noexc27.i.i.i.i.i.i.i.i.i.i88
  %i.ajn = extractvalue { ptr, i32 } %i.ajm, 0    ; 2 uses
  store ptr %i.ajn, ptr %23, align 8, !noalias !18277
  %i.ajo = extractvalue { ptr, i32 } %i.ajm, 1    ; 3 uses
  store i32 %i.ajo, ptr %i.ach, align 8, !noalias !18277
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i94 = icmp eq i32 %i.ajo, 22
  %.pre80.i.i.i.i.i.i.i.i.i95 = load i32, ptr %28, align 8, !tbaa !17774, !noalias !18292 ; 8 uses
  %.pre81.i.i.i.i.i.i.i.i.i96 = load ptr, ptr %i.acf, align 8, !noalias !18292 ; 2 uses
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i94, label %.noexc28.i..noexc30.i_crit_edge.i.i.i.i.i.i.i.i.i, label %.noexc29.i.i.i.i.i.i.i.i.i.i97, !prof !45

.noexc28.i..noexc30.i_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %.noexc28.i.i.i.i.i.i.i.i.i.i93
  %.pre82.i.i.i.i.i.i.i.i.i115 = zext i32 %.pre80.i.i.i.i.i.i.i.i.i95 to i64
  br label %.noexc30.i.i.i.i.i.i.i.i.i.i98

.noexc29.i.i.i.i.i.i.i.i.i.i97:                   ; preds = %.noexc28.i.i.i.i.i.i.i.i.i.i93
  %i.ajp = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i95, 13
  %i.ajq = select i1 %i.ajp, ptr %i.acg, ptr %.pre81.i.i.i.i.i.i.i.i.i96 ; 3 uses
  %i.ajr = zext i32 %.pre80.i.i.i.i.i.i.i.i.i95 to i64 ; 7 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajq, i64 %i.ajr
  %.not198.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajn, %i.ajs
  br i1 %.not198.i.i.i.i.i.i.i.i.i.i, label %bb.hs, label %.noexc30.i.i.i.i.i.i.i.i.i.i98, !prof !442

.noexc30.i.i.i.i.i.i.i.i.i.i98:                   ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i97, %.noexc28.i..noexc30.i_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i99 = phi i64 [ %.pre82.i.i.i.i.i.i.i.i.i115, %.noexc28.i..noexc30.i_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ajr, %.noexc29.i.i.i.i.i.i.i.i.i.i97 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37, !noalias !18277
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37, !noalias !18277
  call void @llvm.experimental.noalias.scope.decl(metadata !18292)
  %i.ajt = icmp ult i32 %.pre80.i.i.i.i.i.i.i.i.i95, 13
  %i.aju = select i1 %i.ajt, ptr %i.acg, ptr %.pre81.i.i.i.i.i.i.i.i.i96 ; 2 uses
  store ptr %i.act, ptr %25, align 8, !tbaa !341, !alias.scope !18292
  %i.ajv = icmp eq ptr %i.aju, null
  br i1 %i.ajv, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i106, label %bb.hl

.noexc.i40.invoke.i.i.i.i.i.i.i.i.i106:           ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i109, %.noexc30.i.i.i.i.i.i.i.i.i.i98
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #45
          to label %.noexc.i40.cont.i.i.i.i.i.i.i.i.i107 unwind label %bb.ib

.noexc.i40.cont.i.i.i.i.i.i.i.i.i107:             ; preds = %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i106
  unreachable

bb.hl:                                            ; preds = %.noexc30.i.i.i.i.i.i.i.i.i.i98
  %i.ajw = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i95, 15
  br i1 %i.ajw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i104, label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i104: ; preds = %bb.hl
  %i.ajx = add nuw nsw i64 %.pre-phi.i.i.i.i.i.i.i.i.i99, 1
  %i.ajy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajx) #44
          to label %.noexc42.i.i.i.i.i.i.i.i.i105 unwind label %bb.ib ; 2 uses

.noexc42.i.i.i.i.i.i.i.i.i105:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i39.i.i.i.i.i.i.i.i.i104
  store ptr %i.ajy, ptr %25, align 8, !tbaa !7, !alias.scope !18292
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i99, ptr %i.act, align 8, !tbaa !17, !alias.scope !18292
  br label %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i100

._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i100:     ; preds = %.noexc42.i.i.i.i.i.i.i.i.i105, %bb.hl
  %i.ajz = phi ptr [ %i.ajy, %.noexc42.i.i.i.i.i.i.i.i.i105 ], [ %i.act, %bb.hl ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i95, label %bb.hn [
    i32 1, label %bb.hm
    i32 0, label %.noexc31.i.i.i.i.i.i.i.i.i.i101
  ]

bb.hm:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i100
  %i.aka = load i8, ptr %i.acg, align 4, !tbaa !17, !noalias !18292
  store i8 %i.aka, ptr %i.ajz, align 1, !tbaa !17
  br label %.noexc31.i.i.i.i.i.i.i.i.i.i101

bb.hn:                                            ; preds = %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajz, ptr nonnull align 1 %i.aju, i64 %.pre-phi.i.i.i.i.i.i.i.i.i99, i1 false)
  br label %.noexc31.i.i.i.i.i.i.i.i.i.i101

.noexc31.i.i.i.i.i.i.i.i.i.i101:                  ; preds = %bb.hn, %bb.hm, %._crit_edge.i.i.i.i.i38.i.i.i.i.i.i.i.i.i100
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i99, ptr %i.acr, align 8, !tbaa !16, !alias.scope !18292
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %.pre-phi.i.i.i.i.i.i.i.i.i99
  store i8 0, ptr %i.akb, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !18295
  store i64 %i.air, ptr %4, align 16, !tbaa !17, !alias.scope !18298, !noalias !18295
  %i.akc = load ptr, ptr %25, align 8, !tbaa !7, !noalias !18295
  %i.akd = load i64, ptr %i.acr, align 8, !tbaa !16, !noalias !18295
  store ptr %i.akc, ptr %i.acq, align 16, !tbaa !17, !noalias !18295
  store i64 %i.akd, ptr %i.acs, align 8, !tbaa !17, !noalias !18295
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr nonnull @.str.244, i64 31, i64 211, ptr nonnull %4)
          to label %bb.ho unwind label %bb.hq

bb.ho:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !18295
  %i.ake = load ptr, ptr %25, align 8, !tbaa !7, !noalias !18277 ; 2 uses
  %i.akf = icmp eq ptr %i.ake, %i.act
  br i1 %i.akf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ho
  %i.akg = load i64, ptr %i.act, align 8, !tbaa !17, !noalias !18277
  %i.akh = add i64 %i.akg, 1
  call void @_ZdlPvm(ptr noundef %i.ake, i64 noundef %i.akh) #43, !noalias !18277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37, !noalias !18277
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_116FromBaseFunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr nonnull @.str.244) #45
          to label %bb.hp unwind label %bb.hr, !noalias !18277

bb.hp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.hq:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i101
  %i.aki = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.akj = load ptr, ptr %25, align 8, !tbaa !7, !noalias !18277 ; 2 uses
  %i.akk = icmp eq ptr %i.akj, %i.act
  br i1 %i.akk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hq
  %i.akl = load i64, ptr %i.act, align 8, !tbaa !17, !noalias !18277
  %i.akm = add i64 %i.akl, 1
  call void @_ZdlPvm(ptr noundef %i.akj, i64 noundef %i.akm) #43, !noalias !18277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37, !noalias !18277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i.i.i.i.i.i.i.i
  %i.akn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ako = load ptr, ptr %24, align 8, !tbaa !7, !noalias !18277 ; 2 uses
  %i.akp = icmp eq ptr %i.ako, %i.acu
  br i1 %i.akp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr
  %i.akq = load i64, ptr %i.acu, align 8, !tbaa !17, !noalias !18277
  %i.akr = add i64 %i.akq, 1
  call void @_ZdlPvm(ptr noundef %i.ako, i64 noundef %i.akr) #43, !noalias !18277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i.i.i.i.i.i.i.i.i
  %.pn18.i.i.i.i.i.i.i.i.i.i.i.i.i102 = phi { ptr, i32 } [ %i.aki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i.i.i.i.i.i.i.i.i ], [ %i.akn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i.i.i.i.i.i.i.i.i.i ], [ %i.akn, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37, !noalias !18277
  br label %bb.ia

bb.hs:                                            ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i97
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i108 = icmp eq i32 %i.ajo, 34
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i108, label %.noexc32.i.i.i.i.i.i.i.i.i.i109, label %_ZN8facebook5velox6StatusD2Ev.exit147.i.i.i.i.i.i.i.i.i.i, !prof !45

.noexc32.i.i.i.i.i.i.i.i.i.i109:                  ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37, !noalias !18277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37, !noalias !18277
  store i32 34, ptr %i.c, align 4, !tbaa !17781, !noalias !18277
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37, !noalias !18277
  call void @llvm.experimental.noalias.scope.decl(metadata !18301)
  store ptr %i.aco, ptr %27, align 8, !tbaa !341, !alias.scope !18301
  %i.aks = icmp eq ptr %i.ajq, null
  br i1 %i.aks, label %.noexc.i40.invoke.i.i.i.i.i.i.i.i.i106, label %bb.ht

bb.ht:                                            ; preds = %.noexc32.i.i.i.i.i.i.i.i.i.i109
  %i.akt = icmp ugt i32 %.pre80.i.i.i.i.i.i.i.i.i95, 15
  br i1 %i.akt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i113, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i113: ; preds = %bb.ht
  %i.aku = add nuw nsw i64 %i.ajr, 1
  %i.akv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aku) #44
          to label %.noexc37.i.i.i.i.i.i.i.i.i114 unwind label %bb.ib ; 2 uses

.noexc37.i.i.i.i.i.i.i.i.i114:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i113
  store ptr %i.akv, ptr %27, align 8, !tbaa !7, !alias.scope !18301
  store i64 %i.ajr, ptr %i.aco, align 8, !tbaa !17, !alias.scope !18301
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i110

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i110:       ; preds = %.noexc37.i.i.i.i.i.i.i.i.i114, %bb.ht
  %i.akw = phi ptr [ %i.akv, %.noexc37.i.i.i.i.i.i.i.i.i114 ], [ %i.aco, %bb.ht ] ; 3 uses
  switch i32 %.pre80.i.i.i.i.i.i.i.i.i95, label %bb.hv [
    i32 1, label %bb.hu
    i32 0, label %.noexc33.i.i.i.i.i.i.i.i.i.i111
  ]

bb.hu:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i110
  %i.akx = load i8, ptr %i.acg, align 4, !tbaa !17, !noalias !18301
  store i8 %i.akx, ptr %i.akw, align 1, !tbaa !17
  br label %.noexc33.i.i.i.i.i.i.i.i.i.i111

bb.hv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akw, ptr nonnull align 1 %i.ajq, i64 %i.ajr, i1 false)
  br label %.noexc33.i.i.i.i.i.i.i.i.i.i111

.noexc33.i.i.i.i.i.i.i.i.i.i111:                  ; preds = %bb.hv, %bb.hu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i110
  store i64 %i.ajr, ptr %i.acm, align 8, !tbaa !16, !alias.scope !18301
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.ajr
  store i8 0, ptr %i.aky, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !18304
  store ptr %i.ach, ptr %3, align 16, !tbaa !17, !noalias !18304
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.aci, align 8, !tbaa !17, !noalias !18304
  store ptr %i.c, ptr %i.acj, align 16, !tbaa !17, !noalias !18304
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt4errcNS0_9formatterIS6_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ack, align 8, !tbaa !17, !noalias !18304
  %i.akz = load ptr, ptr %27, align 8, !tbaa !7, !noalias !18304
  %i.ala = load i64, ptr %i.acm, align 8, !tbaa !16, !noalias !18304
  store ptr %i.akz, ptr %i.acl, align 16, !tbaa !17, !noalias !18304
  store i64 %i.ala, ptr %i.acn, align 8, !tbaa !17, !noalias !18304
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr nonnull @.str.246, i64 31, i64 3583, ptr nonnull %3)
          to label %bb.hw unwind label %bb.hy

bb.hw:                                            ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !18304
  %i.alb = load ptr, ptr %27, align 8, !tbaa !7, !noalias !18277 ; 2 uses
  %i.alc = icmp eq ptr %i.alb, %i.aco
  br i1 %i.alc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i.i.i.i.i.i.i.i.i.i

end_hunk_10
begin_hunk_11_@llvm.trunc.v4f32
!4219 = distinct !{!4219, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_111AbsFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJfEEEJfEE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISD_EE"}
!4220 = !{!4221}
!4221 = distinct !{!4221, !4222, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4222 = distinct !{!4222, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4223 = !{!4224}
!4224 = distinct !{!4224, !4225, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4225 = distinct !{!4225, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4226 = !{!4227}
!4227 = distinct !{!4227, !4228, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4228 = distinct !{!4228, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4229 = !{!4227, !4224, !4221}
!4230 = !{!4227, !4224, !4221, !4218}
!4231 = !{!4232}
!4232 = distinct !{!4232, !4233, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4233 = distinct !{!4233, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4234 = !{!4235}
!4235 = distinct !{!4235, !4236, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4236 = distinct !{!4236, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4237 = !{!4238}
!4238 = distinct !{!4238, !4239, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4239 = distinct !{!4239, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4240 = !{!4238, !4235, !4232}
!4241 = !{!4238, !4235, !4232, !4218}
!4242 = !{!4243, !4218}
!4243 = distinct !{!4243, !4244, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4244 = distinct !{!4244, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4245 = !{!4243}
!4246 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4247 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4248 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4249 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4250 = !{!4216, !4, i64 32}
!4251 = distinct !{null, null, null, null, null, null, null, null, null, null}
!4252 = !{!4211, !4211, i64 0}
!4253 = distinct !{null, null}
!4254 = !{!4255}
!4255 = distinct !{!4255, !4256, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_111AbsFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJfEEEJfEE10CreateTypeIfE6createERKSt10shared_ptrINS6_17FunctionSignatureEE: argument 0"}
!4256 = distinct !{!4256, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_111AbsFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJfEEEJfEE10CreateTypeIfE6createERKSt10shared_ptrINS6_17FunctionSignatureEE"}
!4257 = distinct !{!4257, !51}
!4258 = !{!4259}
!4259 = distinct !{!4259, !4260, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4260 = distinct !{!4260, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4261 = !{!4262}
!4262 = distinct !{!4262, !4263, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESG_fNS2_15ConstantCheckerIJfEEEJfEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS3_17SignatureVariableESaISX_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_: argument 0"}
!4263 = distinct !{!4263, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESG_fNS2_15ConstantCheckerIJfEEEJfEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EERKSM_INS3_17SignatureVariableESaISX_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_"}
!4264 = !{!4265, !4267, !4269, !4262}
!4265 = distinct !{!4265, !4266, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_111AbsFunctionINS2_10VectorExecEEES9_fNS1_15ConstantCheckerIJfEEEJfEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4266 = distinct !{!4266, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_111AbsFunctionINS2_10VectorExecEEES9_fNS1_15ConstantCheckerIJfEEEJfEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4267 = distinct !{!4267, !4268, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEESA_fNS0_15ConstantCheckerIJfEEEJfEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbENKUlvE_clEv: argument 0"}
!4268 = distinct !{!4268, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEESA_fNS0_15ConstantCheckerIJfEEEJfEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbENKUlvE_clEv"}
!4269 = distinct !{!4269, !4270, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESA_fNS2_15ConstantCheckerIJfEEEJfEEEEESt14default_deleteISF_EERZNS3_22SimpleFunctionRegistry16registerFunctionISF_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS3_17SignatureVariableESaISW_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!4270 = distinct !{!4270, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESA_fNS2_15ConstantCheckerIJfEEEJfEEEEESt14default_deleteISF_EERZNS3_22SimpleFunctionRegistry16registerFunctionISF_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS3_17SignatureVariableESaISW_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!4271 = !{!4272}
!4272 = distinct !{!4272, !4273, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_111AbsFunctionINS2_10VectorExecEEES9_fNS1_15ConstantCheckerIJfEEEJfEEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISJ_EERKNS4_11QueryConfigERKSF_ISG_INS1_10BaseVectorEESaISS_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4273 = distinct !{!4273, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_111AbsFunctionINS2_10VectorExecEEES9_fNS1_15ConstantCheckerIJfEEEJfEEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISJ_EERKNS4_11QueryConfigERKSF_ISG_INS1_10BaseVectorEESaISS_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4274 = !{!4275, !4275, i64 0}
!4275 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS0_4exec10VectorExecEEES7_fNS0_15ConstantCheckerIJfEEEJfEEE", !11, i64 0}
!4276 = !{!4277}
!4277 = distinct !{!4277, !4278, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_111AbsFunctionINS1_4exec10VectorExecEEES8_fNS1_15ConstantCheckerIJfEEEJfEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4278 = distinct !{!4278, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_111AbsFunctionINS1_4exec10VectorExecEEES8_fNS1_15ConstantCheckerIJfEEEJfEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4279 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEED2Ev}
!4280 = distinct !{!4280, !51, !462, !463}
!4281 = distinct !{!4281, !51, !462, !463}
!4282 = distinct !{!4282, !51, !463, !462}
!4283 = distinct !{!4283, !51}
!4284 = distinct !{!4284, !51, !462, !463}
!4285 = distinct !{!4285, !51, !462, !463}
!4286 = distinct !{!4286, !51, !463, !462}
!4287 = distinct !{!4287, !51}
!4288 = distinct !{!4288, !51}
!4289 = !{!4290}
!4290 = distinct !{!4290, !4291, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4291 = distinct !{!4291, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4292 = distinct !{!4292, !51, !462, !463}
!4293 = distinct !{!4293, !51, !462, !463}
!4294 = distinct !{!4294, !737}
!4295 = distinct !{!4295, !51, !462}
!4296 = !{!4297}
!4297 = distinct !{!4297, !4298, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4298 = distinct !{!4298, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4299 = distinct !{!4299, !51}
!4300 = !{!4301}
!4301 = distinct !{!4301, !4302, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4302 = distinct !{!4302, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4303 = !{!4304}
!4304 = distinct !{!4304, !4305, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4305 = distinct !{!4305, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4306 = distinct !{!4306, !51, !462, !463}
!4307 = distinct !{!4307, !51, !462, !463}
!4308 = distinct !{!4308, !51, !462}
!4309 = !{!4310}
!4310 = distinct !{!4310, !4311, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4311 = distinct !{!4311, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4312 = distinct !{!4312, !51}
!4313 = distinct !{!4313, !51}
!4314 = !{!4315}
!4315 = distinct !{!4315, !4316, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4316 = distinct !{!4316, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4317 = !{!4318}
!4318 = distinct !{!4318, !4319, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4319 = distinct !{!4319, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4320 = distinct !{!4320, !51}
!4321 = !{!4322}
!4322 = distinct !{!4322, !4323, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4323 = distinct !{!4323, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4324 = distinct !{!4324, !51}
!4325 = !{!4326}
!4326 = distinct !{!4326, !4327, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4327 = distinct !{!4327, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4328 = !{!4329}
!4329 = distinct !{!4329, !4330, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4330 = distinct !{!4330, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4331 = !{!4332}
!4332 = distinct !{!4332, !4333, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4333 = distinct !{!4333, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4334 = distinct !{!4334, !51, !462, !463}
!4335 = distinct !{!4335, !51, !462, !463}
!4336 = distinct !{!4336, !51, !462}
!4337 = !{!4338}
!4338 = distinct !{!4338, !4339}
!4339 = distinct !{!4339, !"LVerDomain"}
!4340 = !{!4341}
!4341 = distinct !{!4341, !4339}
!4342 = distinct !{!4342, !51, !462, !463}
!4343 = distinct !{!4343, !51, !462, !463}
!4344 = distinct !{!4344, !51, !462}
!4345 = distinct !{!4345, !51}
!4346 = distinct !{!4346, !51}
!4347 = distinct !{!4347, !51}
!4348 = !{!4349}
!4349 = distinct !{!4349, !4350, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_: argument 0"}
!4350 = distinct !{!4350, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE14doApplyNotNullILm0ENS1_12VectorReaderIfEEJETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRfRbRT0_DpRKT1_"}
!4351 = !{!4352, !4353, i64 0}
!4352 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_4exec10VectorExecEEENS1_11LongDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJSE_EEEJSE_EEELN9__gnu_cxx12_Lock_policyE2EE", !4353, i64 0, !32, i64 8}
!4353 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEE", !11, i64 0}
!4354 = !{!4355}
!4355 = distinct !{!4355, !4356, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm1EEENSC_ILm5EEEEENS2_15ConstantCheckerIJSF_EEEJSF_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSQ_: argument 0"}
!4356 = distinct !{!4356, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_4exec10VectorExecEEENS2_11LongDecimalINS2_15IntegerVariableILm1EEENSC_ILm5EEEEENS2_15ConstantCheckerIJSF_EEEJSF_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSQ_"}
!4357 = !{!4358, !303, i64 8}
!4358 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEE", !302, i64 0, !303, i64 8, !304, i64 16, !4, i64 32, !307, i64 40, !310, i64 56}
!4359 = !{!4360}
!4360 = distinct !{!4360, !4361, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISI_EE: argument 0"}
!4361 = distinct !{!4361, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISI_EE"}
!4362 = !{!4363}
!4363 = distinct !{!4363, !4364, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4364 = distinct !{!4364, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4365 = !{!4366}
!4366 = distinct !{!4366, !4367, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4367 = distinct !{!4367, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4368 = !{!4369}
!4369 = distinct !{!4369, !4370, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4370 = distinct !{!4370, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4371 = !{!4369, !4366, !4363}
!4372 = !{!4369, !4366, !4363, !4360}
!4373 = !{!4374}
!4374 = distinct !{!4374, !4375, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4375 = distinct !{!4375, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4376 = !{!4377}
!4377 = distinct !{!4377, !4378, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4378 = distinct !{!4378, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4379 = !{!4380}
!4380 = distinct !{!4380, !4381, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4381 = distinct !{!4381, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4382 = !{!4380, !4377, !4374}
!4383 = !{!4380, !4377, !4374, !4360}
!4384 = !{!4385, !4360}
!4385 = distinct !{!4385, !4386, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4386 = distinct !{!4386, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4387 = !{!4385}
!4388 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4389 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4390 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4391 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4392 = !{!4358, !4, i64 32}
!4393 = distinct !{null, null, null, null, null, null, null, null, null, null}
!4394 = !{!4353, !4353, i64 0}
!4395 = distinct !{null, null}
!4396 = !{!4397}
!4397 = distinct !{!4397, !4398, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE10CreateTypeISD_E6createERKSt10shared_ptrINS6_17FunctionSignatureEE: argument 0"}
!4398 = distinct !{!4398, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE10CreateTypeISD_E6createERKSt10shared_ptrINS6_17FunctionSignatureEE"}
!4399 = distinct !{!4399, !51}
!4400 = !{!4401}
!4401 = distinct !{!4401, !4402, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4402 = distinct !{!4402, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4403 = !{!4404, !4406}
!4404 = distinct !{!4404, !4405, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4405 = distinct !{!4405, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4406 = distinct !{!4406, !4407, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!4407 = distinct !{!4407, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!4408 = !{!4409, !4411}
!4409 = distinct !{!4409, !4410, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4410 = distinct !{!4410, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4411 = distinct !{!4411, !4412, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!4412 = distinct !{!4412, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!4413 = !{!4414}
!4414 = distinct !{!4414, !4415, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4415 = distinct !{!4415, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4416 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4417 = distinct !{null, null, null}
!4418 = distinct !{!4418, !51}
!4419 = !{!4420}
!4420 = distinct !{!4420, !4421, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4421 = distinct !{!4421, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4422 = !{!370, !303, i64 65}
!4423 = !{!370, !303, i64 66}
!4424 = !{!370, !303, i64 67}
!4425 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!4426 = !{!4427}
!4427 = distinct !{!4427, !4428, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESG_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSJ_ILm5EEEEENS2_15ConstantCheckerIJSM_EEEJSM_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1A_E4typeEOS1B_DpOS1C_: argument 0"}
!4428 = distinct !{!4428, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESG_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSJ_ILm5EEEEENS2_15ConstantCheckerIJSM_EEEJSM_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1A_E4typeEOS1B_DpOS1C_"}
!4429 = !{!4430, !4432, !4434, !4427}
!4430 = distinct !{!4430, !4431, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4431 = distinct !{!4431, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4432 = distinct !{!4432, !4433, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEENS0_15ConstantCheckerIJSG_EEEJSG_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS1_17SignatureVariableESaISW_EEbENKUlvE_clEv: argument 0"}
!4433 = distinct !{!4433, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEENS0_15ConstantCheckerIJSG_EEEJSG_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS1_17SignatureVariableESaISW_EEbENKUlvE_clEv"}
!4434 = distinct !{!4434, !4435, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESA_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSD_ILm5EEEEENS2_15ConstantCheckerIJSG_EEEJSG_EEEEESt14default_deleteISK_EERZNS3_22SimpleFunctionRegistry16registerFunctionISK_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS3_17SignatureVariableESaIS11_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!4435 = distinct !{!4435, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESA_NS2_11LongDecimalINS2_15IntegerVariableILm1EEENSD_ILm5EEEEENS2_15ConstantCheckerIJSG_EEEJSG_EEEEESt14default_deleteISK_EERZNS3_22SimpleFunctionRegistry16registerFunctionISK_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS3_17SignatureVariableESaIS11_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!4436 = !{!4437}
!4437 = distinct !{!4437, !4438, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISO_EERKNS4_11QueryConfigERKSK_ISL_INS1_10BaseVectorEESaISX_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4438 = distinct !{!4438, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISO_EERKNS4_11QueryConfigERKSK_ISL_INS1_10BaseVectorEESaISX_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4439 = !{!4440, !4440, i64 0}
!4440 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEES7_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEE", !11, i64 0}
!4441 = !{!4442}
!4442 = distinct !{!4442, !4443, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_4exec10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJSE_EEEJSE_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4443 = distinct !{!4443, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_4exec10VectorExecEEES8_NS1_11LongDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJSE_EEEJSE_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4444 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEED2Ev}
!4445 = !{!4446, !4453, i64 184}
!4446 = !{!"_ZTSN8facebook5velox10FlatVectorInEE", !4447, i64 0, !634, i64 176, !4453, i64 184, !698, i64 192, !703, i64 216}
!4447 = !{!"_ZTSN8facebook5velox12SimpleVectorInEE", !631, i64 0, !689, i64 94, !5, i64 96, !4, i64 100, !4448, i64 112}
!4448 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsInEE", !4449, i64 0, !4449, i64 32}
!4449 = !{!"_ZTSSt8optionalInE", !4450, i64 0}
!4450 = !{!"_ZTSSt14_Optional_baseInLb1ELb1EE", !4451, i64 0}
!4451 = !{!"_ZTSSt17_Optional_payloadInLb1ELb1ELb1EE", !4452, i64 0}
!4452 = !{!"_ZTSSt22_Optional_payload_baseInE", !5, i64 0, !303, i64 16}
!4453 = !{!"p1 __int128", !11, i64 0}
!4454 = !{!4455, !303, i64 224}
!4455 = !{!"_ZTSN8facebook5velox14ConstantVectorInEE", !4447, i64 0, !713, i64 176, !4, i64 192, !634, i64 200, !4456, i64 208, !303, i64 224, !303, i64 225, !714, i64 232}
!4456 = !{!"__int128", !5, i64 0}
!4457 = !{!4456, !4456, i64 0}
!4458 = distinct !{!4458, !737}
!4459 = distinct !{!4459, !51}
!4460 = distinct !{!4460, !51}
!4461 = distinct !{!4461, !51}
!4462 = distinct !{!4462, !51}
!4463 = distinct !{!4463, !51}
!4464 = !{!4465}
!4465 = distinct !{!4465, !4466, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4466 = distinct !{!4466, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4467 = distinct !{!4467, !51}
!4468 = !{!4469}
!4469 = distinct !{!4469, !4470, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4470 = distinct !{!4470, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4471 = distinct !{!4471, !51}
!4472 = !{!4473}
!4473 = distinct !{!4473, !4474, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4474 = distinct !{!4474, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4475 = !{!4476}
!4476 = distinct !{!4476, !4477, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4477 = distinct !{!4477, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4478 = distinct !{!4478, !51}
!4479 = !{!4480}
!4480 = distinct !{!4480, !4481, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4481 = distinct !{!4481, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4482 = distinct !{!4482, !51}
!4483 = distinct !{!4483, !51}
!4484 = !{!4485}
!4485 = distinct !{!4485, !4486, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_: argument 0"}
!4486 = distinct !{!4486, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRnRbRT0_DpRKT1_"}
!4487 = distinct !{!4487, !51}
!4488 = distinct !{!4488, !51}
!4489 = distinct !{!4489, !51}
!4490 = distinct !{!4490, !51}
!4491 = distinct !{!4491, !51}
!4492 = !{!4452, !303, i64 16}
!4493 = !{!4494}
!4494 = distinct !{!4494, !4495, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4495 = distinct !{!4495, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4496 = !{!4497}
!4497 = distinct !{!4497, !4498, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4498 = distinct !{!4498, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4499 = !{!4500}
!4500 = distinct !{!4500, !4501, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4501 = distinct !{!4501, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4502 = !{!4503}
!4503 = distinct !{!4503, !4504, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4504 = distinct !{!4504, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4505 = !{!4506}
!4506 = distinct !{!4506, !4507, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!4507 = distinct !{!4507, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!4508 = distinct !{!4508, !51}
!4509 = !{!4510, !4511, i64 0}
!4510 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_4exec10VectorExecEEENS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJSE_EEEJSE_EEELN9__gnu_cxx12_Lock_policyE2EE", !4511, i64 0, !32, i64 8}
!4511 = !{!"p1 _ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEE", !11, i64 0}
!4512 = !{!4513}
!4513 = distinct !{!4513, !4514, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_4exec10VectorExecEEENS2_12ShortDecimalINS2_15IntegerVariableILm1EEENSC_ILm5EEEEENS2_15ConstantCheckerIJSF_EEEJSF_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSQ_: argument 0"}
!4514 = distinct !{!4514, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_4exec10VectorExecEEENS2_12ShortDecimalINS2_15IntegerVariableILm1EEENSC_ILm5EEEEENS2_15ConstantCheckerIJSF_EEEJSF_EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSQ_"}
!4515 = !{!4516, !303, i64 8}
!4516 = !{!"_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEE", !302, i64 0, !303, i64 8, !304, i64 16, !4, i64 32, !307, i64 40, !310, i64 56}
!4517 = !{!4518}
!4518 = distinct !{!4518, !4519, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISI_EE: argument 0"}
!4519 = distinct !{!4519, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE21analyzeSignatureTypesERKSt6vectorINS6_17SignatureVariableESaISI_EE"}
!4520 = !{!4521}
!4521 = distinct !{!4521, !4522, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4522 = distinct !{!4522, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4523 = !{!4524}
!4524 = distinct !{!4524, !4525, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4525 = distinct !{!4525, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4526 = !{!4527}
!4527 = distinct !{!4527, !4528, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4528 = distinct !{!4528, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4529 = !{!4527, !4524, !4521}
!4530 = !{!4527, !4524, !4521, !4518}
!4531 = !{!4532}
!4532 = distinct !{!4532, !4533, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev: argument 0"}
!4533 = distinct !{!4533, !"_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev"}
!4534 = !{!4535}
!4535 = distinct !{!4535, !4536, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4536 = distinct !{!4536, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4537 = !{!4538}
!4538 = distinct !{!4538, !4539, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4539 = distinct !{!4539, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4540 = !{!4538, !4535, !4532}
!4541 = !{!4538, !4535, !4532, !4518}
!4542 = !{!4543, !4518}
!4543 = distinct !{!4543, !4544, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!4544 = distinct !{!4544, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!4545 = !{!4543}
!4546 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4547 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4548 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4549 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4550 = !{!4516, !4, i64 32}
!4551 = distinct !{null, null, null, null, null, null, null, null, null, null}
!4552 = !{!4511, !4511, i64 0}
!4553 = distinct !{null, null}
!4554 = !{!4555}
!4555 = distinct !{!4555, !4556, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE10CreateTypeISD_E6createERKSt10shared_ptrINS6_17FunctionSignatureEE: argument 0"}
!4556 = distinct !{!4556, !"_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EE10CreateTypeISD_E6createERKSt10shared_ptrINS6_17FunctionSignatureEE"}
!4557 = distinct !{!4557, !51}
!4558 = !{!4559}
!4559 = distinct !{!4559, !4560, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4560 = distinct !{!4560, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4561 = !{!4562, !4564}
!4562 = distinct !{!4562, !4563, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4563 = distinct !{!4563, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4564 = distinct !{!4564, !4565, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!4565 = distinct !{!4565, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!4566 = !{!4567, !4569}
!4567 = distinct !{!4567, !4568, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!4568 = distinct !{!4568, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!4569 = distinct !{!4569, !4570, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!4570 = distinct !{!4570, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!4571 = !{!4572}
!4572 = distinct !{!4572, !4573, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!4573 = distinct !{!4573, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!4574 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4575 = distinct !{null, null, null}
!4576 = !{!4577}
!4577 = distinct !{!4577, !4578, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESG_NS2_12ShortDecimalINS2_15IntegerVariableILm1EEENSJ_ILm5EEEEENS2_15ConstantCheckerIJSM_EEEJSM_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1A_E4typeEOS1B_DpOS1C_: argument 0"}
!4578 = distinct !{!4578, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EERZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESG_NS2_12ShortDecimalINS2_15IntegerVariableILm1EEENSJ_ILm5EEEEENS2_15ConstantCheckerIJSM_EEEJSM_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERKSR_INS3_17SignatureVariableESaIS12_EEbEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1A_E4typeEOS1B_DpOS1C_"}
!4579 = !{!4580, !4582, !4584, !4577}
!4580 = distinct !{!4580, !4581, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4581 = distinct !{!4581, !"_ZSt11make_uniqueIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4582 = distinct !{!4582, !4583, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEESA_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEENS0_15ConstantCheckerIJSG_EEEJSG_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS1_17SignatureVariableESaISW_EEbENKUlvE_clEv: argument 0"}
!4583 = distinct !{!4583, !"_ZZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEESA_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSD_ILm5EEEEENS0_15ConstantCheckerIJSG_EEEJSG_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EERKSL_INS1_17SignatureVariableESaISW_EEbENKUlvE_clEv"}
!4584 = distinct !{!4584, !4585, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESA_NS2_12ShortDecimalINS2_15IntegerVariableILm1EEENSD_ILm5EEEEENS2_15ConstantCheckerIJSG_EEEJSG_EEEEESt14default_deleteISK_EERZNS3_22SimpleFunctionRegistry16registerFunctionISK_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS3_17SignatureVariableESaIS11_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!4585 = distinct !{!4585, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESA_NS2_12ShortDecimalINS2_15IntegerVariableILm1EEENSD_ILm5EEEEENS2_15ConstantCheckerIJSG_EEEJSG_EEEEESt14default_deleteISK_EERZNS3_22SimpleFunctionRegistry16registerFunctionISK_EEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERKSQ_INS3_17SignatureVariableESaIS11_EEbEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!4586 = !{!4587}
!4587 = distinct !{!4587, !4588, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISO_EERKNS4_11QueryConfigERKSK_ISL_INS1_10BaseVectorEESaISX_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4588 = distinct !{!4588, !"_ZSt11make_uniqueIN8facebook5velox4exec21SimpleFunctionAdapterINS1_4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS2_10VectorExecEEES9_NS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJSF_EEEJSF_EEEEEJRKSt6vectorISt10shared_ptrIKNS1_4TypeEESaISO_EERKNS4_11QueryConfigERKSK_ISL_INS1_10BaseVectorEESaISX_EERPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4589 = !{!4590, !4590, i64 0}
!4590 = !{!"p1 _ZTSN8facebook5velox4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS0_4exec10VectorExecEEES7_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSA_ILm5EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEE", !11, i64 0}
!4591 = !{!4592}
!4592 = distinct !{!4592, !4593, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_4exec10VectorExecEEES8_NS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJSE_EEEJSE_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4593 = distinct !{!4593, !"_ZSt11make_uniqueIN8facebook5velox4core9UDFHolderINS1_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_4exec10VectorExecEEES8_NS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSB_ILm5EEEEENS1_15ConstantCheckerIJSE_EEEJSE_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4594 = !{ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEED2Ev}
!4595 = distinct !{!4595, !51, !462, !463}
!4596 = distinct !{!4596, !51, !462, !463}
!4597 = distinct !{!4597, !51, !463, !462}
!4598 = distinct !{!4598, !51}
!4599 = distinct !{!4599, !51, !462, !463}
!4600 = distinct !{!4600, !51, !462, !463}
!4601 = distinct !{!4601, !51, !463, !462}
!4602 = distinct !{!4602, !51}
!4603 = distinct !{!4603, !51}
!4604 = !{!4605}
!4605 = distinct !{!4605, !4606, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!4606 = distinct !{!4606, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!4607 = distinct !{!4607, !51, !462, !463}
!4608 = distinct !{!4608, !51, !462, !463}
!4609 = distinct !{!4609, !51, !462}
!4610 = !{!4611}
!4611 = distinct !{!4611, !4612, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!4612 = distinct !{!4612, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!4613 = distinct !{!4613, !51}
!4614 = !{!4615}
!4615 = distinct !{!4615, !4616, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!4616 = distinct !{!4616, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!4617 = !{!4618}
!4618 = distinct !{!4618, !4619, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!4619 = distinct !{!4619, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!4620 = distinct !{!4620, !51, !462, !463}
!4621 = distinct !{!4621, !51, !462, !463}
!4622 = distinct !{!4622, !51, !462}
!4623 = !{!4624}
!4624 = distinct !{!4624, !4625, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!4625 = distinct !{!4625, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISE_EEJETnNSt9enable_ifIXneT_L_ZNSH_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
end_hunk_11
