Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Server12AsyncRunStepEfb:_ZNO11FrameMarker7startedEv.exit
  store ptr %i.akc, ptr %30, align 8, !tbaa !518
  store i64 1, ptr %i.akd, align 8, !tbaa !519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ake, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.akf, align 8, !tbaa !489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akg, i8 0, i64 16, i1 false)
  %i.alh = load i32, ptr %i.aky, align 8, !tbaa !424
  switch i32 %i.alh, label %._crit_edge.i.i634 [
    i32 0, label %._crit_edge.i.i592
    i32 2, label %._crit_edge.i.i592
    i32 1, label %._crit_edge.i.i602
    i32 3, label %.noexc.i613
    i32 4, label %._crit_edge.i.i624
  ]

bb.ic:                                            ; preds = %_ZN6Server11EnvAutoLockC2EPS_.exit583
  %i.ali = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.id:                                            ; preds = %bb.hx
  %i.alj = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.ie:                                            ; preds = %.noexc754, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749, %.noexc752, %bb.ke, %bb.kc, %_ZTW13verbosestream.exit685, %bb.ka, %_ZN11StreamProxylsIRmEERS_OT_.exit, %bb.jx, %bb.jw, %.noexc671, %_ZTW13verbosestream.exit, %bb.ki, %bb.kg
  %i.alk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

._crit_edge.i.i592:                               ; preds = %_ZNSt5queueIP12MapEditEventSt5dequeIS1_SaIS1_EEE3popEv.exit, %_ZNSt5queueIP12MapEditEventSt5dequeIS1_SaIS1_EEE3popEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  store ptr %i.ako, ptr %31, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ako, ptr noundef nonnull align 1 dereferenceable(12) @.str.93, i64 12, i1 false)
  store i64 12, ptr %i.akp, align 8, !tbaa !146
  store i8 0, ptr %i.akv, align 4, !tbaa !120
  invoke void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %28, ptr noundef nonnull align 8 dereferenceable(32) %31, float noundef 1.000000e+00)
          to label %bb.if unwind label %bb.ig

bb.if:                                            ; preds = %._crit_edge.i.i592
  %i.all = load ptr, ptr %31, align 8, !tbaa !140 ; 2 uses
  %i.alm = icmp eq ptr %i.all, %i.ako
  br i1 %i.alm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596: ; preds = %bb.if
  %i.aln = load i64, ptr %i.ako, align 8, !tbaa !120
  %i.alo = add i64 %i.aln, 1
  call void @_ZdlPvm(ptr noundef %i.all, i64 noundef %i.alo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598: ; preds = %bb.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  %.sroa.029.0.copyload = load i48, ptr %i.alp, align 4, !tbaa !491
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aky, i64 12
  %.sroa.028.0.copyload = load i32, ptr %i.alq, align 4
  %i.alr = load i32, ptr %i.aky, align 8, !tbaa !424
  %i.als = icmp eq i32 %i.alr, 0
  invoke void @_ZN6Server11sendAddNodeEN4core8vector3dIsEE7MapNodePSt13unordered_setItSt4hashItESt8equal_toItESaItEEfb(ptr noundef nonnull align 8 dereferenceable(1880) %0, i48 %.sroa.029.0.copyload, i32 %.sroa.028.0.copyload, ptr noundef nonnull %30, float noundef %i.akn, i1 noundef zeroext %i.als)
          to label %_ZN8MapBlock13raiseModifiedEjj.exit unwind label %bb.ih

bb.ig:                                            ; preds = %._crit_edge.i.i592
  %i.alt = landingpad { ptr, i32 }
          cleanup
  %i.alu = load ptr, ptr %31, align 8, !tbaa !140 ; 2 uses
  %i.alv = icmp eq ptr %i.alu, %i.ako
  br i1 %i.alv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599: ; preds = %bb.ig
  %i.alw = load i64, ptr %i.ako, align 8, !tbaa !120
  %i.alx = add i64 %i.alw, 1
  call void @_ZdlPvm(ptr noundef %i.alu, i64 noundef %i.alx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %.body667

bb.ih:                                            ; preds = %.noexc644, %_ZTW13warningstream.exit642, %bb.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %.body667

._crit_edge.i.i602:                               ; preds = %_ZNSt5queueIP12MapEditEventSt5dequeIS1_SaIS1_EEE3popEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #34
  store ptr %i.akl, ptr %32, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.akl, ptr noundef nonnull align 1 dereferenceable(15) @.str.94, i64 15, i1 false)
  store i64 15, ptr %i.akm, align 8, !tbaa !146
  store i8 0, ptr %i.aku, align 1, !tbaa !120
  invoke void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %28, ptr noundef nonnull align 8 dereferenceable(32) %32, float noundef 1.000000e+00)
          to label %bb.ii unwind label %bb.ij

bb.ii:                                            ; preds = %._crit_edge.i.i602
  %i.alz = load ptr, ptr %32, align 8, !tbaa !140 ; 2 uses
  %i.ama = icmp eq ptr %i.alz, %i.akl
  br i1 %i.ama, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606: ; preds = %bb.ii
  %i.amb = load i64, ptr %i.akl, align 8, !tbaa !120
  %i.amc = add i64 %i.amb, 1
  call void @_ZdlPvm(ptr noundef %i.alz, i64 noundef %i.amc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608: ; preds = %bb.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #34
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  %.sroa.026.0.copyload = load i48, ptr %i.amd, align 4, !tbaa !491
  invoke void @_ZN6Server14sendRemoveNodeEN4core8vector3dIsEEPSt13unordered_setItSt4hashItESt8equal_toItESaItEEf(ptr noundef nonnull align 8 dereferenceable(1880) %0, i48 %.sroa.026.0.copyload, ptr noundef nonnull %30, float noundef %i.akn)
          to label %_ZN8MapBlock13raiseModifiedEjj.exit unwind label %bb.ih

bb.ij:                                            ; preds = %._crit_edge.i.i602
  %i.ame = landingpad { ptr, i32 }
          cleanup
  %i.amf = load ptr, ptr %32, align 8, !tbaa !140 ; 2 uses
  %i.amg = icmp eq ptr %i.amf, %i.akl
  br i1 %i.amg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609: ; preds = %bb.ij
  %i.amh = load i64, ptr %i.akl, align 8, !tbaa !120
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.amf, i64 noundef %i.ami) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611: ; preds = %bb.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #34
  br label %.body667

.noexc.i613:                                      ; preds = %_ZNSt5queueIP12MapEditEventSt5dequeIS1_SaIS1_EEE3popEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #34
  store ptr %i.akj, ptr %33, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 32, ptr %i.e, align 8, !tbaa !145
  %i.amj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc614 unwind label %bb.im ; 2 uses

.noexc614:                                        ; preds = %.noexc.i613
  store ptr %i.amj, ptr %33, align 8, !tbaa !140
  %i.amk = load i64, ptr %i.e, align 8, !tbaa !145 ; 3 uses
  store i64 %i.amk, ptr %i.akj, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.amj, ptr noundef nonnull align 1 dereferenceable(32) @.str.95, i64 32, i1 false)
  store i64 %i.amk, ptr %i.akk, align 8, !tbaa !146
  %i.aml = load ptr, ptr %33, align 8, !tbaa !140
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.amk
  store i8 0, ptr %i.amm, align 1, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  invoke void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %28, ptr noundef nonnull align 8 dereferenceable(32) %33, float noundef 1.000000e+00)
          to label %bb.ik unwind label %bb.in

bb.ik:                                            ; preds = %.noexc614
  %i.amn = load ptr, ptr %33, align 8, !tbaa !140 ; 2 uses
  %i.amo = icmp eq ptr %i.amn, %i.akj
  br i1 %i.amo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616: ; preds = %bb.ik
  %i.amp = load i64, ptr %i.akj, align 8, !tbaa !120
  %i.amq = add i64 %i.amp, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618: ; preds = %bb.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #34
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aky, i64 40
  %i.ams = load i8, ptr %i.amr, align 8, !tbaa !971, !range !141, !noundef !93
  %i.amt = trunc nuw i8 %i.ams to i1
  br i1 %i.amt, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit, label %bb.il

bb.il:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
  %i.amu = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  %i.amv = invoke { ptr, i8 } @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS2_EEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 2 dereferenceable(6) %i.amu)
          to label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit unwind label %bb.ih ; 0 uses

bb.im:                                            ; preds = %.noexc.i613
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622

bb.in:                                            ; preds = %.noexc614
  %i.amx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amy = load ptr, ptr %33, align 8, !tbaa !140 ; 2 uses
  %i.amz = icmp eq ptr %i.amy, %i.akj
  br i1 %i.amz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i620

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i620: ; preds = %bb.in
  %i.ana = load i64, ptr %i.akj, align 8, !tbaa !120
  %i.anb = add i64 %i.ana, 1
  call void @_ZdlPvm(ptr noundef %i.amy, i64 noundef %i.anb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622: ; preds = %bb.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i620, %bb.im
  %.pn279 = phi { ptr, i32 } [ %i.amw, %bb.im ], [ %i.amx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i620 ], [ %i.amx, %bb.in ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #34
  br label %.body667

_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit: ; preds = %bb.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
  %i.anc = load ptr, ptr %i.bz, align 8, !tbaa !297
  %i.and = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.anc)
          to label %bb.io unwind label %bb.iv

bb.io:                                            ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit
  %i.ane = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  %.sroa.0.0.copyload = load i48, ptr %i.ane, align 4, !tbaa !491 ; 5 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.0.0.copyload, 16
  %40 = trunc i48 %.sroa.0.0.copyload to i16
  %41 = insertelement <2 x i16> poison, i16 %40, i64 0
  %42 = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %43 = insertelement <2 x i16> %41, i16 %42, i64 1
  %i.anf = bitcast i48 %.sroa.0.0.copyload to <3 x i16>
  %i.ang = shufflevector <3 x i16> %i.anf, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.anh = sext <2 x i16> %i.ang to <2 x i32>     ; 2 uses
  %i.ani = add nsw <2 x i32> %i.anh, splat (i32 -15)
  %i.anj = icmp slt <2 x i16> %43, zeroinitializer
  %i.ank = select <2 x i1> %i.anj, <2 x i32> %i.ani, <2 x i32> %i.anh
  %i.anl = sdiv <2 x i32> %i.ank, splat (i32 16)  ; 2 uses
  %i.anm = ashr i48 %.sroa.0.0.copyload, 32
  %i.ann = trunc nsw i48 %i.anm to i32            ; 2 uses
  %i.ano = add nsw i32 %i.ann, -15
  %i.anp = icmp slt i48 %.sroa.0.0.copyload, 0
  %i.anq = select i1 %i.anp, i32 %i.ano, i32 %i.ann
  %i.anr = sdiv i32 %i.anq, 16
  %.mask.i.i = and i32 %i.anr, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.ans = extractelement <2 x i32> %i.anl, i64 1
  %i.ant = shl nsw i32 %i.ans, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.ant to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.anu = extractelement <2 x i32> %i.anl, i64 0
  %.mask5.i.i = and i32 %i.anu, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.anv = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.and, i48 %.sroa.0.0.insert.insert.i.i)
          to label %bb.ip unwind label %bb.iv     ; 8 uses

bb.ip:                                            ; preds = %bb.io
  %.not281 = icmp eq ptr %i.anv, null
  br i1 %.not281, label %_ZN8MapBlock13raiseModifiedEjj.exit, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 66 ; 2 uses
  %i.anx = load i16, ptr %i.anw, align 2, !tbaa !993 ; 2 uses
  %i.any = icmp ult i16 %i.anx, 4
  br i1 %i.any, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  store i16 4, ptr %i.anw, align 2, !tbaa !993
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anv, i64 68
  store i32 64, ptr %i.anz, align 4, !tbaa !994
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anv, i64 72
  %i.aob = load i32, ptr %i.aoa, align 8, !tbaa !995
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anv, i64 76
  store i32 %i.aob, ptr %i.aoc, align 4, !tbaa !996
  br label %bb.iu

bb.is:                                            ; preds = %bb.iq
  %i.aod = icmp eq i16 %i.anx, 4
  br i1 %i.aod, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anv, i64 68 ; 2 uses
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !994
  %i.aog = or i32 %i.aof, 64
  store i32 %i.aog, ptr %i.aoe, align 4, !tbaa !994
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is, %bb.ir
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anv, i64 40
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !528 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anv, i64 48 ; 2 uses
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !529
  %.not.i.i.i623 = icmp eq ptr %i.aok, %i.aoi
  br i1 %.not.i.i.i623, label %_ZN8MapBlock13raiseModifiedEjj.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.iu
  store ptr %i.aoi, ptr %i.aoj, align 8, !tbaa !529
  br label %_ZN8MapBlock13raiseModifiedEjj.exit

bb.iv:                                            ; preds = %bb.io, %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE7emplaceIJRS2_EEESt4pairINSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEbEDpOT_.exit
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %.body667

._crit_edge.i.i624:                               ; preds = %_ZNSt5queueIP12MapEditEventSt5dequeIS1_SaIS1_EEE3popEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #34
  store ptr %i.akh, ptr %34, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.akh, ptr noundef nonnull align 1 dereferenceable(10) @.str.96, i64 10, i1 false)
  store i64 10, ptr %i.aki, align 8, !tbaa !146
  store i8 0, ptr %i.akt, align 2, !tbaa !120
  invoke void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %28, ptr noundef nonnull align 8 dereferenceable(32) %34, float noundef 1.000000e+00)
          to label %bb.iw unwind label %bb.ix

bb.iw:                                            ; preds = %._crit_edge.i.i624
  %i.aom = load ptr, ptr %34, align 8, !tbaa !140 ; 2 uses
  %i.aon = icmp eq ptr %i.aom, %i.akh
  br i1 %i.aon, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628: ; preds = %bb.iw
  %i.aoo = load i64, ptr %i.akh, align 8, !tbaa !120
  %i.aop = add i64 %i.aoo, 1
  call void @_ZdlPvm(ptr noundef %i.aom, i64 noundef %i.aop) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630: ; preds = %bb.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #34
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aky, i64 16
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aky, i64 41
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !929, !range !141, !noundef !93
  %i.aot = trunc nuw i8 %i.aos to i1
  invoke void @_ZN15ClientInterface17markBlocksNotSentERKSt6vectorIN4core8vector3dIsEESaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(152) %i.pq, ptr noundef nonnull align 8 dereferenceable(24) %i.aoq, i1 noundef zeroext %i.aot)
          to label %_ZN8MapBlock13raiseModifiedEjj.exit unwind label %bb.ih

bb.ix:                                            ; preds = %._crit_edge.i.i624
  %i.aou = landingpad { ptr, i32 }
          cleanup
  %i.aov = load ptr, ptr %34, align 8, !tbaa !140 ; 2 uses
  %i.aow = icmp eq ptr %i.aov, %i.akh
  br i1 %i.aow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631: ; preds = %bb.ix
  %i.aox = load i64, ptr %i.akh, align 8, !tbaa !120
  %i.aoy = add i64 %i.aox, 1
  call void @_ZdlPvm(ptr noundef %i.aov, i64 noundef %i.aoy) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633: ; preds = %bb.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #34
  br label %.body667

._crit_edge.i.i634:                               ; preds = %_ZNSt5queueIP12MapEditEventSt5dequeIS1_SaIS1_EEE3popEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #34
  store ptr %i.akq, ptr %35, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.akq, ptr noundef nonnull align 1 dereferenceable(7) @.str.97, i64 7, i1 false)
  store i64 7, ptr %i.akr, align 8, !tbaa !146
  store i8 0, ptr %i.akw, align 1, !tbaa !120
  invoke void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %28, ptr noundef nonnull align 8 dereferenceable(32) %35, float noundef 1.000000e+00)
          to label %bb.iy unwind label %bb.jk

bb.iy:                                            ; preds = %._crit_edge.i.i634
  %i.aoz = load ptr, ptr %35, align 8, !tbaa !140 ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, %i.akq
  br i1 %i.apa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638: ; preds = %bb.iy
  %i.apb = load i64, ptr %i.akq, align 8, !tbaa !120
  %i.apc = add i64 %i.apb, 1
  call void @_ZdlPvm(ptr noundef %i.aoz, i64 noundef %i.apc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640: ; preds = %bb.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #34
  br i1 %.not.i641, label %_ZTW13warningstream.exit642, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit642

_ZTW13warningstream.exit642:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640, %bb.iz
  %i.apd = load ptr, ptr %i.aks, align 8, !tbaa !92, !nonnull !93, !align !94 ; 2 uses
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !96
  %i.apf = load ptr, ptr %i.ape, align 8
  %i.apg = invoke noundef zeroext i1 %i.apf(ptr noundef nonnull align 8 dereferenceable(8) %i.apd)
          to label %.noexc644 unwind label %bb.ih, !inline_history !2

.noexc644:                                        ; preds = %_ZTW13warningstream.exit642
  %.v.i643 = select i1 %i.apg, i64 976, i64 984
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aks, i64 %.v.i643 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.98, ptr %i.d, align 8, !tbaa !97
  %i.api = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aph, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ja unwind label %bb.ih     ; 0 uses

bb.ja:                                            ; preds = %.noexc644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.apj = load i32, ptr %i.aky, align 8, !tbaa !424
  %i.apk = load ptr, ptr %i.aph, align 8, !tbaa !98 ; 5 uses
  %.not.i646 = icmp eq ptr %i.apk, null
  br i1 %.not.i646, label %_ZN8MapBlock13raiseModifiedEjj.exit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !96
  %i.apm = getelementptr i8, ptr %i.apl, i64 -24
  %i.apn = load i64, ptr %i.apm, align 8
  %i.apo = getelementptr inbounds i8, ptr %i.apk, i64 %i.apn
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 32
  %i.apq = load i32, ptr %i.app, align 8, !tbaa !106
  %i.apr = icmp eq i32 %i.apq, 0
  br i1 %i.apr, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.apk)
          to label %.noexc648 unwind label %.loopexit883

.noexc648:                                        ; preds = %bb.jc
  %.pre.i647 = load ptr, ptr %i.aph, align 8, !tbaa !98
  br label %bb.jd

bb.jd:                                            ; preds = %.noexc648, %bb.jb
  %i.aps = phi ptr [ %.pre.i647, %.noexc648 ], [ %i.apk, %bb.jb ]
  %i.apt = zext i32 %i.apj to i64
  %i.apu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aps, i64 noundef %i.apt)
          to label %_ZN11StreamProxylsIjEERS_OT_.exit unwind label %.loopexit883 ; 0 uses

_ZN11StreamProxylsIjEERS_OT_.exit:                ; preds = %bb.jd
  %.pr = load ptr, ptr %i.aph, align 8, !tbaa !98 ; 5 uses
  %.not.i650 = icmp eq ptr %.pr, null
  br i1 %.not.i650, label %_ZN8MapBlock13raiseModifiedEjj.exit, label %bb.je

bb.je:                                            ; preds = %_ZN11StreamProxylsIjEERS_OT_.exit
  %i.apv = load ptr, ptr %.pr, align 8, !tbaa !96
  %i.apw = getelementptr i8, ptr %i.apv, i64 -24
  %i.apx = load i64, ptr %i.apw, align 8          ; 2 uses
  %i.apy = getelementptr inbounds i8, ptr %.pr, i64 %i.apx
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EEaSERKSB_:bb.a

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !867, !nonnull !93, !align !94
  %i.c = load ptr, ptr %0, align 8, !tbaa !864
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 8 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !1826
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1826
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !866
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !857  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !857
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !858 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.l = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.f unwind label %bb.i       ; 7 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.03039, align 8, !tbaa !1826
  store i32 %i.m, ptr %i.l, align 8, !tbaa !1826
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !858
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.p, align 8, !tbaa !866
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !857  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !857
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #34 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #35
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !858 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !1825

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #36
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !865  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !866  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !865
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !857
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !857
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !858  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !857  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !1827

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !858  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !858
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !864
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !120
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #37
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !867, !nonnull !93, !align !94
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !867, !nonnull !93, !align !94
  %i.y = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %i.y, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !144
  %i.d = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !146  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.f, ptr %i.a, align 8, !tbaa !145
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !140
  %i.i = load i64, ptr %i.a, align 8, !tbaa !145
  store i64 %i.i, ptr %i.c, align 8, !tbaa !120
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !120
  store i8 %i.k, ptr %i.j, align 1, !tbaa !120
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #34 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #37
  invoke void @__cxa_rethrow() #35
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !146
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !656  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !655    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !657
  %i.j = load ptr, ptr %0, align 8, !tbaa !655    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !655    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !656  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !140 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !120
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !655
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !657
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !655
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !657
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !656 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
end_hunk_1
