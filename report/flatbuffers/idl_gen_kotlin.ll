Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_kotlin?download=true
inline.NumInlined: 4845
inline.NumDeleted: 1156
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZZNK11flatbuffers6kotlin15KotlinGenerator20GenerateTableCreatorERNS_9StructDefERNS_10CodeWriterENS_10IDLOptionsEENKUlvE_clEv:._crit_edge.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.dy = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.dy, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 7 uses
  %.1.in.v.i.i.i.i = select i1 %i.dy, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit.i, label %bb.f, !llvm.loop !3

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.dz = icmp eq ptr %.19.i.i.i.i, %i.do
  br i1 %i.dz, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !34 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.dp) ; 2 uses
  %i.ec = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ec, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !24
  %i.ef = call i32 @memcmp(ptr noundef %i.dq, ptr noundef %i.ee, i64 noundef %.sroa.speculated.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i.i4.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.g
  %i.eg = sub i64 %i.dp, %i.eb
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.eg, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ef, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.eh = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.eh, label %.critedge.i, label %.noexc87

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit.i, %_ZNK11flatbuffers8IdlNamer5FieldB5cxx11ERKNS_8FieldDefE.exit
  %.08.lcssa.i.i.i12.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit.i ], [ %i.do, %_ZNK11flatbuffers8IdlNamer5FieldB5cxx11ERKNS_8FieldDefE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %7, ptr %2, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.di, ptr %1, align 8, !tbaa !255
  %i.ei = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc174 unwind label %bb.w  ; 10 uses

.noexc174:                                        ; preds = %.critedge.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(477) %i.di, ptr noundef nonnull %i.ei, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc175 unwind label %bb.w

.noexc175:                                        ; preds = %.noexc174
  store ptr %i.ei, ptr %i.av, align 8, !tbaa !258
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %i.ek = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(477) %i.di, ptr %.08.lcssa.i.i.i12.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ej)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %.noexc175
  %i.el = extractvalue { ptr, ptr } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { ptr, ptr } %i.ek, 1      ; 5 uses
  %.not.i = icmp eq ptr %i.em, null
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp ne ptr %i.el, null
  %i.en = icmp eq ptr %i.em, %i.do
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.en
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !34 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !34 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.er, i64 %i.ep) ; 2 uses
  %i.es = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.es, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !24
  %i.ev = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.ew = call i32 @memcmp(ptr noundef %i.ev, ptr noundef %i.eu, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.j
  %i.ex = sub i64 %i.ep, %i.er
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ex, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ew, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ey = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %bb.i
  %i.ez = phi i1 [ %i.ey, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ true, %bb.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ez, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.em, ptr noundef nonnull align 8 dereferenceable(32) %i.do) #26
  %i.fa = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !42
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !42
  br label %.noexc173

bb.k:                                             ; preds = %.noexc175
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.body

bb.l:                                             ; preds = %bb.h
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 80 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !25
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fk = load ptr, ptr %i.ej, align 8, !tbaa !24 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ei, i64 48 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !25
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 96) #24
  br label %.noexc173

.noexc173:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.ei, %.thread.i ], [ %i.el, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.noexc87

.noexc87:                                         ; preds = %.noexc173, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.sroa.07.0.i = phi ptr [ %.sroa.0.010.i, %.noexc173 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit89 unwind label %bb.w

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit89: ; preds = %.noexc87
  %i.fq = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.aw
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit89
  %i.fs = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.fu = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.as
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.fw = load i64, ptr %i.as, align 8, !tbaa !25
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fy = load i32, ptr %i.cz, align 8, !tbaa !271
  %i.fz = add i32 %i.fy, -1
  %i.ga = icmp ult i32 %i.fz, 12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cy, i64 280 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8
  %i.gd = icmp eq i32 %i.gc, 1
  %i.ge = select i1 %i.ga, i1 %i.gd, i1 false     ; 2 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !26
  %i.gf = select i1 %i.ge, i64 23, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.gf, ptr %i.a, align 8, !tbaa !52
  br i1 %i.ge, label %bb.m, label %._crit_edge.i.i96

._crit_edge.i.i96:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  store i8 92, ptr %i.ax, align 8, !tbaa !25
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.gg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.gg, ptr %9, align 8, !tbaa !24
  %i.gh = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.gh, ptr %i.ax, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.gg, ptr noundef nonnull align 1 dereferenceable(23) @.str.246, i64 23, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i96
  %17 = load i64, ptr %i.a, align 8, !tbaa !52    ; 2 uses
  store i64 %17, ptr %i.ay, align 8, !tbaa !34
  %i.gi = load ptr, ptr %9, align 8, !tbaa !24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %17
  store i8 0, ptr %i.gj, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gk = load ptr, ptr %0, align 8, !tbaa !1285, !nonnull !48, !align !49
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.gk, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.gl = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ax
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.o
  %i.gn = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %i.az, ptr %12, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.az, ptr noundef nonnull align 1 dereferenceable(3) @.str.248, i64 3, i1 false)
  store i64 3, ptr %i.ba, align 8, !tbaa !34
  store i8 0, ptr %i.bs, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.bb, ptr %13, align 8, !tbaa !26
  store i64 0, ptr %i.bc, align 8, !tbaa !34
  store i8 0, ptr %i.bb, align 8, !tbaa !25
  invoke void @_ZNK11flatbuffers8IdlNamer18LegacyKotlinMethodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8FieldDefES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(400) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(312) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.gp = load i64, ptr %i.bd, align 8, !tbaa !34, !noalias !1293
  %i.gq = add i64 %i.gp, -4611686018427387879
  %i.gr = icmp ult i64 %i.gq, 25
  br i1 %i.gr, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #28
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.p
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.249, i64 noundef 25)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc113:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.be, ptr %10, align 8, !tbaa !26, !alias.scope !1293
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !24 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 5 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

bb.r:                                             ; preds = %.noexc113
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !34 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %i.gz = add nuw nsw i64 %i.gx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.gu, i64 %i.gz, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %.noexc113
  store ptr %i.gt, ptr %10, align 8, !tbaa !24, !alias.scope !1293
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !25
  store i64 %i.ha, ptr %i.be, align 8, !tbaa !25, !alias.scope !1293
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.r
  %i.hb = phi i64 [ %i.gx, %bb.r ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 %i.hb, ptr %i.bf, align 8, !tbaa !34, !alias.scope !1293
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !24
  store i64 0, ptr %i.hc, align 8, !tbaa !34
  store i8 0, ptr %i.gu, align 8, !tbaa !25
  %i.hd = load ptr, ptr %0, align 8, !tbaa !1285, !nonnull !48, !align !49
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.hd, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.he = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.be
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.t
  %i.hg = load i64, ptr %i.be, align 8, !tbaa !25
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.hi = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.bg
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.hk = load i64, ptr %i.bg, align 8, !tbaa !25
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  %i.hm = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.bb
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.ho = load i64, ptr %i.bb, align 8, !tbaa !25
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.hq = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.az
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.hs = load i64, ptr %i.az, align 8, !tbaa !25
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.hu = load i32, ptr %i.cz, align 8, !tbaa !271
  %i.hv = add i32 %i.hu, -1
  %i.hw = icmp ult i32 %i.hv, 12
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  store ptr %i.bh, ptr %14, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bh, ptr noundef nonnull align 1 dereferenceable(7) @.str.250, i64 7, i1 false)
  store i64 7, ptr %i.bi, align 8, !tbaa !34
  store i8 0, ptr %i.bt, align 1, !tbaa !25
  %i.hx = load ptr, ptr %0, align 8, !tbaa !1285, !nonnull !48, !align !49
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.hx, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %._crit_edge.i.i126
  %i.hy = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.bh
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.u
  %i.ia = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.v:                                             ; preds = %._crit_edge.i.i82
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.w:                                             ; preds = %.noexc174, %.critedge.i, %.noexc87
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.id, %bb.w ], [ %i.fd, %bb.k ] ; 2 uses
  %i.ie = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.aw
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %.body
  %i.ig = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.v
  %.pn39 = phi { ptr, i32 } [ %i.ic, %bb.v ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ii = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.as
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.ik = load i64, ptr %i.as, align 8, !tbaa !25
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.x:                                             ; preds = %bb.n
end_hunk_0
