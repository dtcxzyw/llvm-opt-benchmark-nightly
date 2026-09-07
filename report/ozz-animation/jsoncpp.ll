Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4Json17CharReaderBuilder8validateEPNS_5ValueE:_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit.i
  br i1 %.not.i.i.i23, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i22, !llvm.loop !20

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.rp = icmp eq ptr %.19.i.i.i, %i.i
  br i1 %i.rp, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.rq = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49 ; 2 uses
  %.sroa.speculated.i.i.i.i.i24 = call i64 @llvm.umin.i64(i64 %i.rq, i64 %.pre47) ; 2 uses
  %i.rr = icmp eq i64 %.sroa.speculated.i.i.i.i.i24, 0
  br i1 %i.rr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25: ; preds = %bb.bu
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.rs = load ptr, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel, align 8, !tbaa !77
  %i.rt = call i32 @memcmp(ptr noundef %.pre46, ptr noundef %i.rs, i64 noundef %.sroa.speculated.i.i.i.i.i24) #40 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %bb.bu
  %i.ru = sub i64 %.pre47, %i.rq
  %spec.select7.i.i.i.i.i.i30 = call i64 @llvm.smax.i64(i64 %i.ru, i64 -2147483648)
  %.08.i.i.i.i.i.i31 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i30, i64 2147483647)
  %.0.i6.i.i.i.i.i32 = trunc nsw i64 %.08.i.i.i.i.i.i31 to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29
  %.0.i.i.i.i.i28 = phi i32 [ %i.rt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25 ], [ %.0.i6.i.i.i.i.i32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29 ]
  %i.rv = icmp slt i32 %.0.i.i.i.i.i28, 0
  br i1 %i.rv, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.bx

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %bb.bt, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.rw = getelementptr inbounds nuw i8, ptr %.pre46, i64 %.pre47
  %i.rx = invoke noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pn, ptr noundef %.pre46, ptr noundef %i.rw)
          to label %bb.bv unwind label %bb.bw     ; 2 uses

bb.bv:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rz = load ptr, ptr %i.rf, align 8, !tbaa !77 ; 2 uses
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !49
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sa
  %i.sc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %spec.store.select, ptr noundef %i.rz, ptr noundef %i.sb)
          to label %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.bw ; 4 uses

_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bv
  %.not.i = icmp eq ptr %i.rx, null
  %_ZN4JsonL5kNullE..i = select i1 %.not.i, ptr @_ZN4JsonL5kNullE, ptr %i.rx
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(32) %_ZN4JsonL5kNullE..i)
          to label %_ZN4Json5ValueaSERKS0_.exit unwind label %bb.bw

_ZN4Json5ValueaSERKS0_.exit:                      ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 2 uses
  %i.se = load i16, ptr %i.sd, align 8            ; 2 uses
  %i.sf = load i16, ptr %i.pv, align 8            ; 2 uses
  %i.sg = and i16 %i.se, -512
  %i.sh = and i16 %i.sf, -512
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.sc, align 8, !tbaa !50
  %i.si = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.si, ptr %i.sc, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8, !tbaa !50
  %i.sj = and i16 %i.sf, 511
  %i.sk = or disjoint i16 %i.sj, %i.sg
  store i16 %i.sk, ptr %i.sd, align 8
  %i.sl = and i16 %i.se, 511
  %i.sm = or disjoint i16 %i.sh, %i.sl
  store i16 %i.sm, ptr %i.pv, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !129
  %i.sp = load ptr, ptr %i.pw, align 8, !tbaa !129
  store ptr %i.sp, ptr %i.sn, align 8, !tbaa !129
  store ptr %i.so, ptr %i.pw, align 8, !tbaa !129
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre = load ptr, ptr %15, align 8, !tbaa !190
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.bv, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #40
  br label %bb.by

bb.bx:                                            ; preds = %_ZN4Json5ValueaSERKS0_.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.sr = phi ptr [ %.pre, %_ZN4Json5ValueaSERKS0_.exit ], [ %i.re, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit ] ; 2 uses
  %i.ss = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ss, %i.pu
  br i1 %exitcond.not, label %._crit_edge, label %bb.bt, !llvm.loop !528

bb.by:                                            ; preds = %bb.bw, %bb.bs
  %.pn.pn = phi { ptr, i32 } [ %i.sq, %bb.bw ], [ %i.rd, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, %bb.by
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.by ], [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i ], [ %.pn58.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i ], [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %.pn50.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i ], [ %.pn48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i ], [ %.pn46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %i.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ], [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json5Value14getMemberNamesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %trunc = trunc i16 %i.c to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.75, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #44
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !50
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit34

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit

bb.j:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not91 = icmp eq ptr %i.o, %i.p
  br i1 %.not91, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.sroa.050.095 = phi ptr [ %.sroa.050.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 12 uses
  %.sroa.10.094 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 8 uses
  %.sroa.047.093 = phi ptr [ %i.be, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ %i.o, %bb.j ] ; 3 uses
  %.sroa.15.092 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.094, %.sroa.15.092
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.q = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.q, ptr %.sroa.10.094, align 8, !tbaa !192
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %.sroa.10.094 to i64
  %i.s = ptrtoint ptr %.sroa.050.095 to i64       ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.m, label %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
          to label %.noexc unwind label %.loopexit.split-lp68

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #43
          to label %.noexc19 unwind label %.loopexit67 ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !192
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.050.095, %.sroa.10.094
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc19
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %i.af = add i64 %i.t, -8                        ; 3 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.af, 24
  %i.ai = sub i64 %i.s, %i.ae
  %diff.check = icmp ugt i64 %i.ai, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check148 = icmp ult i64 %i.af, 120
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.ah, 12
  %n.vec = and i64 %i.ah, 4611686018427387888     ; 4 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.050.095, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.an ; 4 uses
  %next.gep149 = getelementptr i8, ptr %.sroa.050.095, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.ao = getelementptr i8, ptr %next.gep149, i64 32
  %i.ap = getelementptr i8, ptr %next.gep149, i64 64
  %i.aq = getelementptr i8, ptr %next.gep149, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep149, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load150 = load <4 x i64>, ptr %i.ao, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load151 = load <4 x i64>, ptr %i.ap, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load152 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 64
  %i.at = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load150, ptr %i.ar, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load151, ptr %i.as, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load152, ptr %i.at, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !532

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec154 = and i64 %i.ah, 4611686018427387900  ; 3 uses
  %i.av = shl i64 %n.vec154, 3                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %.sroa.050.095, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index155, 3                    ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.ab, i64 %i.ay
  %next.gep157 = getelementptr i8, ptr %.sroa.050.095, i64 %i.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %wide.load158 = load <4 x i64>, ptr %next.gep157, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  store <4 x i64> %wide.load158, ptr %next.gep156, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  %index.next159 = add nuw i64 %index155, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !533

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n160 = icmp eq i64 %i.ah, %n.vec154
  br i1 %cmp.n160, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.050.095, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  store i64 %i.ba, ptr %.012.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %.sroa.10.094
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !534

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc19 ], [ %i.aw, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.050.095, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.095, i64 noundef %i.t) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.k
  %.sroa.15.1 = phi ptr [ %i.bd, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.15.092, %bb.k ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.10.094, %bb.k ] ; 4 uses
  %.sroa.050.1 = phi ptr [ %i.ab, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.050.095, %bb.k ] ; 22 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 10 uses
  %i.be = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.093) #45 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !535

.loopexit67:                                      ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp68:                             ; preds = %bb.m, %bb.o
  %.sroa.15.090 = phi ptr [ %.sroa.10.094, %bb.m ], [ %.sroa.15.1, %bb.o ]
  %.sroa.050.081 = phi ptr [ %.sroa.050.095, %bb.m ], [ %.sroa.050.1, %bb.o ]
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

._crit_edge:                                      ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.not.i.i = icmp eq ptr %.sroa.050.1, %.sroa.10.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bf = ptrtoint ptr %.sroa.10.1 to i64
  %i.bg = ptrtoint ptr %.sroa.050.1 to i64        ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_T1_(ptr %.sroa.050.1, ptr nonnull %.sroa.10.1, i64 noundef %i.bl, ptr nonnull @_ZN4Json12_GLOBAL__N_110sort_orderERKSt23_Rb_tree_const_iteratorISt4pairIKNS_5Value8CZStringES3_EES9_)
          to label %.noexc20 unwind label %.loopexit.split-lp68

.noexc20:                                         ; preds = %bb.o
  %i.bm = icmp sgt i64 %i.bh, 128
  %scevgep.i = getelementptr i8, ptr %.sroa.050.1, i64 8 ; 2 uses
  br i1 %i.bm, label %.lr.ph.i.i, label %bb.u

.lr.ph.i.i:                                       ; preds = %.noexc20, %bb.t
  %.sroa.0.023.i.idx.i = phi i64 [ %.sroa.0.023.i.add.i, %bb.t ], [ 8, %.noexc20 ] ; 4 uses
  %.pn22.i.i = phi ptr [ %.sroa.0.023.i.ptr.i, %bb.t ], [ %.sroa.050.1, %.noexc20 ] ; 3 uses
  %.sroa.0.023.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 %.sroa.0.023.i.idx.i ; 4 uses
  %i.bn = load ptr, ptr %.sroa.0.023.i.ptr.i, align 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !195 ; 3 uses
  %i.bq = load ptr, ptr %.sroa.050.1, align 8     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !195
  %i.bt = icmp ult i64 %i.bp, %i.bs
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = ptrtoint ptr %i.bq to i64
  br i1 %i.bt, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bw = icmp samesign ugt i64 %.sroa.0.023.i.idx.i, 8
  br i1 %i.bw, label %bb.q, label %bb.r, !prof !196

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.050.1, i64 %.sroa.0.023.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.r, %bb.q
  store ptr %i.bn, ptr %.sroa.050.1, align 8, !tbaa !192
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.by = load ptr, ptr %.pn22.i.i, align 8       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !195
  %i.cb = icmp ult i64 %i.bp, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i
  %.in126 = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %i.by, %bb.s ]
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn22.i.i, %bb.s ] ; 3 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.023.i.ptr.i, %bb.s ]
  %i.cc = ptrtoint ptr %.in126 to i64
  store i64 %i.cc, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !192
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8 ; 2 uses
  %i.cd = load ptr, ptr %.sroa.0.0.i.i.i, align 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !195
  %i.cg = icmp ult i64 %i.bp, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, !llvm.loop !536

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.s
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.023.i.ptr.i, %bb.s ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ]
  store i64 %i.bu, ptr %.sroa.04.0.lcssa.i.i.i, align 8, !tbaa !192
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %.sroa.0.023.i.add.i = add nuw nsw i64 %.sroa.0.023.i.idx.i, 8 ; 2 uses
  %.not.i.i36 = icmp eq i64 %.sroa.0.023.i.add.i, 128
  br i1 %.not.i.i36, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !537
end_hunk_0
