Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3515
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4Json17CharReaderBuilder8validateEPNS_5ValueE:bb.a
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.rm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ro = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.ro, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i23, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i22, !llvm.loop !20

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.rp = icmp eq ptr %.19.i.i.i, %i.i
  br i1 %i.rp, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.rq = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49 ; 2 uses
  %.sroa.speculated.i.i.i.i.i24 = call i64 @llvm.umin.i64(i64 %i.rq, i64 %.pre47) ; 2 uses
  %i.rr = icmp eq i64 %.sroa.speculated.i.i.i.i.i24, 0
  br i1 %i.rr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25: ; preds = %bb.bz
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.rs = load ptr, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel, align 8, !tbaa !78
  %i.rt = call i32 @memcmp(ptr noundef %.pre46, ptr noundef %i.rs, i64 noundef %.sroa.speculated.i.i.i.i.i24) #40 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %bb.bz
  %i.ru = sub i64 %.pre47, %i.rq
  %spec.select7.i.i.i.i.i.i30 = call i64 @llvm.smax.i64(i64 %i.ru, i64 -2147483648)
  %.08.i.i.i.i.i.i31 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i30, i64 2147483647)
  %.0.i6.i.i.i.i.i32 = trunc nsw i64 %.08.i.i.i.i.i.i31 to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29
  %.0.i.i.i.i.i28 = phi i32 [ %i.rt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25 ], [ %.0.i6.i.i.i.i.i32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29 ]
  %i.rv = icmp slt i32 %.0.i.i.i.i.i28, 0
  br i1 %i.rv, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.cc

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %bb.by, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.rw = getelementptr inbounds nuw i8, ptr %.pre46, i64 %.pre47
  %i.rx = invoke noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pn, ptr noundef %.pre46, ptr noundef %i.rw)
          to label %bb.ca unwind label %bb.cb     ; 2 uses

bb.ca:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rz = load ptr, ptr %i.rf, align 8, !tbaa !78 ; 2 uses
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !49
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sa
  %i.sc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %spec.store.select, ptr noundef %i.rz, ptr noundef %i.sb)
          to label %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.cb ; 4 uses

_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ca
  %.not.i = icmp eq ptr %i.rx, null
  %_ZN4JsonL5kNullE..i = select i1 %.not.i, ptr @_ZN4JsonL5kNullE, ptr %i.rx
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(32) %_ZN4JsonL5kNullE..i)
          to label %_ZN4Json5ValueaSERKS0_.exit unwind label %bb.cb

_ZN4Json5ValueaSERKS0_.exit:                      ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 2 uses
  %i.se = load <1 x i16>, ptr %i.sd, align 8
  %i.sf = load <1 x i16>, ptr %i.pv, align 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.sc, align 8, !tbaa !50
  %i.sg = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.sg, ptr %i.sc, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8, !tbaa !50
  %i.sh = shufflevector <1 x i16> %i.sf, <1 x i16> poison, <2 x i32> zeroinitializer
  %i.si = and <2 x i16> %i.sh, <i16 511, i16 -512>
  %i.sj = shufflevector <1 x i16> %i.se, <1 x i16> poison, <2 x i32> zeroinitializer
  %i.sk = and <2 x i16> %i.sj, <i16 -512, i16 511>
  %i.sl = or disjoint <2 x i16> %i.si, %i.sk      ; 2 uses
  %i.sm = extractelement <2 x i16> %i.sl, i64 0
  store i16 %i.sm, ptr %i.sd, align 8
  %i.sn = extractelement <2 x i16> %i.sl, i64 1
  store i16 %i.sn, ptr %i.pv, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !130
  %i.sq = load ptr, ptr %i.pw, align 8, !tbaa !130
  store ptr %i.sq, ptr %i.so, align 8, !tbaa !130
  store ptr %i.sp, ptr %i.pw, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre = load ptr, ptr %15, align 8, !tbaa !190
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.ca, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #40
  br label %bb.cd

bb.cc:                                            ; preds = %_ZN4Json5ValueaSERKS0_.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.ss = phi ptr [ %.pre, %_ZN4Json5ValueaSERKS0_.exit ], [ %i.re, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit ] ; 2 uses
  %i.st = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.st, %i.pu
  br i1 %exitcond.not, label %._crit_edge, label %bb.by, !llvm.loop !526

bb.cd:                                            ; preds = %bb.cb, %bb.bx
  %.pn.pn = phi { ptr, i32 } [ %i.sr, %bb.cb ], [ %i.rd, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, %bb.cd
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cd ], [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i ], [ %.pn58.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i ], [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %.pn50.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i ], [ %.pn48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i ], [ %.pn46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %i.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ], [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i ]
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
  %i.h = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not91 = icmp eq ptr %i.o, %i.p
  br i1 %.not91, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.sroa.050.095 = phi ptr [ %.sroa.050.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 12 uses
  %.sroa.10.094 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 6 uses
  %.sroa.047.093 = phi ptr [ %i.bf, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ %i.o, %bb.j ] ; 3 uses
  %.sroa.15.092 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 5 uses
  %.not.i = icmp eq ptr %.sroa.10.094, %.sroa.15.092
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.q = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.q, ptr %.sroa.10.094, align 8, !tbaa !192
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %.sroa.10.094 to i64        ; 2 uses
  %i.s = ptrtoint ptr %.sroa.050.095 to i64       ; 4 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
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
  %i.af = add i64 %i.r, -8
  %i.ag = sub i64 %i.af, %i.s                     ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 24
  %i.aj = sub i64 %i.s, %i.ae
  %diff.check = icmp ugt i64 %i.aj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check155 = icmp ult i64 %i.ag, 120
  br i1 %min.iters.check155, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, 4611686018427387888     ; 4 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.050.095, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao ; 4 uses
  %next.gep156 = getelementptr i8, ptr %.sroa.050.095, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.ap = getelementptr i8, ptr %next.gep156, i64 32
  %i.aq = getelementptr i8, ptr %next.gep156, i64 64
  %i.ar = getelementptr i8, ptr %next.gep156, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep156, align 8, !tbaa !192, !alias.scope !539
  %wide.load157 = load <4 x i64>, ptr %i.ap, align 8, !tbaa !192, !alias.scope !539
  %wide.load158 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !192, !alias.scope !539
  %wide.load159 = load <4 x i64>, ptr %i.ar, align 8, !tbaa !192, !alias.scope !539
  %i.as = getelementptr i8, ptr %next.gep, i64 32
  %i.at = getelementptr i8, ptr %next.gep, i64 64
  %i.au = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !538
  store <4 x i64> %wide.load157, ptr %i.as, align 8, !tbaa !192, !alias.scope !538
  store <4 x i64> %wide.load158, ptr %i.at, align 8, !tbaa !192, !alias.scope !538
  store <4 x i64> %wide.load159, ptr %i.au, align 8, !tbaa !192, !alias.scope !538
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !530

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !540

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec160 = and i64 %i.ai, 4611686018427387900  ; 3 uses
  %i.aw = shl i64 %n.vec160, 3                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ab, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.050.095, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index161 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next165, %vec.epilog.vector.body ] ; 2 uses
  %i.az = shl i64 %index161, 3                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.ab, i64 %i.az
  %next.gep163 = getelementptr i8, ptr %.sroa.050.095, i64 %i.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %wide.load164 = load <4 x i64>, ptr %next.gep163, align 8, !tbaa !192, !alias.scope !539
  store <4 x i64> %wide.load164, ptr %next.gep162, align 8, !tbaa !192, !alias.scope !538
  %index.next165 = add nuw i64 %index161, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !531

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n166 = icmp eq i64 %i.ai, %n.vec160
  br i1 %cmp.n166, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.050.095, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !539
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !538
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %.sroa.10.094
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !532

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc19 ], [ %i.ax, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.050.095, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %5 = ptrtoint ptr %.sroa.15.092 to i64
  %6 = sub i64 %5, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.095, i64 noundef %6) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.k
  %.sroa.15.1 = phi ptr [ %i.be, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.15.092, %bb.k ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.10.094, %bb.k ] ; 4 uses
  %.sroa.050.1 = phi ptr [ %i.ab, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.050.095, %bb.k ] ; 24 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 10 uses
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.093) #45 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !533

.loopexit67:                                      ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp68:                             ; preds = %bb.m, %bb.o
  %.sroa.15.090 = phi ptr [ %.sroa.15.092, %bb.m ], [ %.sroa.15.1, %bb.o ]
  %.sroa.050.081 = phi ptr [ %.sroa.050.095, %bb.m ], [ %.sroa.050.1, %bb.o ]
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.not.i.i = icmp eq ptr %.sroa.050.1, %.sroa.10.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bg = ptrtoint ptr %.sroa.10.1 to i64
  %i.bh = ptrtoint ptr %.sroa.050.1 to i64        ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = xor i64 %i.bl, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_T1_(ptr %.sroa.050.1, ptr nonnull %.sroa.10.1, i64 noundef %i.bm, ptr nonnull @_ZN4Json12_GLOBAL__N_110sort_orderERKSt23_Rb_tree_const_iteratorISt4pairIKNS_5Value8CZStringES3_EES9_)
          to label %.noexc20 unwind label %.loopexit.split-lp68

.noexc20:                                         ; preds = %bb.o
  %i.bn = icmp sgt i64 %i.bi, 128
  %scevgep.i = getelementptr i8, ptr %.sroa.050.1, i64 8 ; 2 uses
  br i1 %i.bn, label %.lr.ph.i.i, label %bb.v

.lr.ph.i.i:                                       ; preds = %.noexc20
  %.pre110 = load ptr, ptr %.sroa.050.1, align 8  ; 2 uses
  %i.bo = ptrtoint ptr %.pre110 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bp = phi i64 [ %i.bo, %.lr.ph.i.i ], [ %i.ck, %bb.u ]
  %i.bq = phi ptr [ %.pre110, %.lr.ph.i.i ], [ %i.cl, %bb.u ]
  %.sroa.0.023.i.idx.i = phi i64 [ 8, %.lr.ph.i.i ], [ %.sroa.0.023.i.add.i, %bb.u ] ; 4 uses
  %.pn22.i.i = phi ptr [ %.sroa.050.1, %.lr.ph.i.i ], [ %.sroa.0.023.i.ptr.i, %bb.u ] ; 3 uses
  %.sroa.0.023.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 %.sroa.0.023.i.idx.i ; 4 uses
  %i.br = load ptr, ptr %.sroa.0.023.i.ptr.i, align 8 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !195 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !195
  %i.bw = icmp ult i64 %i.bt, %i.bv
  %i.bx = ptrtoint ptr %i.br to i64               ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.by = icmp samesign ugt i64 %.sroa.0.023.i.idx.i, 8
  br i1 %i.by, label %bb.r, label %bb.s, !prof !196

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.050.1, i64 %.sroa.0.023.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 8
  store i64 %i.bp, ptr %i.bz, align 8, !tbaa !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.s, %bb.r
  store ptr %i.br, ptr %.sroa.050.1, align 8, !tbaa !192
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %.pn22.i.i, align 8       ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !195
  %i.cd = icmp ult i64 %i.bt, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.i
  %.in131 = phi ptr [ %i.cf, %.lr.ph.i.i.i ], [ %i.ca, %bb.t ]
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn22.i.i, %bb.t ] ; 3 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.023.i.ptr.i, %bb.t ]
  %i.ce = ptrtoint ptr %.in131 to i64
  store i64 %i.ce, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !192
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8 ; 2 uses
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i, align 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !195
  %i.ci = icmp ult i64 %i.bt, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, !llvm.loop !534

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.t
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.023.i.ptr.i, %bb.t ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ]
  store i64 %i.bx, ptr %.sroa.04.0.lcssa.i.i.i, align 8, !tbaa !192
  %.pre109 = load ptr, ptr %.sroa.050.1, align 8  ; 2 uses
  %i.cj = ptrtoint ptr %.pre109 to i64
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %i.ck = phi i64 [ %i.cj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i ], [ %i.bx, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i ]
  %i.cl = phi ptr [ %.pre109, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i ], [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i ]
  %.sroa.0.023.i.add.i = add nuw nsw i64 %.sroa.0.023.i.idx.i, 8 ; 2 uses
  %.not.i.i36 = icmp eq i64 %.sroa.0.023.i.add.i, 128
  br i1 %.not.i.i36, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i, label %bb.p, !llvm.loop !535

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i: ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 128 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cm, %.sroa.10.1
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.da, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ %i.cm, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ] ; 6 uses
  %i.cn = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !192 ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !195 ; 2 uses
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i, align 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !195
  %i.cu = icmp ult i64 %i.cq, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %.in132 = phi ptr [ %i.cw, %.lr.ph.i.i14.i ], [ %i.cr, %.lr.ph.i10.i ]
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  %i.cv = ptrtoint ptr %.in132 to i64
  store i64 %i.cv, ptr %.sroa.04.08.i.i16.i, align 8, !tbaa !192
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %.sroa.0.0.i.i17.i, align 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !195
  %i.cz = icmp ult i64 %i.cq, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i, !llvm.loop !534

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ]
  store i64 %i.cn, ptr %.sroa.04.0.lcssa.i.i12.i, align 8, !tbaa !192
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8
  %.not.i13.i = icmp eq ptr %.sroa.0.08.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !536

bb.v:                                             ; preds = %.noexc20
  %.not21.i20.i = icmp eq ptr %.sroa.050.1, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not21.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %bb.v
  %.pre108 = load ptr, ptr %.sroa.050.1, align 8  ; 2 uses
  %i.db = ptrtoint ptr %.pre108 to i64
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.preheader, %bb.ab
  %i.dc = phi i64 [ %i.ee, %bb.ab ], [ %i.db, %.lr.ph.i21.i.preheader ]
  %i.dd = phi ptr [ %i.ef, %bb.ab ], [ %.pre108, %.lr.ph.i21.i.preheader ]
  %.sroa.0.023.i22.i = phi ptr [ %.sroa.0.0.i26.i, %bb.ab ], [ %scevgep.i, %.lr.ph.i21.i.preheader ] ; 7 uses
  %.pn22.i23.i = phi ptr [ %.sroa.0.023.i22.i, %bb.ab ], [ %.sroa.050.1, %.lr.ph.i21.i.preheader ] ; 4 uses
  %i.de = load ptr, ptr %.sroa.0.023.i22.i, align 8 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !195 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !195
  %i.dj = icmp ult i64 %i.dg, %i.di
  %i.dk = ptrtoint ptr %i.de to i64               ; 2 uses
  br i1 %i.dj, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.lr.ph.i21.i
  %i.dl = ptrtoint ptr %.sroa.0.023.i22.i to i64
  %i.dm = sub i64 %i.dl, %i.bh                    ; 3 uses
  %i.dn = ashr exact i64 %i.dm, 3                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 1
  br i1 %i.do, label %bb.x, label %bb.y, !prof !196

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 16
  %i.dq = sub nsw i64 0, %i.dn
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dr, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.050.1, i64 %i.dm, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.y:                                             ; preds = %bb.w
  %i.ds = icmp eq i64 %i.dm, 8
  br i1 %i.ds, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 8
  store i64 %i.dc, ptr %i.dt, align 8, !tbaa !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i: ; preds = %bb.z, %bb.y, %bb.x
  store ptr %i.de, ptr %.sroa.050.1, align 8, !tbaa !192
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i21.i
  %i.du = load ptr, ptr %.pn22.i23.i, align 8     ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !195
  %i.dx = icmp ult i64 %i.dg, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.aa, %.lr.ph.i.i28.i
  %.in = phi ptr [ %i.dz, %.lr.ph.i.i28.i ], [ %i.du, %bb.aa ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn22.i23.i, %bb.aa ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.0.023.i22.i, %bb.aa ]
  %i.dy = ptrtoint ptr %.in to i64
  store i64 %i.dy, ptr %.sroa.04.08.i.i30.i, align 8, !tbaa !192
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.dz = load ptr, ptr %.sroa.0.0.i.i31.i, align 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 72
end_hunk_0
begin_hunk_1_@_ZNK4Json5Value14getMemberNamesB5cxx11Ev:bb.a
  store i64 %i.dk, ptr %.sroa.04.0.lcssa.i.i25.i, align 8, !tbaa !192
  %.pre = load ptr, ptr %.sroa.050.1, align 8     ; 2 uses
  %i.ed = ptrtoint ptr %.pre to i64
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i
  %i.ee = phi i64 [ %i.ed, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i ], [ %i.dk, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i ]
  %i.ef = phi ptr [ %.pre, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i ], [ %i.de, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i ]
  %.sroa.0.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i22.i, i64 8
  %.not.i27.i = icmp eq ptr %.sroa.0.023.i22.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i21.i, !llvm.loop !535

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit: ; preds = %bb.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i, %bb.j, %._crit_edge, %bb.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i
  %.not.i.i144 = phi i1 [ false, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ true, %bb.j ], [ false, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ true, %._crit_edge ], [ false, %bb.v ], [ false, %bb.ab ]
  %.sroa.050.0.lcssa141 = phi ptr [ %.sroa.050.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.050.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.050.1, %._crit_edge ], [ %.sroa.050.1, %bb.v ], [ %.sroa.050.1, %bb.ab ] ; 5 uses
  %.sroa.10.0.lcssa140 = phi ptr [ %.sroa.10.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.10.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.10.1, %._crit_edge ], [ %.sroa.10.1, %bb.v ], [ %.sroa.10.1, %bb.ab ]
  %.sroa.15.0.lcssa137 = phi ptr [ %.sroa.15.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.15.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.15.1, %._crit_edge ], [ %.sroa.15.1, %bb.v ], [ %.sroa.15.1, %bb.ab ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.eg = load ptr, ptr %1, align 8, !tbaa !50
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !129
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ei)
          to label %.preheader unwind label %bb.al

.preheader:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit
  br i1 %.not.i.i144, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.sroa.040.099 = phi ptr [ %.sroa.050.0.lcssa141, %.lr.ph100 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.en = load ptr, ptr %.sroa.040.099, align 8, !tbaa !198 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !200 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.er = load i32, ptr %i.eq, align 8            ; 2 uses
  %i.es = lshr i32 %i.er, 2                       ; 3 uses
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  store ptr %i.ej, ptr %4, align 8, !tbaa !46
  %i.eu = icmp eq ptr %i.ep, null
  %i.ev = icmp ne i32 %i.es, 0
  %or.cond.i = and i1 %i.eu, %i.ev
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.121) #44
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.et, ptr %i.a, align 8, !tbaa !113
  %i.ew = icmp ugt i32 %i.er, 63
  br i1 %i.ew, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ae
  %i.ex = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %.noexc.i
  store ptr %i.ex, ptr %4, align 8, !tbaa !78
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.ey, ptr %i.ej, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %bb.ae
  %i.ez = phi ptr [ %i.ex, %.noexc23 ], [ %i.ej, %bb.ae ] ; 2 uses
  switch i32 %i.es, label %bb.ag [
    i32 1, label %bb.af
    i32 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.fa = load i8, ptr %i.ep, align 1, !tbaa !50
  store i8 %i.fa, ptr %i.ez, align 1, !tbaa !50
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr align 1 %i.ep, i64 %i.et, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  store i64 %i.fb, ptr %i.ek, align 8, !tbaa !49
  %i.fc = load ptr, ptr %4, align 8, !tbaa !78
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb
  store i8 0, ptr %i.fd, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.fe = load ptr, ptr %i.el, align 8, !tbaa !189 ; 6 uses
  %i.ff = load ptr, ptr %i.em, align 8, !tbaa !191
  %.not.i.i24 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i.i24, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 3 uses
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !46
  %i.fh = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ej
  br i1 %i.fi, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fj = load i64, ptr %i.ek, align 8, !tbaa !49 ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fk)
  %i.fl = add nuw nsw i64 %i.fj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fg, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.fl, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !78
  %i.fm = load i64, ptr %i.ej, align 8, !tbaa !50
  store i64 %i.fm, ptr %i.fg, align 8, !tbaa !50
  %.pre111 = load i64, ptr %i.ek, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fn = phi i64 [ %.pre111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fj, %bb.aj ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !49
  store ptr %i.ej, ptr %4, align 8, !tbaa !78
  store i64 0, ptr %i.ek, align 8, !tbaa !49
  %i.fp = load ptr, ptr %i.el, align 8, !tbaa !189
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store ptr %i.fq, ptr %i.el, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.ak:                                            ; preds = %bb.ah
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.am

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ak
  %.pre112 = load ptr, ptr %4, align 8, !tbaa !78 ; 2 uses
  %i.fr = icmp eq ptr %.pre112, %i.ej
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fs = load i64, ptr %i.ej, align 8, !tbaa !50
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %.pre112, i64 noundef %i.ft) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.fu, %.sroa.10.0.lcssa140
  br i1 %.not65, label %._crit_edge101, label %bb.ac, !llvm.loop !537

bb.al:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.ad
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.am:                                            ; preds = %bb.ak
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ej
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.am
  %i.fz = load i64, ptr %i.ej, align 8, !tbaa !50
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.am, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %.pn13 = phi { ptr, i32 } [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fw, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ao

._crit_edge101:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %.preheader
  %.not.i.i.i32 = icmp eq ptr %.sroa.050.0.lcssa141, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %._crit_edge101
  %i.gb = ptrtoint ptr %.sroa.15.0.lcssa137 to i64
  %i.gc = ptrtoint ptr %.sroa.050.0.lcssa141 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa141, i64 noundef %i.gd) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.al
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.fv, %bb.al ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #40
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit67, %.loopexit.split-lp68, %bb.ao
  %.sroa.15.086 = phi ptr [ %.sroa.15.0.lcssa137, %bb.ao ], [ %.sroa.15.092, %.loopexit67 ], [ %.sroa.15.090, %.loopexit.split-lp68 ]
  %.sroa.050.077 = phi ptr [ %.sroa.050.0.lcssa141, %bb.ao ], [ %.sroa.050.095, %.loopexit67 ], [ %.sroa.050.081, %.loopexit.split-lp68 ] ; 3 uses
  %.pn16 = phi { ptr, i32 } [ %.pn13.pn, %bb.ao ], [ %lpad.loopexit69, %.loopexit67 ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp68 ] ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.sroa.050.077, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit34, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = ptrtoint ptr %.sroa.15.086 to i64
  %i.gf = ptrtoint ptr %.sroa.050.077 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.077, i64 noundef %i.gg) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit34

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit: ; preds = %bb.an, %._crit_edge101, %bb.i
  ret void

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit34: ; preds = %bb.aq, %bb.ap, %bb.h
  %.pn16.pn = phi { ptr, i32 } [ %.pn.pn, %bb.h ], [ %.pn16, %bb.ap ], [ %.pn16, %bb.aq ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, ptr noundef %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %_ZN4JsonL5kNullE. = select i1 %.not, ptr @_ZN4JsonL5kNullE, ptr %i.e
  ret ptr %_ZN4JsonL5kNullE.
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i32 @_ZNK4Json5Value4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.e [
    i8 7, label %bb.d
    i8 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !129
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.g) #45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = add i32 %i.j, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129
  %i.o = trunc i64 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ %i.o, %bb.d ], [ %i.k, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !78 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !50
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !191
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #42
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json17CharReaderBuilderixENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.b, ptr noundef %i.e)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json17CharReaderBuilder10strictModeEPNS_5ValueE(ptr nofree noundef nonnull captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Json::Value", align 8       ; 8 uses
  %2 = alloca %"class.Json::Value", align 8       ; 8 uses
  %3 = alloca %"class.Json::Value", align 8       ; 8 uses
  %4 = alloca %"class.Json::Value", align 8       ; 8 uses
  %5 = alloca %"class.Json::Value", align 8       ; 8 uses
  %6 = alloca %"class.Json::Value", align 8       ; 8 uses
  %7 = alloca %"class.Json::Value", align 8       ; 8 uses
  %8 = alloca %"class.Json::Value", align 8       ; 8 uses
  %9 = alloca %"class.Json::Value", align 8       ; 9 uses
  %10 = alloca %"class.Json::Value", align 8      ; 9 uses
  %11 = alloca %"class.Json::Value", align 8      ; 9 uses
  %12 = alloca %"class.Json::Value", align 8      ; 9 uses
  %13 = alloca %"class.Json::Value", align 8      ; 9 uses
  %14 = alloca %"class.Json::Value", align 8      ; 9 uses
  %15 = alloca %"class.Json::Value", align 8      ; 9 uses
  %16 = alloca %"class.Json::Value", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 5, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i8 0, ptr %9, align 8, !tbaa !50
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.31, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 13))
          to label %_ZN4Json5ValueixEPKc.exit unwind label %bb.j ; 4 uses

_ZN4Json5ValueixEPKc.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %9)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZN4Json5ValueixEPKc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8              ; 2 uses
  %i.h = and i16 %i.e, -512
  %i.i = and i16 %i.g, -512
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !50
  %i.j = load i64, ptr %8, align 8, !tbaa !50
  store i64 %i.j, ptr %i.c, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %8, align 8, !tbaa !50
  %i.k = and i16 %i.g, 511
  %i.l = or disjoint i16 %i.k, %i.h
  store i16 %i.l, ptr %i.d, align 8
  %i.m = and i16 %i.e, 511
  %i.n = or disjoint i16 %i.i, %i.m
end_hunk_1
