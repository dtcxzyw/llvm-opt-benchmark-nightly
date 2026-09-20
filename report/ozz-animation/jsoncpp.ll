Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4Json17CharReaderBuilder8validateEPNS_5ValueE:_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit.i
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
  %i.r = ptrtoint ptr %.sroa.10.094 to i64        ; 2 uses
  %i.s = ptrtoint ptr %.sroa.050.095 to i64       ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.m, label %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
          to label %.noexc unwind label %.loopexit.split-lp68

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.v = ashr exact i64 %i.t, 3
  %mul2.i.i = ashr exact i64 %i.t, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.w = icmp ult i64 %5, %i.v
  %i.x = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #43
          to label %.noexc19 unwind label %.loopexit67 ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.t
  %i.ac = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !192
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.050.095, %.sroa.10.094
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc19
  %i.ad = ptrtoaddr ptr %i.aa to i64
  %i.ae = add i64 %i.r, -8
  %i.af = sub i64 %i.ae, %i.s                     ; 3 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.af, 24
  %i.ai = sub i64 %i.s, %i.ad
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
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.050.095, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 4 uses
  %next.gep149 = getelementptr i8, ptr %.sroa.050.095, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.ao = getelementptr i8, ptr %next.gep149, i64 32
  %i.ap = getelementptr i8, ptr %next.gep149, i64 64
  %i.aq = getelementptr i8, ptr %next.gep149, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep149, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load150.a = load <4 x i64>, ptr %i.ao, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load151.a = load <4 x i64>, ptr %i.ap, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load152 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 64
  %i.at = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load150.a, ptr %i.ar, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load151.a, ptr %i.as, align 8, !tbaa !192, !alias.scope !540, !noalias !541
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
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %.sroa.050.095, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index155, 3                    ; 2 uses
  %next.gep156.a = getelementptr i8, ptr %i.aa, i64 %i.ay
  %next.gep157 = getelementptr i8, ptr %.sroa.050.095, i64 %i.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %wide.load158 = load <4 x i64>, ptr %next.gep157, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  store <4 x i64> %wide.load158, ptr %next.gep156.a, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  %index.next159 = add nuw i64 %index155, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !533

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n160 = icmp eq i64 %i.ah, %n.vec154
  br i1 %cmp.n160, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
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
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %.noexc19 ], [ %i.aw, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.050.095, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.095, i64 noundef %i.t) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.k
  %.sroa.15.1 = phi ptr [ %i.bd, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.15.092, %bb.k ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.10.094, %bb.k ] ; 4 uses
  %.sroa.050.1 = phi ptr [ %i.aa, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.050.095, %bb.k ] ; 22 uses
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
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_T1_:bb.a
bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i12.i = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !192
  %i.bm = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !192
  store i64 %i.bm, ptr %.sroa.012.1.i.i, align 8, !tbaa !192
  store ptr %.sroa.0.0.copyload.i.i.i12.i, ptr %.sroa.09.1.i.i, align 8, !tbaa !192
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_SM_SM_T0_.exit.i, !llvm.loop !757

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEET_SM_SM_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.at, ptr %3)
  %i.bn = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bo = sub i64 %i.bn, %i.a
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 16
  br i1 %i.bq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_SM_T0_.exit, !llvm.loop !749

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_SM_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEET_SM_SM_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_SM_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree_const_iterator.31", align 8 ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit.us
  %.010.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.us
  %.sroa.03.0.copyload.us = load ptr, ptr %i.p, align 8, !tbaa !192 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !88 ; 2 uses
  %i.q = icmp slt i64 %.010.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.r = ptrtoint ptr %.sroa.03.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.038.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.010.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.038.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !758
  %spec.select.i.us = select i1 %i.x, i64 %i.v, i64 %i.t ; 6 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.038.i.us
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !192
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !192
  %i.ab = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !29

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.03.0.copyload.us, ptr %3, align 8
  %i.ac = icmp sgt i64 %spec.select.i.us, %.010.us
  %i.ad = ptrtoint ptr %.sroa.03.0.copyload.us to i64
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.018.i.i.us = phi i64 [ %.0919.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0919.in.i.i.us = add nsw i64 %.018.i.i.us, -1
  %.0919.i.i.us = sdiv i64 %.0919.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0919.i.i.us ; 2 uses
  %i.af = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !759
  br i1 %i.af, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !192
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !192
  %i.ai = icmp sgt i64 %.0919.i.i.us, %.010.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !30

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.0.lcssa.ph.i.i.us = phi i64 [ %.018.i.i.us, %.lr.ph.i.i.us ], [ %.0919.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8, !tbaa !192
  br label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit.us

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.aj = phi i64 [ %i.ad, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %i.r, %._crit_edge.i.us.thread ]
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.0.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.010.us, %._crit_edge.i.us.thread ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !192
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.010.us, 0
  %i.al = add nsw i64 %.010.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !760

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit
  %.010 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.010
  %.sroa.03.0.copyload = load ptr, ptr %i.am, align 8, !tbaa !192 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !88 ; 2 uses
  %i.an = icmp slt i64 %.010, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %.split ] ; 2 uses
  %i.ao = shl i64 %.038.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.as), !inline_history !758
  %spec.select.i = select i1 %i.at, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.038.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !192
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !192
  %i.ax = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.010, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = load i64, ptr %i.n, align 8, !tbaa !192
  store i64 %i.az, ptr %i.o, align 8, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.03.0.copyload, ptr %3, align 8
  %i.ba = icmp sgt i64 %.1.i, %.010
  %i.bb = ptrtoint ptr %.sroa.03.0.copyload to i64
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0919.i.i ; 2 uses
  %i.bd = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !759
  br i1 %i.bd, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !192
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !192
  %i.bg = icmp sgt i64 %.0919.i.i, %.010
  br i1 %i.bg, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !30

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.018.i.i, %.lr.ph.i.i ], [ %.0919.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8, !tbaa !192
  br label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bh = phi i64 [ %i.bb, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !192
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.010, 0
  %i.bj = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !760

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_T0_SN_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #34

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !190    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5
  %mul2 = ashr exact i64 %i.f, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #43 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !46
  %i.r = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !77
  %i.y = load i64, ptr %i.s, align 8, !tbaa !50
  store i64 %i.y, ptr %i.q, align 8, !tbaa !50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !49
  store ptr %i.s, ptr %2, align 8, !tbaa !77
  store i64 0, ptr %i.aa, align 8, !tbaa !49
  store i8 0, ptr %i.s, align 8, !tbaa !50
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !767, !noalias !768
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !768, !noalias !767 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49, !alias.scope !768, !noalias !767 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !769
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !767, !noalias !768
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !50, !alias.scope !768, !noalias !767
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !50, !alias.scope !767, !noalias !768
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !768, !noalias !767
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !49, !alias.scope !767, !noalias !768
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !768, !noalias !767
  store i64 0, ptr %i.am, align 8, !tbaa !49, !alias.scope !768, !noalias !767
  store i8 0, ptr %i.ae, align 8, !tbaa !50, !alias.scope !768, !noalias !767
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !46, !alias.scope !770, !noalias !771
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !77, !alias.scope !771, !noalias !770 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !49, !alias.scope !771, !noalias !770 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !772
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !77, !alias.scope !770, !noalias !771
  %i.az = load i64, ptr %i.at, align 8, !tbaa !50, !alias.scope !771, !noalias !770
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !50, !alias.scope !770, !noalias !771
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !49, !alias.scope !771, !noalias !770
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !49, !alias.scope !770, !noalias !771
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !77, !alias.scope !771, !noalias !770
  store i64 0, ptr %i.bb, align 8, !tbaa !49, !alias.scope !771, !noalias !770
  store i8 0, ptr %i.at, align 8, !tbaa !50, !alias.scope !771, !noalias !770
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !25

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !191
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !190
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !189
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !244    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
  unreachable

_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #43 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !46
  %i.r = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN4Json12PathArgumentC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !77
  %i.y = load i64, ptr %i.s, align 8, !tbaa !50
  store i64 %i.y, ptr %i.q, align 8, !tbaa !50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49
  br label %_ZN4Json12PathArgumentC2EOS0_.exit

_ZN4Json12PathArgumentC2EOS0_.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !49
  store ptr %i.s, ptr %2, align 8, !tbaa !77
  store i64 0, ptr %i.aa, align 8, !tbaa !49
  store i8 0, ptr %i.s, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.ac, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4Json12PathArgumentC2EOS0_.exit, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZN4Json12PathArgumentC2EOS0_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN4Json12PathArgumentC2EOS0_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !779, !noalias !780
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !780, !noalias !779 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49, !alias.scope !780, !noalias !779 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !781
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !779, !noalias !780
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !50, !alias.scope !780, !noalias !779
  store i64 %i.an, ptr %i.af, align 8, !tbaa !50, !alias.scope !779, !noalias !780
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !780, !noalias !779
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !49, !alias.scope !779, !noalias !780
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !780, !noalias !779
  store i64 0, ptr %i.ap, align 8, !tbaa !49, !alias.scope !780, !noalias !779
  store i8 0, ptr %i.ah, align 8, !tbaa !50, !alias.scope !780, !noalias !779
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !780, !noalias !779
  store i64 %i.at, ptr %i.ar, align 8, !alias.scope !779, !noalias !780
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN4Json12PathArgumentC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN4Json12PathArgumentC2EOS0_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aw, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !46, !alias.scope !782, !noalias !783
  %i.ay = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !77, !alias.scope !783, !noalias !782 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !49, !alias.scope !783, !noalias !782 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false), !alias.scope !784
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !77, !alias.scope !782, !noalias !783
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !50, !alias.scope !783, !noalias !782
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !50, !alias.scope !782, !noalias !783
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !49, !alias.scope !783, !noalias !782
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bg = phi i64 [ %i.bc, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !49, !alias.scope !782, !noalias !783
  store ptr %i.az, ptr %.0911.i.i.i19, align 8, !tbaa !77, !alias.scope !783, !noalias !782
  store i64 0, ptr %i.bh, align 8, !tbaa !49, !alias.scope !783, !noalias !782
  store i8 0, ptr %i.az, align 8, !tbaa !50, !alias.scope !783, !noalias !782
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !783, !noalias !782
  store i64 %i.bl, ptr %i.bj, align 8, !alias.scope !782, !noalias !783
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !31

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aw, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !243
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.br) #41
  br label %_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !244
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !242
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !244    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
  unreachable

_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.i, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !46
  %i.s = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.u, ptr %i.a, align 8, !tbaa !112
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !77
  %i.x = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.x, ptr %i.r, align 8, !tbaa !50
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !50
  store i8 %i.z, ptr %i.y, align 1, !tbaa !50
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.ae, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !791, !noalias !792
  %i.ai = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !792, !noalias !791 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !49, !alias.scope !792, !noalias !791 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !793
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !791, !noalias !792
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !50, !alias.scope !792, !noalias !791
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !50, !alias.scope !791, !noalias !792
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !792, !noalias !791
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.aq = phi i64 [ %i.am, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !49, !alias.scope !791, !noalias !792
  store ptr %i.aj, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !792, !noalias !791
  store i64 0, ptr %i.ar, align 8, !tbaa !49, !alias.scope !792, !noalias !791
  store i8 0, ptr %i.aj, align 8, !tbaa !50, !alias.scope !792, !noalias !791
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !792, !noalias !791
  store i64 %i.av, ptr %i.at, align 8, !alias.scope !791, !noalias !792
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ax, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ay, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.az, ptr %.012.i.i.i28, align 8, !tbaa !46, !alias.scope !794, !noalias !795
  %i.ba = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !77, !alias.scope !795, !noalias !794 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !49, !alias.scope !795, !noalias !794 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false), !alias.scope !796
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ba, ptr %.012.i.i.i28, align 8, !tbaa !77, !alias.scope !794, !noalias !795
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !50, !alias.scope !795, !noalias !794
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !50, !alias.scope !794, !noalias !795
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !49, !alias.scope !795, !noalias !794
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bi = phi i64 [ %i.be, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !49, !alias.scope !794, !noalias !795
  store ptr %i.bb, ptr %.0911.i.i.i29, align 8, !tbaa !77, !alias.scope !795, !noalias !794
  store i64 0, ptr %i.bj, align 8, !tbaa !49, !alias.scope !795, !noalias !794
  store i8 0, ptr %i.bb, align 8, !tbaa !50, !alias.scope !795, !noalias !794
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !795, !noalias !794
  store i64 %i.bn, ptr %i.bl, align 8, !alias.scope !794, !noalias !795
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !31

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36: ; preds = %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ay, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bp, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !243
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bt) #41
  br label %_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !244
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !242
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !243
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #40 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #41
  invoke void @__cxa_rethrow() #44
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bv

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #42
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #30

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !189  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !190    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5
  %mul2 = ashr exact i64 %i.g, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !46
  %i.s = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.u, ptr %i.a, align 8, !tbaa !112
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !77
  %i.x = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.x, ptr %i.r, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !50
  store i8 %i.z, ptr %i.y, align 1, !tbaa !50
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !803, !noalias !804
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !804, !noalias !803 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !49, !alias.scope !804, !noalias !803 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !805
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !803, !noalias !804
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !50, !alias.scope !804, !noalias !803
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !50, !alias.scope !803, !noalias !804
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !804, !noalias !803
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !49, !alias.scope !803, !noalias !804
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !804, !noalias !803
  store i64 0, ptr %i.ao, align 8, !tbaa !49, !alias.scope !804, !noalias !803
  store i8 0, ptr %i.ag, align 8, !tbaa !50, !alias.scope !804, !noalias !803
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !46, !alias.scope !806, !noalias !807
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !77, !alias.scope !807, !noalias !806 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !49, !alias.scope !807, !noalias !806 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !808
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !77, !alias.scope !806, !noalias !807
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !50, !alias.scope !807, !noalias !806
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !50, !alias.scope !806, !noalias !807
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !49, !alias.scope !807, !noalias !806
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !49, !alias.scope !806, !noalias !807
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !77, !alias.scope !807, !noalias !806
  store i64 0, ptr %i.bd, align 8, !tbaa !49, !alias.scope !807, !noalias !806
  store i8 0, ptr %i.av, align 8, !tbaa !50, !alias.scope !807, !noalias !806
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !25

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !191
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !190
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !189
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !191
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #40 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #41
  invoke void @__cxa_rethrow() #44
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #42
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_jsoncpp.cpp() #35 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Json5Value4nullE, i64 8), align 8
  %i.b = and i16 %i.a, -512
  store i16 %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Json5Value4nullE, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4Json5Value4nullE, i64 16), i8 0, i64 16, i1 false)
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZN4Json5Value4nullE, ptr nonnull @__dso_handle) #40 ; 0 uses
  ret void
end_hunk_1
