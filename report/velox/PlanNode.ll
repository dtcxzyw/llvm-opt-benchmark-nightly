Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PlanNode?download=true
inline.NumInlined: 17231
inline.NumDeleted: 5947
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNK8facebook5velox4core15AggregationNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
          to label %._ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit_crit_edge unwind label %bb.u

._ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit_crit_edge: ; preds = %bb.t
  %.pre54 = load ptr, ptr %3, align 8, !tbaa !119
  %.pre55 = load i64, ptr %i.ef, align 8, !tbaa !121
  br label %_ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit

bb.u:                                             ; preds = %bb.t
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !119, !alias.scope !902 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ee
  br i1 %i.el, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.em = load i64, ptr %i.ee, align 8, !tbaa !120, !alias.scope !902
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #43
  br label %common.resume

common.resume:                                    ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ej, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %._ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit_crit_edge, %bb.s
  %i.eo = phi i64 [ %.pre55, %._ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit_crit_edge ], [ 0, %bb.s ]
  %i.ep = phi ptr [ %.pre54, %._ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit_crit_edge ], [ %i.ee, %bb.s ]
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ep, i64 noundef %i.eo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit35 unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit35: ; preds = %_ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit35
  %i.es = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ee
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.eu = load i64, ptr %i.ee, align 8, !tbaa !120
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit35, %_ZN5folly4joinIA3_cSt6vectorIiSaIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ee
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.v
  %i.ez = load i64, ptr %i.ee, align 8, !tbaa !120
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %common.resume

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %._crit_edge
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !193, !range !131, !noundef !132
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.30, i64 noundef 15) ; 0 uses
  %i.fg = load i8, ptr %i.fc, align 8, !tbaa !193, !range !131, !noundef !132
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %_ZNKRSt8optionalISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE5valueEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZSt27__throw_bad_optional_accessv() #42
  unreachable

_ZNKRSt8optionalISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE5valueEv.exit: ; preds = %bb.x
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !210 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !119
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !121
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.fk, i64 noundef %i.fm) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE5valueEv.exit, %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !199, !range !131, !noundef !132
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.31, i64 noundef 20) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox4core15AggregationNode6toNameENS2_4StepE(i32 noundef %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1287", align 16 ; 4 uses
  %2 = alloca [4 x %"struct.std::pair.77"], align 8 ; 5 uses
  %3 = alloca %"struct.folly::HeterogeneousAccessHash", align 1 ; 4 uses
  %4 = alloca %"struct.folly::HeterogeneousAccessEqualTo", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.74", align 1 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv.exit, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) @constinit, i64 96, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames, ptr nonnull %2, i64 4, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i unwind label %bb.d

_ZN5folly10F14FastMapIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames) #40
  br label %_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames) #40
  br label %common.resume

_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv.exit: ; preds = %bb.a, %bb.b, %_ZN5folly10F14FastMapIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames, i64 16), align 8, !tbaa !268 ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv.exit
  %i.h = sext i32 %0 to i64                       ; 2 uses
  %i.i = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.h) ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = or i64 %i.j, 128                         ; 2 uses
  %i.l = add nsw i64 %i.i, %i.h
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = trunc nuw i64 %i.k to i8
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = and i64 %i.f, 255                        ; 2 uses
  %i.s = shl nuw i64 1, %i.r
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames, i64 8), align 8, !tbaa !274
  %i.u = load ptr, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.022.i.i52 = phi i64 [ %i.s, %bb.e ], [ %i.aq, %bb.i ]
  %.024.i.i51 = phi i64 [ %i.l, %bb.e ], [ %i.ar, %bb.i ] ; 2 uses
  %i.v = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i51, i64 range(i64 0, 256) %i.r)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.q
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 4095
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = extractelement <16 x i8> %i.x, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %bb.f
  %.sroa.015.0 = phi i32 [ %i.ab, %bb.f ], [ %i.ah, %bb.g ] ; 4 uses
  %.not = icmp eq i32 %.sroa.015.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %i.af = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.0, i1 true)
  %i.ag = add nuw nsw i32 %.sroa.015.0, 4095
  %i.ah = and i32 %i.ag, %.sroa.015.0
  %i.ai = zext nneg i32 %i.af to i64
  call void @llvm.assume(i1 %i.ac)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.al ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !275
  %i.ao = icmp eq i32 %0, %i.an
  br i1 %i.ao, label %bb.l, label %.critedge.i.i, !prof !198, !llvm.loop !10

bb.h:                                             ; preds = %.critedge.i.i
  %i.ap = icmp eq i8 %i.ae, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %.022.i.i52, -1                 ; 2 uses
  %i.ar = add i64 %i.n, %.024.i.i51
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.f, !llvm.loop !11

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40, !noalias !905
  %.sroa.03.0.insert.ext.i = zext i32 %0 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !905
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40, !noalias !905
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core15AggregationNode6toNameENS2_4StepEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.34) #42
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  unreachable

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !120
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !135
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !276
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_114addSortingKeysERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaIS7_EERKS3_INS1_9SortOrderESaISC_EERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.c = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  %.not16 = icmp eq ptr %i.b, %i.c
  br i1 %.not16, label %._crit_edge, label %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel

_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre21 = load i64, ptr %.phi.trans.insert20, align 8, !tbaa !121
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre19 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !119
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %.pre19, i64 noundef %.pre21) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.j = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !130, !range !131, !noalias !911, !noundef !132
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, ptr @.str.388, ptr @.str.389
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !134, !range !131, !noalias !911, !noundef !132
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.p, ptr @.str.390, ptr @.str.391
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !912
  store ptr %i.m, ptr %3, align 16, !tbaa !120, !noalias !912
  store ptr %i.q, ptr %i.e, align 16, !tbaa !120, !noalias !912
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.387, i64 11, i64 204, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !912
  %i.r = load ptr, ptr %4, align 8, !tbaa !119
  %i.s = load i64, ptr %i.f, align 8, !tbaa !121
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel
  %i.u = load ptr, ptr %4, align 8, !tbaa !119    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.w = load i64, ptr %i.g, align 8, !tbaa !120
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.z = load ptr, ptr %0, align 8, !tbaa !181
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.ac, 16
  br i1 %i.ad, label %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  ret void

_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 3 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %.pre22 = load ptr, ptr %0, align 8, !tbaa !181
  %.phi.trans.insert23 = getelementptr inbounds nuw [16 x i8], ptr %.pre22, i64 %indvars.iv
  %.pre24 = load ptr, ptr %.phi.trans.insert23, align 8, !tbaa !210 ; 2 uses
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %.pre24, i64 64
  %.pre28 = load i64, ptr %.phi.trans.insert27, align 8, !tbaa !121
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %.pre24, i64 56
  %.pre26 = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !119
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %.pre26, i64 noundef %.pre28) ; 2 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.ah = load ptr, ptr %1, align 8, !tbaa !277
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !130, !range !131, !noalias !911, !noundef !132
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %i.ak, ptr @.str.388, ptr @.str.389
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !134, !range !131, !noalias !911, !noundef !132
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = select i1 %i.ao, ptr @.str.390, ptr @.str.391
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !912
  store ptr %i.al, ptr %3, align 16, !tbaa !120, !noalias !912
  store ptr %i.ap, ptr %i.e, align 16, !tbaa !120, !noalias !912
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.387, i64 11, i64 204, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !912
  %i.aq = load ptr, ptr %4, align 8, !tbaa !119
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !121
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit
  %i.at = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.g
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.av = load i64, ptr %i.g, align 8, !tbaa !120
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.ay = load ptr, ptr %0, align 8, !tbaa !181
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4
  %i.bd = icmp ugt i64 %i.bc, %indvars.iv.next
  br i1 %i.bd, label %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit, label %._crit_edge, !llvm.loop !910

.loopexit:                                        ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.be = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.g
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.b
  %i.bg = load i64, ptr %i.g, align 8, !tbaa !120
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv() unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [4 x %"struct.std::pair.77"], align 8 ; 5 uses
  %1 = alloca %"struct.folly::HeterogeneousAccessHash", align 1 ; 4 uses
  %2 = alloca %"struct.folly::HeterogeneousAccessEqualTo", align 1 ; 4 uses
  %3 = alloca %"class.std::allocator.74", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) @constinit, i64 96, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames, ptr nonnull %0, i64 4, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit unwind label %bb.e

_ZN5folly10F14FastMapIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly10F14FastMapIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames) #40
  resume { ptr, i32 } %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_19stepNamesEv()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox5Enums9invertMapINS0_4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap.87") align 8 @_ZZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_19stepNamesEvE6kNames)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.i = lshr i64 %i.h, 56
  %i.j = or i64 %i.i, 128                         ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.m = trunc nuw i64 %i.j to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.q = and i64 %i.p, 255                        ; 3 uses
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 8), align 8, !tbaa !281 ; 2 uses
  %i.t = load ptr, ptr @_ZZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %2, align 8
  %.fr63 = freeze i64 %i.v                        ; 3 uses
  %i.w = icmp eq i64 %.fr63, 0
  br i1 %i.w, label %.split58.us, label %.split58, !llvm.loop !12

.split58.us:                                      ; preds = %bb.g, %bb.i
  %.022.i.i57.us = phi i64 [ %i.ar, %bb.i ], [ %i.r, %bb.g ]
  %.024.i.i56.us = phi i64 [ %i.as, %bb.i ], [ %i.h, %bb.g ] ; 2 uses
  %i.x = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56.us, i64 range(i64 0, 256) %i.q)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.x ; 3 uses
  %i.z = load <16 x i8>, ptr %i.y, align 16       ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.z, %i.o
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = and i16 %i.ab, 4095                     ; 2 uses
  %.not4750.us = icmp eq i16 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.z, i64 15
  br i1 %.not4750.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split58.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.backedge.us.us, %.lr.ph.us
  %.sroa.011.051.us.us = phi i32 [ %i.ae, %.lr.ph.us ], [ %i.ap, %.critedge.i.i.backedge.us.us ] ; 3 uses
  %i.ah = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge.us.us, !prof !284

.critedge.i.i.backedge.us.us:                     ; preds = %bb.h
  %i.ao = add nuw nsw i32 %.sroa.011.051.us.us, 4095
  %i.ap = and i32 %i.ao, %.sroa.011.051.us.us     ; 2 uses
  %.not47.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not47.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %bb.h, !llvm.loop !12

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us, %.split58.us
  %i.aq = icmp eq i8 %i.ad, 0
  br i1 %i.aq, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.ar = add i64 %.022.i.i57.us, -1              ; 2 uses
  %i.as = add i64 %i.l, %.024.i.i56.us
  %.not.i.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58.us, !llvm.loop !13

.split58:                                         ; preds = %bb.g, %bb.k
  %.022.i.i57 = phi i64 [ %i.bq, %bb.k ], [ %i.r, %bb.g ]
  %.024.i.i56 = phi i64 [ %i.br, %bb.k ], [ %i.h, %bb.g ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56, i64 range(i64 0, 256) %i.q)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.at ; 3 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.o
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 4095                     ; 2 uses
  %.not4750 = icmp eq i16 %i.ay, 0
  %i.az = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not4750, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split58
  %i.ba = zext nneg i16 %i.ay to i32
  %i.bb = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.011.051 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bf, %.critedge.i.i.backedge ] ; 3 uses
  %i.bd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051, i1 true)
  %i.be = add nuw nsw i32 %.sroa.011.051, 4095
  %i.bf = and i32 %i.be, %.sroa.011.051           ; 2 uses
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr63, %i.bl
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !285
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.u, ptr %i.bn, i64 %.fr63)
  %i.bo = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %bb.j
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %.critedge.i.i._crit_edge.split, label %bb.j, !llvm.loop !12

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split58
  %i.bp = icmp eq i8 %i.az, 0
  br i1 %i.bp, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.k, !prof !198

bb.k:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.bq = add i64 %.022.i.i57, -1                 ; 2 uses
  %i.br = add i64 %i.l, %.024.i.i56
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58, !llvm.loop !13

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core15AggregationNode9tryToStepESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  resume { ptr, i32 } %i.bs

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.h
  %.pre-phi = phi i64 [ %i.al, %bb.h ], [ %i.bj, %.split ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !275
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.bw, 4294967296
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.critedge.i.i._crit_edge.split, %bb.k, %bb.i, %.critedge.i.i._crit_edge.split.us.us, %bb.f, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread
  %.sroa.2.0 = phi i64 [ %i.bx, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %.critedge.i.i._crit_edge.split.us.us ], [ 0, %bb.k ], [ 0, %.critedge.i.i._crit_edge.split ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox5Enums9invertMapINS0_4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastMap.87") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"struct.std::pair.863", align 8    ; 4 uses
  %4 = alloca %"class.folly::F14FastMap.87", align 16 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr null, ptr %4, align 16, !tbaa !287
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !281
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 16, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = lshr i64 %i.d, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.e, 0
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %.not.i.i.i.not, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.backedge

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit: ; preds = %bb.h
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !185
  %.pre36 = load i64, ptr %i.b, align 16, !tbaa !135
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre36, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ 0, %bb.a ]
  %i.k = phi <2 x ptr> [ %i.i, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !185
  store i64 %i.j, ptr %i.l, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

.backedge:                                        ; preds = %bb.h, %.lr.ph
  %.pn45 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.024.030, %bb.h ] ; 3 uses
  %.sroa.024.030 = getelementptr inbounds i8, ptr %.pn45, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.pn45, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !919
  %i.n = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.backedge
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %i.n, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.024.030)
          to label %.noexc18 unwind label %bb.e

.noexc18:                                         ; preds = %.noexc
  %i.q = load i8, ptr %i.h, align 8, !tbaa !133, !range !131, !noalias !920, !noundef !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !919
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.b, !prof !198

bb.b:                                             ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !921
  %i.s = getelementptr inbounds i8, ptr %.pn45, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !285, !noalias !921
  %i.u = load i64, ptr %i.m, align 8, !tbaa !283, !noalias !921
  %i.v = ptrtoint ptr %i.t to i64
  store i64 %i.v, ptr %2, align 16, !noalias !921
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa_idx3.i, align 8, !noalias !921
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.405, i64 45, i64 13, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !921
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5Enums9invertMapINS0_4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.405) #42
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.noexc, %.backedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !119    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !120
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.i

bb.h:                                             ; preds = %.noexc18
  %i.ae = icmp eq ptr %i.f, %.sroa.024.030
  br i1 %i.ae, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, label %.backedge, !prof !122

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !290
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !268  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !268
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4core16AbstractJoinNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !119
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %.pre20, i64 noundef %.pre22) ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.130, i64 noundef 1) ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !181
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !210  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !121
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.s, i64 noundef %i.u) ; 0 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !181
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ugt i64 %i.aa, 16
  br i1 %i.ab, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !244
  %.not15 = icmp eq ptr %i.ad, null
  br i1 %.not15, label %bb.e, label %bb.c

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.b ] ; 3 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.129, i64 noundef 5) ; 0 uses
  %.pre24 = load ptr, ptr %i.i, align 8, !tbaa !181
  %.phi.trans.insert25 = getelementptr inbounds nuw [16 x i8], ptr %.pre24, i64 %indvars.iv
  %.pre26 = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !210 ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %.pre26, i64 64
  %.pre30 = load i64, ptr %.phi.trans.insert29, align 8, !tbaa !121
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %.pre26, i64 56
  %.pre28 = load ptr, ptr %.phi.trans.insert27, align 8, !tbaa !119
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %.pre28, i64 noundef %.pre30) ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.130, i64 noundef 1) ; 0 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !181
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.an = load i64, ptr %i.am, align 8, !tbaa !121
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.al, i64 noundef %i.an) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !181
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4
  %i.av = icmp ugt i64 %i.au, %indvars.iv.next
  br i1 %i.av, label %.peel.next, label %._crit_edge, !llvm.loop !1286

bb.c:                                             ; preds = %._crit_edge
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.131, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !244 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !139
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.ax)
  %i.bb = load ptr, ptr %2, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !121
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.bf = load ptr, ptr %2, align 8, !tbaa !119   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !120
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %2, align 8, !tbaa !119   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !120
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.bk

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox4core12JoinTypeName6toNameENS1_8JoinTypeE(i32 noundef %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1287", align 16 ; 4 uses
  %2 = alloca [9 x %"struct.std::pair.339"], align 8 ; 5 uses
  %3 = alloca %"struct.folly::HeterogeneousAccessHash.325", align 1 ; 4 uses
  %4 = alloca %"struct.folly::HeterogeneousAccessEqualTo.330", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.334", align 1 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv.exit, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(216) @constinit.453, i64 216, i1 false), !tbaa.struct !444
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS7_SB_EEmRKNS_23HeterogeneousAccessHashIS7_vEERKNS_26HeterogeneousAccessEqualToIS7_vEERKSaISJ_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames, ptr nonnull %2, i64 9, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S8_EEECI2NS_3f146detail11F14BasicMapINSJ_21VectorContainerPolicyIS4_S8_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISF_EmRKSA_RKSC_RKSG_.exit.i unwind label %bb.d

_ZN5folly10F14FastMapIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S8_EEECI2NS_3f146detail11F14BasicMapINSJ_21VectorContainerPolicyIS4_S8_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISF_EmRKSA_RKSC_RKSG_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames) #40
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames) #40
  br label %common.resume

_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv.exit: ; preds = %bb.a, %bb.b, %_ZN5folly10F14FastMapIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S8_EEECI2NS_3f146detail11F14BasicMapINSJ_21VectorContainerPolicyIS4_S8_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISF_EmRKSA_RKSC_RKSG_.exit.i
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames, i64 16), align 8, !tbaa !268 ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv.exit
  %i.h = sext i32 %0 to i64                       ; 2 uses
  %i.i = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.h) ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = or i64 %i.j, 128                         ; 2 uses
  %i.l = add nsw i64 %i.i, %i.h
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = trunc nuw i64 %i.k to i8
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = and i64 %i.f, 255                        ; 2 uses
  %i.s = shl nuw i64 1, %i.r
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames, i64 8), align 8, !tbaa !448
  %i.u = load ptr, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.022.i.i52 = phi i64 [ %i.s, %bb.e ], [ %i.aq, %bb.i ]
  %.024.i.i51 = phi i64 [ %i.l, %bb.e ], [ %i.ar, %bb.i ] ; 2 uses
  %i.v = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i51, i64 range(i64 0, 256) %i.r)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.q
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 4095
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = extractelement <16 x i8> %i.x, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %bb.f
  %.sroa.015.0 = phi i32 [ %i.ab, %bb.f ], [ %i.ah, %bb.g ] ; 4 uses
  %.not = icmp eq i32 %.sroa.015.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %i.af = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.0, i1 true)
  %i.ag = add nuw nsw i32 %.sroa.015.0, 4095
  %i.ah = and i32 %i.ag, %.sroa.015.0
  %i.ai = zext nneg i32 %i.af to i64
  call void @llvm.assume(i1 %i.ac)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.al ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !449
  %i.ao = icmp eq i32 %0, %i.an
  br i1 %i.ao, label %bb.l, label %.critedge.i.i, !prof !198, !llvm.loop !45

bb.h:                                             ; preds = %.critedge.i.i
  %i.ap = icmp eq i8 %i.ae, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %.022.i.i52, -1                 ; 2 uses
  %i.ar = add i64 %i.n, %.024.i.i51
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.f, !llvm.loop !46

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40, !noalias !1289
  %.sroa.03.0.insert.ext.i = zext i32 %0 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !1289
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40, !noalias !1289
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core12JoinTypeName6toNameENS1_8JoinTypeEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.34) #42
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  unreachable

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !120
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !135
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !276
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4core16AbstractJoinNode13serializeBaseEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 initializes((0, 4), (8, 32)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %3 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %4 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %5 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %6 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  tail call void @_ZNK8facebook5velox4core8PlanNode9serializeEv(ptr dead_on_unwind writable sret(%"struct.folly::dynamic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !442
  %i.c = invoke { i64, ptr } @_ZN8facebook5velox4core12JoinTypeName6toNameENS1_8JoinTypeE(i32 noundef %i.b)
          to label %bb.b unwind label %bb.q       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 9 uses
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  store i32 6, ptr %2, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !116
  %i.h = icmp eq ptr %i.e, null
  %i.i = icmp ne i64 %i.d, 0
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.375) #42
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.d, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.d, 0
  br i1 %i.k, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.376) #42
          to label %.noexc19 unwind label %bb.q

.noexc19:                                         ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.d, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !122

.noexc9.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc20 unwind label %bb.q

.noexc20:                                         ; preds = %.noexc9.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #41
          to label %.noexc21 unwind label %bb.q   ; 2 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.n, ptr %i.f, align 8, !tbaa !119
  store i64 %i.d, ptr %i.g, align 8, !tbaa !120
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc21, %bb.c
  %i.o = phi ptr [ %i.n, %.noexc21 ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.e, align 1, !tbaa !120
  store i8 %i.p, ptr %i.o, align 1, !tbaa !120
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.e, i64 %i.d, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %i.q, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.d
  store i8 0, ptr %i.r, align 1, !tbaa !120
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.132, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.132, i64 8))
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.t = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %2) #40 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZN8facebook5velox13ISerializable9serializeISt10shared_ptrIKNS0_4core20FieldAccessTypedExprEEEEN5folly7dynamicERKSt6vectorIT_SaISB_EE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.v = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.133, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.133, i64 8))
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.w = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %3) #40 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN8facebook5velox13ISerializable9serializeISt10shared_ptrIKNS0_4core20FieldAccessTypedExprEEEEN5folly7dynamicERKSt6vectorIT_SaISB_EE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.y = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.134, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.134, i64 9))
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.z = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %4) #40 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !244 ; 3 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !139
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ae = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.135, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.135, i64 6))
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4core16AbstractJoinNode13serializeBaseEv:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn12 = phi { ptr, i32 } [ %i.al, %bb.x ], [ %i.ak, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ai

bb.z:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #40
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn14 = phi { ptr, i32 } [ %i.an, %bb.aa ], [ %i.am, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.ai

bb.ac:                                            ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !218 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %i.ap)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.at = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.98, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.98, i64 10))
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.au = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %6) #40 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

bb.af:                                            ; preds = %bb.ac
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn16 = phi { ptr, i32 } [ %i.aw, %bb.ag ], [ %i.av, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ab, %bb.y, %bb.v, %bb.s
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.ah ], [ %.pn14, %bb.ab ], [ %.pn12, %bb.y ], [ %.pn10, %bb.v ], [ %.pn, %bb.s ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #40
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv() unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [9 x %"struct.std::pair.339"], align 8 ; 5 uses
  %1 = alloca %"struct.folly::HeterogeneousAccessHash.325", align 1 ; 4 uses
  %2 = alloca %"struct.folly::HeterogeneousAccessEqualTo.330", align 1 ; 4 uses
  %3 = alloca %"class.std::allocator.334", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) @constinit.453, i64 216, i1 false), !tbaa.struct !444
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS7_SB_EEmRKNS_23HeterogeneousAccessHashIS7_vEERKNS_26HeterogeneousAccessEqualToIS7_vEERKSaISJ_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames, ptr nonnull %0, i64 9, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S8_EEECI2NS_3f146detail11F14BasicMapINSJ_21VectorContainerPolicyIS4_S8_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISF_EmRKSA_RKSC_RKSG_.exit unwind label %bb.e

_ZN5folly10F14FastMapIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S8_EEECI2NS_3f146detail11F14BasicMapINSJ_21VectorContainerPolicyIS4_S8_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISF_EmRKSA_RKSC_RKSG_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly10F14FastMapIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S8_EEECI2NS_3f146detail11F14BasicMapINSJ_21VectorContainerPolicyIS4_S8_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISF_EmRKSA_RKSC_RKSG_.exit, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames) #40
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEv()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox5Enums9invertMapINS0_4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NS9_23HeterogeneousAccessHashISB_vEENS9_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap.349") align 8 @_ZZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_113joinTypeNamesEvE6kNames)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.i = lshr i64 %i.h, 56
  %i.j = or i64 %i.i, 128                         ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.m = trunc nuw i64 %i.j to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.q = and i64 %i.p, 255                        ; 3 uses
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 8), align 8, !tbaa !453 ; 2 uses
  %i.t = load ptr, ptr @_ZZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %2, align 8
  %.fr63 = freeze i64 %i.v                        ; 3 uses
  %i.w = icmp eq i64 %.fr63, 0
  br i1 %i.w, label %.split58.us, label %.split58, !llvm.loop !47

.split58.us:                                      ; preds = %bb.g, %bb.i
  %.022.i.i57.us = phi i64 [ %i.ar, %bb.i ], [ %i.r, %bb.g ]
  %.024.i.i56.us = phi i64 [ %i.as, %bb.i ], [ %i.h, %bb.g ] ; 2 uses
  %i.x = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56.us, i64 range(i64 0, 256) %i.q)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.x ; 3 uses
  %i.z = load <16 x i8>, ptr %i.y, align 16       ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.z, %i.o
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = and i16 %i.ab, 4095                     ; 2 uses
  %.not4750.us = icmp eq i16 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.z, i64 15
  br i1 %.not4750.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split58.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.backedge.us.us, %.lr.ph.us
  %.sroa.011.051.us.us = phi i32 [ %i.ae, %.lr.ph.us ], [ %i.ap, %.critedge.i.i.backedge.us.us ] ; 3 uses
  %i.ah = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge.us.us, !prof !284

.critedge.i.i.backedge.us.us:                     ; preds = %bb.h
  %i.ao = add nuw nsw i32 %.sroa.011.051.us.us, 4095
  %i.ap = and i32 %i.ao, %.sroa.011.051.us.us     ; 2 uses
  %.not47.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not47.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %bb.h, !llvm.loop !47

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us, %.split58.us
  %i.aq = icmp eq i8 %i.ad, 0
  br i1 %i.aq, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.ar = add i64 %.022.i.i57.us, -1              ; 2 uses
  %i.as = add i64 %i.l, %.024.i.i56.us
  %.not.i.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58.us, !llvm.loop !48

.split58:                                         ; preds = %bb.g, %bb.k
  %.022.i.i57 = phi i64 [ %i.bq, %bb.k ], [ %i.r, %bb.g ]
  %.024.i.i56 = phi i64 [ %i.br, %bb.k ], [ %i.h, %bb.g ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56, i64 range(i64 0, 256) %i.q)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.at ; 3 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.o
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 4095                     ; 2 uses
  %.not4750 = icmp eq i16 %i.ay, 0
  %i.az = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not4750, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split58
  %i.ba = zext nneg i16 %i.ay to i32
  %i.bb = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.011.051 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bf, %.critedge.i.i.backedge ] ; 3 uses
  %i.bd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051, i1 true)
  %i.be = add nuw nsw i32 %.sroa.011.051, 4095
  %i.bf = and i32 %i.be, %.sroa.011.051           ; 2 uses
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr63, %i.bl
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !285
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.u, ptr %i.bn, i64 %.fr63)
  %i.bo = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %bb.j
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %.critedge.i.i._crit_edge.split, label %bb.j, !llvm.loop !47

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split58
  %i.bp = icmp eq i8 %i.az, 0
  br i1 %i.bp, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.k, !prof !198

bb.k:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.bq = add i64 %.022.i.i57, -1                 ; 2 uses
  %i.br = add i64 %i.l, %.024.i.i56
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58, !llvm.loop !48

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12JoinTypeName13tryToJoinTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  resume { ptr, i32 } %i.bs

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.h
  %.pre-phi = phi i64 [ %i.al, %bb.h ], [ %i.bj, %.split ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !449
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.bw, 4294967296
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.critedge.i.i._crit_edge.split, %bb.k, %bb.i, %.critedge.i.i._crit_edge.split.us.us, %bb.f, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread
  %.sroa.2.0 = phi i64 [ %i.bx, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %.critedge.i.i._crit_edge.split.us.us ], [ 0, %bb.k ], [ 0, %.critedge.i.i._crit_edge.split ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox5Enums9invertMapINS0_4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NS9_23HeterogeneousAccessHashISB_vEENS9_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastMap.349") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"struct.std::pair.863", align 8    ; 4 uses
  %4 = alloca %"class.folly::F14FastMap.349", align 16 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr null, ptr %4, align 16, !tbaa !454
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !453
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 16, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = lshr i64 %i.d, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.e, 0
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %.not.i.i.i.not, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.backedge

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit: ; preds = %bb.h
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !185
  %.pre36 = load i64, ptr %i.b, align 16, !tbaa !135
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre36, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ 0, %bb.a ]
  %i.k = phi <2 x ptr> [ %i.i, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !185
  store i64 %i.j, ptr %i.l, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

.backedge:                                        ; preds = %bb.h, %.lr.ph
  %.pn45 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.024.030, %bb.h ] ; 3 uses
  %.sroa.024.030 = getelementptr inbounds i8, ptr %.pn45, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.pn45, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !1296
  %i.n = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.backedge
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %i.n, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.024.030)
          to label %.noexc18 unwind label %bb.e

.noexc18:                                         ; preds = %.noexc
  %i.q = load i8, ptr %i.h, align 8, !tbaa !133, !range !131, !noalias !1297, !noundef !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !1296
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.b, !prof !198

bb.b:                                             ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1298
  %i.s = getelementptr inbounds i8, ptr %.pn45, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !285, !noalias !1298
  %i.u = load i64, ptr %i.m, align 8, !tbaa !283, !noalias !1298
  %i.v = ptrtoint ptr %i.t to i64
  store i64 %i.v, ptr %2, align 16, !noalias !1298
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa_idx3.i, align 8, !noalias !1298
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.405, i64 45, i64 13, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1298
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5Enums9invertMapINS0_4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NS9_23HeterogeneousAccessHashISB_vEENS9_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.405) #42
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.noexc, %.backedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !119    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !120
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.i

bb.h:                                             ; preds = %.noexc18
  %i.ae = icmp eq ptr %i.f, %.sroa.024.030
  br i1 %i.ae, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, label %.backedge, !prof !122

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !453  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !290
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !268  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !268
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4core10WindowNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
  store i32 0, ptr %i.ju, align 4, !tbaa !205
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !139
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #40, !inline_history !1555
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !139
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #40, !inline_history !1555
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.ca:                                            ; preds = %bb.by
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i83.i = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i83.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i = phi i32 [ %i.jt, %bb.cb ], [ %i.kd, %bb.cc ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ke, label %bb.cd, label %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !122

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bz, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit81.i
  %i.kf = load ptr, ptr %i.bn, align 8, !tbaa !184 ; 8 uses
  %.not.i.i1.i84.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i1.i84.i, label %_ZN8facebook5velox4core12_GLOBAL__N_117addWindowFunctionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKNS1_10WindowNode8FunctionE.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 4 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 4294967297
  %i.kj = trunc i64 %i.kh to i32                  ; 2 uses
  br i1 %i.ki, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.kg, align 8, !tbaa !204
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  store i32 0, ptr %i.kk, align 4, !tbaa !205
  %i.kl = load ptr, ptr %i.kf, align 8, !tbaa !139
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #40, !inline_history !1555
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !139
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #40, !inline_history !1555
  br label %_ZN8facebook5velox4core12_GLOBAL__N_117addWindowFunctionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKNS1_10WindowNode8FunctionE.exit

bb.cg:                                            ; preds = %bb.ce
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i2.i.i = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i2.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ks = add nsw i32 %i.kj, -1
  store i32 %i.ks, ptr %i.kg, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.kt = atomicrmw volatile add ptr %i.kg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i4.i.i = phi i32 [ %i.kj, %bb.ch ], [ %i.kt, %bb.ci ]
  %i.ku = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.ku, label %bb.cj, label %_ZN8facebook5velox4core12_GLOBAL__N_117addWindowFunctionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKNS1_10WindowNode8FunctionE.exit, !prof !122

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #40
  br label %_ZN8facebook5velox4core12_GLOBAL__N_117addWindowFunctionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKNS1_10WindowNode8FunctionE.exit

bb.ck:                                            ; preds = %.body57.i, %.body.i, %bb.ax, %bb.y, %bb.u
  %.pn30.i = phi { ptr, i32 } [ %i.ef, %bb.u ], [ %i.ei, %bb.y ], [ %i.gv, %bb.ax ], [ %.pn28.i, %.body57.i ], [ %.pn.i, %.body.i ]
  call void @_ZN8facebook5velox4core10WindowNode5FrameD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i
  %.pn30.pn.i = phi { ptr, i32 } [ %.pn30.i, %bb.ck ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i ]
  resume { ptr, i32 } %.pn30.pn.i

_ZN8facebook5velox4core12_GLOBAL__N_117addWindowFunctionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKNS1_10WindowNode8FunctionE.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kv = load ptr, ptr %i.bf, align 8, !tbaa !495
  %i.kw = load ptr, ptr %i.be, align 8, !tbaa !496
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = sub i64 %i.kx, %i.ky
  %i.la = sdiv exact i64 %i.kz, 72
  %i.lb = icmp ugt i64 %i.la, %indvars.iv.next
  br i1 %i.lb, label %bb.h, label %._crit_edge, !llvm.loop !1556
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox4core10WindowNode6toNameENS2_9BoundTypeE(i32 noundef %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1287", align 16 ; 4 uses
  %2 = alloca [5 x %"struct.std::pair.418"], align 8 ; 5 uses
  %3 = alloca %"struct.folly::HeterogeneousAccessHash.404", align 1 ; 4 uses
  %4 = alloca %"struct.folly::HeterogeneousAccessEqualTo.409", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.413", align 1 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv.exit, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) @constinit.476, i64 120, i1 false), !tbaa.struct !505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames, ptr nonnull %2, i64 5, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i unwind label %bb.d

_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames) #40
  br label %_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames) #40
  br label %common.resume

_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv.exit: ; preds = %bb.a, %bb.b, %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames, i64 16), align 8, !tbaa !268 ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv.exit
  %i.h = sext i32 %0 to i64                       ; 2 uses
  %i.i = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.h) ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = or i64 %i.j, 128                         ; 2 uses
  %i.l = add nsw i64 %i.i, %i.h
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = trunc nuw i64 %i.k to i8
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = and i64 %i.f, 255                        ; 2 uses
  %i.s = shl nuw i64 1, %i.r
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames, i64 8), align 8, !tbaa !509
  %i.u = load ptr, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.022.i.i52 = phi i64 [ %i.s, %bb.e ], [ %i.aq, %bb.i ]
  %.024.i.i51 = phi i64 [ %i.l, %bb.e ], [ %i.ar, %bb.i ] ; 2 uses
  %i.v = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i51, i64 range(i64 0, 256) %i.r)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.q
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 4095
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = extractelement <16 x i8> %i.x, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %bb.f
  %.sroa.015.0 = phi i32 [ %i.ab, %bb.f ], [ %i.ah, %bb.g ] ; 4 uses
  %.not = icmp eq i32 %.sroa.015.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %i.af = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.0, i1 true)
  %i.ag = add nuw nsw i32 %.sroa.015.0, 4095
  %i.ah = and i32 %i.ag, %.sroa.015.0
  %i.ai = zext nneg i32 %i.af to i64
  call void @llvm.assume(i1 %i.ac)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.al ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !510
  %i.ao = icmp eq i32 %0, %i.an
  br i1 %i.ao, label %bb.l, label %.critedge.i.i, !prof !198, !llvm.loop !54

bb.h:                                             ; preds = %.critedge.i.i
  %i.ap = icmp eq i8 %i.ae, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %.022.i.i52, -1                 ; 2 uses
  %i.ar = add i64 %i.n, %.024.i.i51
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.f, !llvm.loop !55

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40, !noalias !1559
  %.sroa.03.0.insert.ext.i = zext i32 %0 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !1559
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40, !noalias !1559
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core10WindowNode6toNameENS2_9BoundTypeEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.34) #42
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  unreachable

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !120
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !135
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !276
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv() unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [5 x %"struct.std::pair.418"], align 8 ; 5 uses
  %1 = alloca %"struct.folly::HeterogeneousAccessHash.404", align 1 ; 4 uses
  %2 = alloca %"struct.folly::HeterogeneousAccessEqualTo.409", align 1 ; 4 uses
  %3 = alloca %"class.std::allocator.413", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) @constinit.476, i64 120, i1 false), !tbaa.struct !505
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames, ptr nonnull %0, i64 5, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit unwind label %bb.e

_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames) #40
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEv()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox5Enums9invertMapINS0_4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap.428") align 8 @_ZZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_114boundTypeNamesEvE6kNames)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.i = lshr i64 %i.h, 56
  %i.j = or i64 %i.i, 128                         ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.m = trunc nuw i64 %i.j to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.q = and i64 %i.p, 255                        ; 3 uses
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 8), align 8, !tbaa !514 ; 2 uses
  %i.t = load ptr, ptr @_ZZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %2, align 8
  %.fr63 = freeze i64 %i.v                        ; 3 uses
  %i.w = icmp eq i64 %.fr63, 0
  br i1 %i.w, label %.split58.us, label %.split58, !llvm.loop !56

.split58.us:                                      ; preds = %bb.g, %bb.i
  %.022.i.i57.us = phi i64 [ %i.ar, %bb.i ], [ %i.r, %bb.g ]
  %.024.i.i56.us = phi i64 [ %i.as, %bb.i ], [ %i.h, %bb.g ] ; 2 uses
  %i.x = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56.us, i64 range(i64 0, 256) %i.q)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.x ; 3 uses
  %i.z = load <16 x i8>, ptr %i.y, align 16       ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.z, %i.o
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = and i16 %i.ab, 4095                     ; 2 uses
  %.not4750.us = icmp eq i16 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.z, i64 15
  br i1 %.not4750.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split58.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.backedge.us.us, %.lr.ph.us
  %.sroa.011.051.us.us = phi i32 [ %i.ae, %.lr.ph.us ], [ %i.ap, %.critedge.i.i.backedge.us.us ] ; 3 uses
  %i.ah = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge.us.us, !prof !284

.critedge.i.i.backedge.us.us:                     ; preds = %bb.h
  %i.ao = add nuw nsw i32 %.sroa.011.051.us.us, 4095
  %i.ap = and i32 %i.ao, %.sroa.011.051.us.us     ; 2 uses
  %.not47.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not47.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %bb.h, !llvm.loop !56

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us, %.split58.us
  %i.aq = icmp eq i8 %i.ad, 0
  br i1 %i.aq, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.ar = add i64 %.022.i.i57.us, -1              ; 2 uses
  %i.as = add i64 %i.l, %.024.i.i56.us
  %.not.i.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58.us, !llvm.loop !57

.split58:                                         ; preds = %bb.g, %bb.k
  %.022.i.i57 = phi i64 [ %i.bq, %bb.k ], [ %i.r, %bb.g ]
  %.024.i.i56 = phi i64 [ %i.br, %bb.k ], [ %i.h, %bb.g ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56, i64 range(i64 0, 256) %i.q)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.at ; 3 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.o
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 4095                     ; 2 uses
  %.not4750 = icmp eq i16 %i.ay, 0
  %i.az = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not4750, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split58
  %i.ba = zext nneg i16 %i.ay to i32
  %i.bb = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.011.051 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bf, %.critedge.i.i.backedge ] ; 3 uses
  %i.bd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051, i1 true)
  %i.be = add nuw nsw i32 %.sroa.011.051, 4095
  %i.bf = and i32 %i.be, %.sroa.011.051           ; 2 uses
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr63, %i.bl
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !285
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.u, ptr %i.bn, i64 %.fr63)
  %i.bo = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %bb.j
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %.critedge.i.i._crit_edge.split, label %bb.j, !llvm.loop !56

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split58
  %i.bp = icmp eq i8 %i.az, 0
  br i1 %i.bp, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.k, !prof !198

bb.k:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.bq = add i64 %.022.i.i57, -1                 ; 2 uses
  %i.br = add i64 %i.l, %.024.i.i56
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58, !llvm.loop !57

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  resume { ptr, i32 } %i.bs

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.h
  %.pre-phi = phi i64 [ %i.al, %bb.h ], [ %i.bj, %.split ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !510
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.bw, 4294967296
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.critedge.i.i._crit_edge.split, %bb.k, %bb.i, %.critedge.i.i._crit_edge.split.us.us, %bb.f, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread
  %.sroa.2.0 = phi i64 [ %i.bx, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %.critedge.i.i._crit_edge.split.us.us ], [ 0, %bb.k ], [ 0, %.critedge.i.i._crit_edge.split ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox5Enums9invertMapINS0_4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastMap.428") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"struct.std::pair.863", align 8    ; 4 uses
  %4 = alloca %"class.folly::F14FastMap.428", align 16 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr null, ptr %4, align 16, !tbaa !515
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !514
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 16, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = lshr i64 %i.d, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.e, 0
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %.not.i.i.i.not, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.backedge

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit: ; preds = %bb.h
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !185
  %.pre36 = load i64, ptr %i.b, align 16, !tbaa !135
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre36, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ 0, %bb.a ]
  %i.k = phi <2 x ptr> [ %i.i, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !185
  store i64 %i.j, ptr %i.l, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

.backedge:                                        ; preds = %bb.h, %.lr.ph
  %.pn45 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.024.030, %bb.h ] ; 3 uses
  %.sroa.024.030 = getelementptr inbounds i8, ptr %.pn45, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.pn45, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !1566
  %i.n = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.backedge
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %i.n, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.024.030)
          to label %.noexc18 unwind label %bb.e

.noexc18:                                         ; preds = %.noexc
  %i.q = load i8, ptr %i.h, align 8, !tbaa !133, !range !131, !noalias !1567, !noundef !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !1566
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.b, !prof !198

bb.b:                                             ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1568
  %i.s = getelementptr inbounds i8, ptr %.pn45, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !285, !noalias !1568
  %i.u = load i64, ptr %i.m, align 8, !tbaa !283, !noalias !1568
  %i.v = ptrtoint ptr %i.t to i64
  store i64 %i.v, ptr %2, align 16, !noalias !1568
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa_idx3.i, align 8, !noalias !1568
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.405, i64 45, i64 13, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1568
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5Enums9invertMapINS0_4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.405) #42
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.noexc, %.backedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !119    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !120
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.i

bb.h:                                             ; preds = %.noexc18
  %i.ae = icmp eq ptr %i.f, %.sroa.024.030
  br i1 %i.ae, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, label %.backedge, !prof !122

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !290
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !268  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !268
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.o = icmp eq i64 %i.h, 0
  %i.p = shl nuw nsw i64 %.pre-phi21.i.i.i, 2
  %.neg17.i.i.i = sub nuw nsw i64 -16, %i.p
  %.neg18.i.i.i = shl i64 -64, %i.h
  %.0.i.neg.i.i.i = select i1 %i.o, i64 %.neg17.i.i.i, i64 %.neg18.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !514
  store i64 0, ptr %i.f, align 8, !tbaa !268
  %i.q = and i64 %.0.i.neg.i.i.i, -8
  %i.r = mul nuw nsw i64 %i.j, 24
  %i.s = mul i64 %i.r, %i.m
  %i.t = sub i64 %i.s, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.t) #40
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %bb.a, %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8facebook5velox4core10WindowNode11toBoundTypeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call i64 @_ZN8facebook5velox4core10WindowNode14tryToBoundTypeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) ; 2 uses
  %.not = icmp samesign ult i64 %i.a, 4294967296
  br i1 %.not, label %bb.b, label %bb.e, !prof !122

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1571
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %2, align 16, !noalias !1571
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %0, ptr %.sroa_idx3.i, align 8, !noalias !1571
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.37, i64 21, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1571
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core10WindowNode11toBoundTypeESt17basic_string_viewIcSt11char_traitsIcEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.37) #42
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !119    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !120
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %.sroa.02.0.extract.trunc = trunc i64 %i.a to i32
  ret i32 %.sroa.02.0.extract.trunc
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox4core10WindowNode6toNameENS2_10WindowTypeE(i32 noundef %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1287", align 16 ; 4 uses
  %2 = alloca [2 x %"struct.std::pair.464"], align 8 ; 5 uses
  %3 = alloca %"struct.folly::HeterogeneousAccessHash.450", align 1 ; 4 uses
  %4 = alloca %"struct.folly::HeterogeneousAccessEqualTo.455", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.459", align 1 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv.exit, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) @constinit.479, i64 48, i1 false), !tbaa.struct !516
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames, ptr nonnull %2, i64 2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i unwind label %bb.d

_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames) #40
  br label %_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames) #40
  br label %common.resume

_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv.exit: ; preds = %bb.a, %bb.b, %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames, i64 16), align 8, !tbaa !268 ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv.exit
  %i.h = sext i32 %0 to i64                       ; 2 uses
  %i.i = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.h) ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = or i64 %i.j, 128                         ; 2 uses
  %i.l = add nsw i64 %i.i, %i.h
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = trunc nuw i64 %i.k to i8
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = and i64 %i.f, 255                        ; 2 uses
  %i.s = shl nuw i64 1, %i.r
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames, i64 8), align 8, !tbaa !520
  %i.u = load ptr, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.022.i.i52 = phi i64 [ %i.s, %bb.e ], [ %i.aq, %bb.i ]
  %.024.i.i51 = phi i64 [ %i.l, %bb.e ], [ %i.ar, %bb.i ] ; 2 uses
  %i.v = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i51, i64 range(i64 0, 256) %i.r)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.q
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 4095
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = extractelement <16 x i8> %i.x, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %bb.f
  %.sroa.015.0 = phi i32 [ %i.ab, %bb.f ], [ %i.ah, %bb.g ] ; 4 uses
  %.not = icmp eq i32 %.sroa.015.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %i.af = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.0, i1 true)
  %i.ag = add nuw nsw i32 %.sroa.015.0, 4095
  %i.ah = and i32 %i.ag, %.sroa.015.0
  %i.ai = zext nneg i32 %i.af to i64
  call void @llvm.assume(i1 %i.ac)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.al ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !521
  %i.ao = icmp eq i32 %0, %i.an
  br i1 %i.ao, label %bb.l, label %.critedge.i.i, !prof !198, !llvm.loop !58

bb.h:                                             ; preds = %.critedge.i.i
  %i.ap = icmp eq i8 %i.ae, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %.022.i.i52, -1                 ; 2 uses
  %i.ar = add i64 %i.n, %.024.i.i51
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.f, !llvm.loop !59

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40, !noalias !1574
  %.sroa.03.0.insert.ext.i = zext i32 %0 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !1574
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40, !noalias !1574
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core10WindowNode6toNameENS2_10WindowTypeEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.34) #42
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  unreachable

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !120
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !135
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !276
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv() unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [2 x %"struct.std::pair.464"], align 8 ; 5 uses
  %1 = alloca %"struct.folly::HeterogeneousAccessHash.450", align 1 ; 4 uses
  %2 = alloca %"struct.folly::HeterogeneousAccessEqualTo.455", align 1 ; 4 uses
  %3 = alloca %"class.std::allocator.459", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @constinit.479, i64 48, i1 false), !tbaa.struct !516
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames, ptr nonnull %0, i64 2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit unwind label %bb.e

_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly10F14FastMapIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames) #40
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEv()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox5Enums9invertMapINS0_4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap.474") align 8 @_ZZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_115windowTypeNamesEvE6kNames)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.i = lshr i64 %i.h, 56
  %i.j = or i64 %i.i, 128                         ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.m = trunc nuw i64 %i.j to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.q = and i64 %i.p, 255                        ; 3 uses
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 8), align 8, !tbaa !525 ; 2 uses
  %i.t = load ptr, ptr @_ZZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %2, align 8
  %.fr63 = freeze i64 %i.v                        ; 3 uses
  %i.w = icmp eq i64 %.fr63, 0
  br i1 %i.w, label %.split58.us, label %.split58, !llvm.loop !60

.split58.us:                                      ; preds = %bb.g, %bb.i
  %.022.i.i57.us = phi i64 [ %i.ar, %bb.i ], [ %i.r, %bb.g ]
  %.024.i.i56.us = phi i64 [ %i.as, %bb.i ], [ %i.h, %bb.g ] ; 2 uses
  %i.x = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56.us, i64 range(i64 0, 256) %i.q)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.x ; 3 uses
  %i.z = load <16 x i8>, ptr %i.y, align 16       ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.z, %i.o
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = and i16 %i.ab, 4095                     ; 2 uses
  %.not4750.us = icmp eq i16 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.z, i64 15
  br i1 %.not4750.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split58.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.backedge.us.us, %.lr.ph.us
  %.sroa.011.051.us.us = phi i32 [ %i.ae, %.lr.ph.us ], [ %i.ap, %.critedge.i.i.backedge.us.us ] ; 3 uses
  %i.ah = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge.us.us, !prof !284

.critedge.i.i.backedge.us.us:                     ; preds = %bb.h
  %i.ao = add nuw nsw i32 %.sroa.011.051.us.us, 4095
  %i.ap = and i32 %i.ao, %.sroa.011.051.us.us     ; 2 uses
  %.not47.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not47.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %bb.h, !llvm.loop !60

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us, %.split58.us
  %i.aq = icmp eq i8 %i.ad, 0
  br i1 %i.aq, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.ar = add i64 %.022.i.i57.us, -1              ; 2 uses
  %i.as = add i64 %i.l, %.024.i.i56.us
  %.not.i.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58.us, !llvm.loop !61

.split58:                                         ; preds = %bb.g, %bb.k
  %.022.i.i57 = phi i64 [ %i.bq, %bb.k ], [ %i.r, %bb.g ]
  %.024.i.i56 = phi i64 [ %i.br, %bb.k ], [ %i.h, %bb.g ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56, i64 range(i64 0, 256) %i.q)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.at ; 3 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.o
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 4095                     ; 2 uses
  %.not4750 = icmp eq i16 %i.ay, 0
  %i.az = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not4750, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split58
  %i.ba = zext nneg i16 %i.ay to i32
  %i.bb = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.011.051 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bf, %.critedge.i.i.backedge ] ; 3 uses
  %i.bd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051, i1 true)
  %i.be = add nuw nsw i32 %.sroa.011.051, 4095
  %i.bf = and i32 %i.be, %.sroa.011.051           ; 2 uses
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr63, %i.bl
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !285
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.u, ptr %i.bn, i64 %.fr63)
  %i.bo = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %bb.j
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %.critedge.i.i._crit_edge.split, label %bb.j, !llvm.loop !60

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split58
  %i.bp = icmp eq i8 %i.az, 0
  br i1 %i.bp, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.k, !prof !198

bb.k:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.bq = add i64 %.022.i.i57, -1                 ; 2 uses
  %i.br = add i64 %i.l, %.024.i.i56
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58, !llvm.loop !61

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core10WindowNode15tryToWindowTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  resume { ptr, i32 } %i.bs

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.h
  %.pre-phi = phi i64 [ %i.al, %bb.h ], [ %i.bj, %.split ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !521
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.bw, 4294967296
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.critedge.i.i._crit_edge.split, %bb.k, %bb.i, %.critedge.i.i._crit_edge.split.us.us, %bb.f, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread
  %.sroa.2.0 = phi i64 [ %i.bx, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %.critedge.i.i._crit_edge.split.us.us ], [ 0, %bb.k ], [ 0, %.critedge.i.i._crit_edge.split ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox5Enums9invertMapINS0_4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastMap.474") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"struct.std::pair.863", align 8    ; 4 uses
  %4 = alloca %"class.folly::F14FastMap.474", align 16 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr null, ptr %4, align 16, !tbaa !526
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !525
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 16, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = lshr i64 %i.d, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.e, 0
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %.not.i.i.i.not, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.backedge

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit: ; preds = %bb.h
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !185
  %.pre36 = load i64, ptr %i.b, align 16, !tbaa !135
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre36, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ 0, %bb.a ]
  %i.k = phi <2 x ptr> [ %i.i, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !185
  store i64 %i.j, ptr %i.l, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

.backedge:                                        ; preds = %bb.h, %.lr.ph
  %.pn45 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.024.030, %bb.h ] ; 3 uses
  %.sroa.024.030 = getelementptr inbounds i8, ptr %.pn45, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.pn45, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !1581
  %i.n = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.backedge
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %i.n, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.024.030)
          to label %.noexc18 unwind label %bb.e

.noexc18:                                         ; preds = %.noexc
  %i.q = load i8, ptr %i.h, align 8, !tbaa !133, !range !131, !noalias !1582, !noundef !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !1581
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.b, !prof !198

bb.b:                                             ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1583
  %i.s = getelementptr inbounds i8, ptr %.pn45, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !285, !noalias !1583
  %i.u = load i64, ptr %i.m, align 8, !tbaa !283, !noalias !1583
  %i.v = ptrtoint ptr %i.t to i64
  store i64 %i.v, ptr %2, align 16, !noalias !1583
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa_idx3.i, align 8, !noalias !1583
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.405, i64 45, i64 13, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1583
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5Enums9invertMapINS0_4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.405) #42
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.noexc, %.backedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !119    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !120
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.i

bb.h:                                             ; preds = %.noexc18
  %i.ae = icmp eq ptr %i.f, %.sroa.024.030
  br i1 %i.ae, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, label %.backedge, !prof !122

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !525  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !290
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !268  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !268
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4core19EnforceDistinctNodeC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISD_EESF_S8_SA_IKNS1_8PlanNodeEE:bb.a
  %i.hs = and i8 %i.hr, 120
  %narrow.i.i.i.i = add nuw i8 %i.hs, 16
  %i.ht = zext i8 %narrow.i.i.i.i to i64
  %i.hu = shl i64 128, %i.ho
  %.0.i.i.i.i.i = select i1 %i.hq, i64 %i.ht, i64 %i.hu
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %22, align 8, !tbaa !532
  store i64 0, ptr %i.db, align 8, !tbaa !268
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %.0.i.i.i.i.i) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit: ; preds = %._crit_edge257, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  %i.hv = load ptr, ptr %15, align 8, !tbaa !532  ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 15
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !290
  %i.hy = icmp eq i8 %i.hx, -1
  br i1 %i.hy, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit106, label %bb.bd

bb.bd:                                            ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit
  %i.hz = load i64, ptr %i.cq, align 8, !tbaa !268 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 14
  %i.ib = icmp ult i64 %i.hz, 256
  br i1 %i.ib, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ic = and i64 %i.hz, 255                      ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.id, align 8, !tbaa !135
  store i64 %i.ic, ptr %i.cq, align 8, !tbaa !268
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ie = phi i64 [ %i.hz, %bb.bd ], [ %i.ic, %bb.be ] ; 2 uses
  %i.if = load i8, ptr %i.ia, align 1, !tbaa !120
  %i.ig = icmp eq i64 %i.ie, 0
  %i.ih = shl i8 %i.if, 3
  %i.ii = and i8 %i.ih, 120
  %narrow.i.i.i.i104 = add nuw i8 %i.ii, 16
  %i.ij = zext i8 %narrow.i.i.i.i104 to i64
  %i.ik = shl i64 128, %i.ie
  %.0.i.i.i.i.i105 = select i1 %i.ig, i64 %i.ij, i64 %i.ik
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !532
  store i64 0, ptr %i.cq, align 8, !tbaa !268
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %.0.i.i.i.i.i105) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit106

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit106: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  ret void

bb.bg:                                            ; preds = %.lr.ph256, %.thread226
  %.sroa.0175.0254 = phi ptr [ %i.dc, %.lr.ph256 ], [ %i.lo, %.thread226 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.il = load ptr, ptr %.sroa.0175.0254, align 8, !tbaa !210 ; 2 uses
  store ptr %i.il, ptr %i.b, align 8, !tbaa !527
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40, !noalias !1645
  %i.im = invoke noundef i64 @_ZNK8facebook5velox4core16ITypedExprHasherclEPKNS1_10ITypedExprE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef %i.il)
          to label %.noexc111 unwind label %bb.bl ; 2 uses

.noexc111:                                        ; preds = %bb.bg
  %i.in = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.im) ; 2 uses
  %i.io = lshr i64 %i.in, 24
  %i.ip = or i64 %i.io, 128
  %i.iq = add i64 %i.in, %i.im
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE19tryEmplaceValueImplIS9_JS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1428") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 %i.iq, i64 %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %.noexc111
  %i.ir = load i8, ptr %i.df, align 8, !tbaa !133, !range !131, !noalias !1646, !noundef !132
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40, !noalias !1645
  %i.is = trunc nuw i8 %i.ir to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br i1 %i.is, label %bb.bo, label %bb.bi, !prof !198

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40
  %i.it = load ptr, ptr %.sroa.0175.0254, align 8, !tbaa !210 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !1647
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !119, !noalias !1647
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !121, !noalias !1647
  %i.iy = ptrtoint ptr %i.iv to i64
  store i64 %i.iy, ptr %7, align 16, !noalias !1647
  %.sroa_idx3.i114 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ix, ptr %.sroa_idx3.i114, align 8, !noalias !1647
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.213, i64 30, i64 13, ptr nonnull %7)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !1647
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19EnforceDistinctNodeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISD_EESF_S8_SA_IKNS1_8PlanNodeEEE18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr nonnull @.str.213) #42
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %.noexc111, %bb.bg
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.bw

bb.bm:                                            ; preds = %bb.bi
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.bn:                                            ; preds = %bb.bj
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %23, align 8, !tbaa !119  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.bn
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !120
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.bm
  %.pn35 = phi { ptr, i32 } [ %i.ja, %bb.bm ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.jb, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bh
  %i.jh = load ptr, ptr %.sroa.0175.0254, align 8, !tbaa !210 ; 3 uses
  %i.ji = load i64, ptr %i.cq, align 8, !tbaa !268
  %i.jj = lshr i64 %i.ji, 8
  switch i64 %i.jj, label %bb.bq [
    i64 0, label %.thread221
    i64 1, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.jk = load i64, ptr %i.dg, align 8, !tbaa !533
  %i.jl = and i64 %i.jk, -8
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !527
  %i.jo = invoke noundef zeroext i1 @_ZNK8facebook5velox4core18ITypedExprComparerclEPKNS1_10ITypedExprES5_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %i.jh, ptr noundef %i.jn)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.bp
  br i1 %i.jo, label %.thread226, label %.thread221

bb.bq:                                            ; preds = %bb.bo
  %i.jp = invoke noundef i64 @_ZNK8facebook5velox4core16ITypedExprHasherclEPKNS1_10ITypedExprE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %i.jh)
          to label %.noexc56 unwind label %.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %bb.bq
  %i.jq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.jp) ; 2 uses
  %i.jr = lshr i64 %i.jq, 24
  %i.js = or i64 %i.jr, 128                       ; 2 uses
  %i.jt = add i64 %i.jq, %i.jp
  %i.ju = shl nuw nsw i64 %i.js, 1
  %i.jv = or disjoint i64 %i.ju, 1
  %i.jw = trunc nuw i64 %i.js to i8
  %i.jx = insertelement <16 x i8> poison, i8 %i.jw, i64 0
  %i.jy = shufflevector <16 x i8> %i.jx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.jz = load i64, ptr %i.cq, align 8, !tbaa !268
  %i.ka = and i64 %i.jz, 255
  %i.kb = shl nuw i64 1, %i.ka
  br label %.noexc58

.noexc58:                                         ; preds = %.noexc56, %.noexc61
  %.023.i.i253 = phi i64 [ %i.kb, %.noexc56 ], [ %i.kz, %.noexc61 ]
  %.025.i.i252 = phi i64 [ %i.jt, %.noexc56 ], [ %i.la, %.noexc61 ] ; 2 uses
  %i.kc = load ptr, ptr %15, align 8, !tbaa !532
  %i.kd = load i64, ptr %i.cq, align 8, !tbaa !268
  %i.ke = and i64 %i.kd, 255
  %i.kf = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i252, i64 range(i64 0, 256) %i.ke)
  %i.kg = getelementptr inbounds nuw [128 x i8], ptr %i.kc, i64 %i.kf ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ki, i32 0, i32 3, i32 1)
  %i.kj = load <16 x i8>, ptr %i.kg, align 16, !tbaa !120
  %i.kk = icmp eq <16 x i8> %i.kj, %i.jy
  %i.kl = bitcast <16 x i1> %i.kk to i16
  %i.km = and i16 %i.kl, 16383
  %i.kn = zext nneg i16 %i.km to i32
  %i.ko = icmp ne ptr %i.kg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.noexc60, %.noexc58
  %.sroa.0202.0 = phi i32 [ %i.kn, %.noexc58 ], [ %i.kv, %.noexc60 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.0202.0, 0
  br i1 %.not, label %bb.br, label %.noexc59

.noexc59:                                         ; preds = %.critedge.i.i
  %i.kp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0202.0, i1 true)
  %i.kq = zext nneg i32 %i.kp to i64
  call void @llvm.assume(i1 %i.ko)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !527
  %i.kt = invoke noundef zeroext i1 @_ZNK8facebook5velox4core18ITypedExprComparerclEPKNS1_10ITypedExprES5_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %i.jh, ptr noundef %i.ks)
          to label %.noexc60 unwind label %.loopexit

.noexc60:                                         ; preds = %.noexc59
  %i.ku = add nuw nsw i32 %.sroa.0202.0, 16383
  %i.kv = and i32 %i.ku, %.sroa.0202.0
  br i1 %i.kt, label %.thread226, label %.critedge.i.i, !prof !198, !llvm.loop !62

bb.br:                                            ; preds = %.critedge.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kg, i64 15
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !537
  %i.ky = icmp eq i8 %i.kx, 0
  br i1 %i.ky, label %.thread221, label %.noexc61, !prof !198

.noexc61:                                         ; preds = %bb.br
  %i.kz = add i64 %.023.i.i253, -1                ; 2 uses
  %i.la = add i64 %i.jv, %.025.i.i252
  %.not.i.i = icmp eq i64 %i.kz, 0
  br i1 %.not.i.i, label %.thread221, label %.noexc58, !llvm.loop !63

.thread221:                                       ; preds = %.noexc, %bb.bo, %bb.br, %.noexc61
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  %i.lb = load ptr, ptr %.sroa.0175.0254, align 8, !tbaa !210 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40, !noalias !1648
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !119, !noalias !1648
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !121, !noalias !1648
  %i.lg = ptrtoint ptr %i.ld to i64
  store i64 %i.lg, ptr %6, align 16, !noalias !1648
  %.sroa_idx3.i126 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.lf, ptr %.sroa_idx3.i126, align 8, !noalias !1648
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr nonnull @.str.215, i64 53, i64 13, ptr nonnull %6)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %.thread221
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !1648
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19EnforceDistinctNodeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISD_EESF_S8_SA_IKNS1_8PlanNodeEEE18veloxCheckFailArgs_5, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr nonnull @.str.215) #42
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  unreachable

.loopexit:                                        ; preds = %.noexc59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp:                               ; preds = %bb.bp, %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bu:                                            ; preds = %.thread221
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.bv:                                            ; preds = %bb.bs
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = load ptr, ptr %24, align 8, !tbaa !119  ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bv
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !120
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.bu
  %.pn = phi { ptr, i32 } [ %i.lh, %bb.bu ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.li, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  br label %bb.bw

.thread226:                                       ; preds = %.noexc60, %.noexc
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0175.0254, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.dd
  br i1 %i.lp, label %._crit_edge257.loopexit, label %bb.bg

bb.bw:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.bl
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %i.iz, %bb.bl ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lq = load ptr, ptr %22, align 8, !tbaa !532  ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 15
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !290
  %i.lt = icmp eq i8 %i.ls, -1
  br i1 %i.lt, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit134, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lu = load i64, ptr %i.db, align 8, !tbaa !268 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 14
  %i.lw = icmp ult i64 %i.lu, 256
  br i1 %i.lw, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lx = and i64 %i.lu, 255                      ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.ly, align 8, !tbaa !135
  store i64 %i.lx, ptr %i.db, align 8, !tbaa !268
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.lz = phi i64 [ %i.lu, %bb.bx ], [ %i.lx, %bb.by ] ; 2 uses
  %i.ma = load i8, ptr %i.lv, align 1, !tbaa !120
  %i.mb = icmp eq i64 %i.lz, 0
  %i.mc = shl i8 %i.ma, 3
  %i.md = and i8 %i.mc, 120
  %narrow.i.i.i.i132 = add nuw i8 %i.md, 16
  %i.me = zext i8 %narrow.i.i.i.i132 to i64
  %i.mf = shl i64 128, %i.lz
  %.0.i.i.i.i.i133 = select i1 %i.mb, i64 %i.me, i64 %i.mf
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %22, align 8, !tbaa !532
  store i64 0, ptr %i.db, align 8, !tbaa !268
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %.0.i.i.i.i.i133) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit134

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit134: ; preds = %bb.bw, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit134, %bb.w
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %.pn35.pn, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit134 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.dz, %bb.ac ], [ %i.fi, %bb.am ]
  %i.mg = load ptr, ptr %15, align 8, !tbaa !532  ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 15
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !290
  %i.mj = icmp eq i8 %i.mi, -1
  br i1 %i.mj, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit137, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mk = load i64, ptr %i.cq, align 8, !tbaa !268 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 14
  %i.mm = icmp ult i64 %i.mk, 256
  br i1 %i.mm, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mn = and i64 %i.mk, 255                      ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.mo, align 8, !tbaa !135
  store i64 %i.mn, ptr %i.cq, align 8, !tbaa !268
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.mp = phi i64 [ %i.mk, %bb.cb ], [ %i.mn, %bb.cc ] ; 2 uses
  %i.mq = load i8, ptr %i.ml, align 1, !tbaa !120
  %i.mr = icmp eq i64 %i.mp, 0
  %i.ms = shl i8 %i.mq, 3
  %i.mt = and i8 %i.ms, 120
  %narrow.i.i.i.i135 = add nuw i8 %i.mt, 16
  %i.mu = zext i8 %narrow.i.i.i.i135 to i64
  %i.mv = shl i64 128, %i.mp
  %.0.i.i.i.i.i136 = select i1 %i.mr, i64 %i.mu, i64 %i.mv
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !532
  store i64 0, ptr %i.cq, align 8, !tbaa !268
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %.0.i.i.i.i.i136) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit137

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit137: ; preds = %bb.ca, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit137, %bb.t, %bb.p
  %.pn52 = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.cp, %bb.t ], [ %.pn48.pn.pn, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEED2Ev.exit137 ] ; 2 uses
  %i.mw = load ptr, ptr %i.av, align 8, !tbaa !200 ; 3 uses
  %i.mx = load ptr, ptr %i.ci, align 8, !tbaa !202 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mw, %i.mx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ce, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.np, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i ], [ %i.mw, %bb.ce ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 4 uses
  %i.nb = load atomic i64, ptr %i.na acquire, align 8 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 4294967297
  %i.nd = trunc i64 %i.nb to i32                  ; 2 uses
  br i1 %i.nc, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.na, align 8, !tbaa !204
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  store i32 0, ptr %i.ne, align 4, !tbaa !205
  %i.nf = load ptr, ptr %i.mz, align 8, !tbaa !139
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8
  call void %i.nh(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #40, !inline_history !26
  %i.ni = load ptr, ptr %i.mz, align 8, !tbaa !139
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #40, !inline_history !26
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.nl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.nl, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nm = add nsw i32 %i.nd, -1
  store i32 %i.nm, ptr %i.na, align 8, !tbaa !186
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4core17MergeExchangeNode6createERKN5folly7dynamicEPv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.ci = load ptr, ptr %5, align 8, !tbaa !277   ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit35, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !306
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #43
  br label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit35

_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit35: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit35, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit35 ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4core18LocalPartitionNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !585
  %i.d = tail call { i64, ptr } @_ZN8facebook5velox4core18LocalPartitionNode6toNameENS2_4TypeE(i32 noundef %i.c) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.f, i64 noundef %i.e) ; 0 uses
  %i.h = load i32, ptr %i.b, align 8, !tbaa !585
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !586  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.o = load ptr, ptr %2, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !121
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !120
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !120
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.x

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !587, !range !131, !noundef !132
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.262, i64 noundef 12) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox4core18LocalPartitionNode6toNameENS2_4TypeE(i32 noundef %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1287", align 16 ; 4 uses
  %2 = alloca [2 x %"struct.std::pair.620"], align 8 ; 5 uses
  %3 = alloca %"struct.folly::HeterogeneousAccessHash.606", align 1 ; 4 uses
  %4 = alloca %"struct.folly::HeterogeneousAccessEqualTo.611", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.615", align 1 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv.exit, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) @constinit.496, i64 48, i1 false), !tbaa.struct !516
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames, ptr nonnull %2, i64 2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i unwind label %bb.d

_ZN5folly10F14FastMapIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames) #40
  br label %_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames) #40
  br label %common.resume

_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv.exit: ; preds = %bb.a, %bb.b, %_ZN5folly10F14FastMapIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames, i64 16), align 8, !tbaa !268 ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv.exit
  %i.h = sext i32 %0 to i64                       ; 2 uses
  %i.i = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.h) ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = or i64 %i.j, 128                         ; 2 uses
  %i.l = add nsw i64 %i.i, %i.h
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = trunc nuw i64 %i.k to i8
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = and i64 %i.f, 255                        ; 2 uses
  %i.s = shl nuw i64 1, %i.r
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames, i64 8), align 8, !tbaa !591
  %i.u = load ptr, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.022.i.i52 = phi i64 [ %i.s, %bb.e ], [ %i.aq, %bb.i ]
  %.024.i.i51 = phi i64 [ %i.l, %bb.e ], [ %i.ar, %bb.i ] ; 2 uses
  %i.v = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i51, i64 range(i64 0, 256) %i.r)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.q
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 4095
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = extractelement <16 x i8> %i.x, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %bb.f
  %.sroa.015.0 = phi i32 [ %i.ab, %bb.f ], [ %i.ah, %bb.g ] ; 4 uses
  %.not = icmp eq i32 %.sroa.015.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %i.af = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.0, i1 true)
  %i.ag = add nuw nsw i32 %.sroa.015.0, 4095
  %i.ah = and i32 %i.ag, %.sroa.015.0
  %i.ai = zext nneg i32 %i.af to i64
  call void @llvm.assume(i1 %i.ac)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.al ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !592
  %i.ao = icmp eq i32 %0, %i.an
  br i1 %i.ao, label %bb.l, label %.critedge.i.i, !prof !198, !llvm.loop !66

bb.h:                                             ; preds = %.critedge.i.i
  %i.ap = icmp eq i8 %i.ae, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %.022.i.i52, -1                 ; 2 uses
  %i.ar = add i64 %i.n, %.024.i.i51
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.f, !llvm.loop !67

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40, !noalias !1808
  %.sroa.03.0.insert.ext.i = zext i32 %0 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !1808
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40, !noalias !1808
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core18LocalPartitionNode6toNameENS2_4TypeEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.34) #42
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  unreachable

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !120
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !135
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !276
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4core18LocalPartitionNode9serializeEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 initializes((0, 4), (8, 32)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %3 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  tail call void @_ZNK8facebook5velox4core8PlanNode9serializeEv(ptr dead_on_unwind writable sret(%"struct.folly::dynamic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !585
  %i.c = invoke { i64, ptr } @_ZN8facebook5velox4core18LocalPartitionNode6toNameENS2_4TypeE(i32 noundef %i.b)
          to label %bb.b unwind label %bb.n       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 9 uses
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  store i32 6, ptr %2, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !116
  %i.h = icmp eq ptr %i.e, null
  %i.i = icmp ne i64 %i.d, 0
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.375) #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.d, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.d, 0
  br i1 %i.k, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.376) #42
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.d, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !122

.noexc9.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc11 unwind label %bb.n

.noexc11:                                         ; preds = %.noexc9.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #41
          to label %.noexc12 unwind label %bb.n   ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.n, ptr %i.f, align 8, !tbaa !119
  store i64 %i.d, ptr %i.g, align 8, !tbaa !120
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc12, %bb.c
  %i.o = phi ptr [ %i.n, %.noexc12 ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.e, align 1, !tbaa !120
  store i8 %i.p, ptr %i.o, align 1, !tbaa !120
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.e, i64 %i.d, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %i.q, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.d
  store i8 0, ptr %i.r, align 1, !tbaa !120
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.186, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.186, i64 4))
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.t = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %2) #40 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !587, !range !131, !noundef !132
  %i.w = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.263, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.263, i64 11))
          to label %bb.j unwind label %bb.q       ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %i.w, align 8, !tbaa !125
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %_ZN5folly7dynamicaSIbbEERS0_T_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #40
  store i32 2, ptr %i.w, align 8, !tbaa !125
  br label %_ZN5folly7dynamicaSIbbEERS0_T_.exit

_ZN5folly7dynamicaSIbbEERS0_T_.exit:              ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i8 %i.v, ptr %i.z, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !586 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !139
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN5folly7dynamicaSIbbEERS0_T_.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.264, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.264, i64 21))
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.af = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %3) #40 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc9.i.i, %.noexc.i.i, %.noexc.i, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox13ISerializable11deserializeINS0_4core21PartitionFunctionSpecEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPv:bb.a
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteIS2_EED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox4core21PartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !204
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !205
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv() unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [2 x %"struct.std::pair.620"], align 8 ; 5 uses
  %1 = alloca %"struct.folly::HeterogeneousAccessHash.606", align 1 ; 4 uses
  %2 = alloca %"struct.folly::HeterogeneousAccessEqualTo.611", align 1 ; 4 uses
  %3 = alloca %"class.std::allocator.615", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @constinit.496, i64 48, i1 false), !tbaa.struct !516
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames, ptr nonnull %0, i64 2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit unwind label %bb.e

_ZN5folly10F14FastMapIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly10F14FastMapIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames) #40
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEv()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox5Enums9invertMapINS0_4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap.630") align 8 @_ZZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_123localPartitionTypeNamesEvE6kNames)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.i = lshr i64 %i.h, 56
  %i.j = or i64 %i.i, 128                         ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.m = trunc nuw i64 %i.j to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.q = and i64 %i.p, 255                        ; 3 uses
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 8), align 8, !tbaa !596 ; 2 uses
  %i.t = load ptr, ptr @_ZZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %2, align 8
  %.fr63 = freeze i64 %i.v                        ; 3 uses
  %i.w = icmp eq i64 %.fr63, 0
  br i1 %i.w, label %.split58.us, label %.split58, !llvm.loop !69

.split58.us:                                      ; preds = %bb.g, %bb.i
  %.022.i.i57.us = phi i64 [ %i.ar, %bb.i ], [ %i.r, %bb.g ]
  %.024.i.i56.us = phi i64 [ %i.as, %bb.i ], [ %i.h, %bb.g ] ; 2 uses
  %i.x = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56.us, i64 range(i64 0, 256) %i.q)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.x ; 3 uses
  %i.z = load <16 x i8>, ptr %i.y, align 16       ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.z, %i.o
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = and i16 %i.ab, 4095                     ; 2 uses
  %.not4750.us = icmp eq i16 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.z, i64 15
  br i1 %.not4750.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split58.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.backedge.us.us, %.lr.ph.us
  %.sroa.011.051.us.us = phi i32 [ %i.ae, %.lr.ph.us ], [ %i.ap, %.critedge.i.i.backedge.us.us ] ; 3 uses
  %i.ah = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge.us.us, !prof !284

.critedge.i.i.backedge.us.us:                     ; preds = %bb.h
  %i.ao = add nuw nsw i32 %.sroa.011.051.us.us, 4095
  %i.ap = and i32 %i.ao, %.sroa.011.051.us.us     ; 2 uses
  %.not47.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not47.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %bb.h, !llvm.loop !69

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us, %.split58.us
  %i.aq = icmp eq i8 %i.ad, 0
  br i1 %i.aq, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.ar = add i64 %.022.i.i57.us, -1              ; 2 uses
  %i.as = add i64 %i.l, %.024.i.i56.us
  %.not.i.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58.us, !llvm.loop !70

.split58:                                         ; preds = %bb.g, %bb.k
  %.022.i.i57 = phi i64 [ %i.bq, %bb.k ], [ %i.r, %bb.g ]
  %.024.i.i56 = phi i64 [ %i.br, %bb.k ], [ %i.h, %bb.g ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56, i64 range(i64 0, 256) %i.q)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.at ; 3 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.o
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 4095                     ; 2 uses
  %.not4750 = icmp eq i16 %i.ay, 0
  %i.az = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not4750, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split58
  %i.ba = zext nneg i16 %i.ay to i32
  %i.bb = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.011.051 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bf, %.critedge.i.i.backedge ] ; 3 uses
  %i.bd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051, i1 true)
  %i.be = add nuw nsw i32 %.sroa.011.051, 4095
  %i.bf = and i32 %i.be, %.sroa.011.051           ; 2 uses
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr63, %i.bl
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !285
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.u, ptr %i.bn, i64 %.fr63)
  %i.bo = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %bb.j
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %.critedge.i.i._crit_edge.split, label %bb.j, !llvm.loop !69

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split58
  %i.bp = icmp eq i8 %i.az, 0
  br i1 %i.bp, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.k, !prof !198

bb.k:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.bq = add i64 %.022.i.i57, -1                 ; 2 uses
  %i.br = add i64 %i.l, %.024.i.i56
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58, !llvm.loop !70

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core18LocalPartitionNode9tryToTypeESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  resume { ptr, i32 } %i.bs

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.h
  %.pre-phi = phi i64 [ %i.al, %bb.h ], [ %i.bj, %.split ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !592
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.bw, 4294967296
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.critedge.i.i._crit_edge.split, %bb.k, %bb.i, %.critedge.i.i._crit_edge.split.us.us, %bb.f, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread
  %.sroa.2.0 = phi i64 [ %i.bx, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %.critedge.i.i._crit_edge.split.us.us ], [ 0, %bb.k ], [ 0, %.critedge.i.i._crit_edge.split ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox5Enums9invertMapINS0_4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastMap.630") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"struct.std::pair.863", align 8    ; 4 uses
  %4 = alloca %"class.folly::F14FastMap.630", align 16 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr null, ptr %4, align 16, !tbaa !597
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !596
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 16, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = lshr i64 %i.d, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.e, 0
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %.not.i.i.i.not, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.backedge

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit: ; preds = %bb.h
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !185
  %.pre36 = load i64, ptr %i.b, align 16, !tbaa !135
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre36, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ 0, %bb.a ]
  %i.k = phi <2 x ptr> [ %i.i, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !185
  store i64 %i.j, ptr %i.l, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

.backedge:                                        ; preds = %bb.h, %.lr.ph
  %.pn45 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.024.030, %bb.h ] ; 3 uses
  %.sroa.024.030 = getelementptr inbounds i8, ptr %.pn45, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.pn45, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !1839
  %i.n = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.backedge
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %i.n, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.024.030)
          to label %.noexc18 unwind label %bb.e

.noexc18:                                         ; preds = %.noexc
  %i.q = load i8, ptr %i.h, align 8, !tbaa !133, !range !131, !noalias !1840, !noundef !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !1839
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.b, !prof !198

bb.b:                                             ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1841
  %i.s = getelementptr inbounds i8, ptr %.pn45, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !285, !noalias !1841
  %i.u = load i64, ptr %i.m, align 8, !tbaa !283, !noalias !1841
  %i.v = ptrtoint ptr %i.t to i64
  store i64 %i.v, ptr %2, align 16, !noalias !1841
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa_idx3.i, align 8, !noalias !1841
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.405, i64 45, i64 13, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1841
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5Enums9invertMapINS0_4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.405) #42
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.noexc, %.backedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !119    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !120
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.i

bb.h:                                             ; preds = %.noexc18
  %i.ae = icmp eq ptr %i.f, %.sroa.024.030
  br i1 %i.ae, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, label %.backedge, !prof !122

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !596  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !290
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !268  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !268
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4core21PartitionedOutputNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_4KindERKSt6vectorISt10shared_ptrIKNS1_10ITypedExprEESaISG_EEibSD_IKNS1_21PartitionFunctionSpecEESD_IKNS0_7RowTypeEES8_SD_IKNS1_8PlanNodeEE:bb.a
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aj:                                            ; preds = %bb.af, %bb.ab
  %i.ec = load i32, ptr %i.y, align 8, !tbaa !600 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr %i.bm, align 8, !tbaa !241
  %i.ef = load ptr, ptr %i.bw, align 8, !tbaa !241
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %bb.ar, label %bb.al, !prof !198

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  %i.eh = invoke { i64, ptr } @_ZN8facebook5velox4core21PartitionedOutputNode6toNameENS2_4KindE(i32 noundef %i.ec)
          to label %bb.am unwind label %bb.ap     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.ei = extractvalue { i64, ptr } %i.eh, 0
  %i.ej = extractvalue { i64, ptr } %i.eh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40, !noalias !1850
  %i.ek = ptrtoint ptr %i.ej to i64
  store i64 %i.ek, ptr %10, align 16, !noalias !1850
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ei, ptr %.sroa_idx3.i, align 8, !noalias !1850
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.272, i64 51, i64 13, ptr nonnull %10)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !1850
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core21PartitionedOutputNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_4KindERKSt6vectorISt10shared_ptrIKNS1_10ITypedExprEESaISG_EEibSD_IKNS1_21PartitionFunctionSpecEESD_IKNS0_7RowTypeEES8_SD_IKNS1_8PlanNodeEEE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr nonnull @.str.272) #42
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.aq:                                            ; preds = %bb.an
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %15, align 8, !tbaa !119  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.aq
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !120
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.el, %bb.ap ], [ %i.em, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.as

bb.ar:                                            ; preds = %bb.ak, %bb.aj
  ret void

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.ai, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.dz, %bb.ae ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %i.eb, %bb.ai ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dg) #40
  %i.es = load ptr, ptr %i.ct, align 8, !tbaa !119 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cu
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.as
  %i.eu = load i64, ptr %i.cu, align 8, !tbaa !120
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core21PartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cp) #40
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core10ITypedExprEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bm) #40
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.x
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.dn, %bb.x ]
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #40
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.body
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.at ], [ %i.ap, %.body ]
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core8PlanNodeE, i64 16), ptr %0, align 8, !tbaa !139
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !119 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.p
  br i1 %i.ex, label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  %i.ey = load i64, ptr %i.p, align 8, !tbaa !120
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #43, !inline_history !234
  br label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit

_ZN8facebook5velox4core8PlanNodeD2Ev.exit:        ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn15.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox4core21PartitionedOutputNode6toNameENS2_4KindE(i32 noundef %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1287", align 16 ; 4 uses
  %2 = alloca [3 x %"struct.std::pair.675"], align 8 ; 5 uses
  %3 = alloca %"struct.folly::HeterogeneousAccessHash.661", align 1 ; 4 uses
  %4 = alloca %"struct.folly::HeterogeneousAccessEqualTo.666", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.670", align 1 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv.exit, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames) #40
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) @constinit.498, i64 72, i1 false), !tbaa.struct !603
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames, ptr nonnull %2, i64 3, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i unwind label %bb.d

_ZN5folly10F14FastMapIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames) #40
  br label %_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames) #40
  br label %common.resume

_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv.exit: ; preds = %bb.a, %bb.b, %_ZN5folly10F14FastMapIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit.i
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames, i64 16), align 8, !tbaa !268 ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv.exit
  %i.h = sext i32 %0 to i64                       ; 2 uses
  %i.i = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.h) ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = or i64 %i.j, 128                         ; 2 uses
  %i.l = add nsw i64 %i.i, %i.h
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = trunc nuw i64 %i.k to i8
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = and i64 %i.f, 255                        ; 2 uses
  %i.s = shl nuw i64 1, %i.r
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames, i64 8), align 8, !tbaa !607
  %i.u = load ptr, ptr @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.022.i.i52 = phi i64 [ %i.s, %bb.e ], [ %i.aq, %bb.i ]
  %.024.i.i51 = phi i64 [ %i.l, %bb.e ], [ %i.ar, %bb.i ] ; 2 uses
  %i.v = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i51, i64 range(i64 0, 256) %i.r)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.q
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 4095
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = extractelement <16 x i8> %i.x, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %bb.f
  %.sroa.015.0 = phi i32 [ %i.ab, %bb.f ], [ %i.ah, %bb.g ] ; 4 uses
  %.not = icmp eq i32 %.sroa.015.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %i.af = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.0, i1 true)
  %i.ag = add nuw nsw i32 %.sroa.015.0, 4095
  %i.ah = and i32 %i.ag, %.sroa.015.0
  %i.ai = zext nneg i32 %i.af to i64
  call void @llvm.assume(i1 %i.ac)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.al ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !608
  %i.ao = icmp eq i32 %0, %i.an
  br i1 %i.ao, label %bb.l, label %.critedge.i.i, !prof !198, !llvm.loop !72

bb.h:                                             ; preds = %.critedge.i.i
  %i.ap = icmp eq i8 %i.ae, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %.022.i.i52, -1                 ; 2 uses
  %i.ar = add i64 %i.n, %.024.i.i51
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.f, !llvm.loop !73

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40, !noalias !1853
  %.sroa.03.0.insert.ext.i = zext i32 %0 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !1853
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40, !noalias !1853
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core21PartitionedOutputNode6toNameENS2_4KindEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.34) #42
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  unreachable

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE4findIS8_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !120
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !135
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !276
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4core21PartitionedOutputNode9broadcastERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt10shared_ptrIKNS0_7RowTypeEES8_SB_IKNS1_8PlanNodeEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.645") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef align 8 %3, ptr noundef align 8 %4, ptr noundef align 8 %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %6 = alloca %"class.std::vector.44", align 8    ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.std::shared_ptr.648", align 8 ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 1, ptr %i.b, align 4, !tbaa !608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i8 0, ptr %i.c, align 1, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #41
          to label %bb.b unwind label %bb.q       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.f, align 8, !tbaa !204, !noalias !1858
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !205, !noalias !1858
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4core27GatherPartitionFunctionSpecESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !139, !noalias !1858
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook5velox4core27GatherPartitionFunctionSpecE, i64 16), ptr %i.h, align 8, !tbaa !139, !noalias !1858
  store ptr %i.e, ptr %i.d, align 8, !tbaa !184, !alias.scope !1858
  store ptr %i.h, ptr %7, align 8, !tbaa !610, !alias.scope !1858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  store ptr null, ptr %0, align 8, !tbaa !613, !alias.scope !1859
  %i.i = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #41
          to label %.noexc unwind label %bb.r     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.j, align 8, !tbaa !204, !noalias !1859
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 1, ptr %i.k, align 4, !tbaa !205, !noalias !1859
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4core21PartitionedOutputNodeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !139, !noalias !1859
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox4core21PartitionedOutputNodeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_4KindERSt6vectorISt10shared_ptrIKNS2_10ITypedExprEESaISH_EERibSE_INS2_27GatherPartitionFunctionSpecEESE_IKNS1_7RowTypeEERS9_SE_IKNS2_8PlanNodeEEEEvPT_DpOT0_(ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.c unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4core21PartitionedOutputNodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit17.i.i.i.i, !noalias !1859

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4core21PartitionedOutputNodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit17.i.i.i.i: ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 184) #43, !noalias !1859
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.n, align 8, !tbaa !184, !alias.scope !1859
  store ptr %i.l, ptr %0, align 8, !tbaa !614, !alias.scope !1859
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !184  ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox4core27GatherPartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !204
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !205
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #40, !inline_history !74
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #40, !inline_history !74
  br label %_ZNSt12__shared_ptrIN8facebook5velox4core27GatherPartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt12__shared_ptrIN8facebook5velox4core27GatherPartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #40
  br label %_ZNSt12__shared_ptrIN8facebook5velox4core27GatherPartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox4core27GatherPartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.ae = load ptr, ptr %6, align 8, !tbaa !323   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !322 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core10ITypedExprEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN8facebook5velox4core27GatherPartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core10ITypedExprEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core10ITypedExprEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt12__shared_ptrIN8facebook5velox4core27GatherPartitionFunctionSpecELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core10ITypedExprEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aj, align 8, !tbaa !204
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !205
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #40, !inline_history !31
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4core20EnforceSingleRowNode6createERKN5folly7dynamicEPv:bb.a

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i9 = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox4core20EnforceSingleRowNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.w = load ptr, ptr %3, align 8, !tbaa !119    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !120
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4core20EnforceSingleRowNodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.c, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4core20EnforceSingleRowNodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #40
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.ad = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.k
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !120
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv() unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [3 x %"struct.std::pair.675"], align 8 ; 5 uses
  %1 = alloca %"struct.folly::HeterogeneousAccessHash.661", align 1 ; 4 uses
  %2 = alloca %"struct.folly::HeterogeneousAccessEqualTo.666", align 1 ; 4 uses
  %3 = alloca %"class.std::allocator.670", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames) #40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @constinit.498, i64 72, i1 false), !tbaa.struct !603
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS8_SC_EEmRKNS_23HeterogeneousAccessHashIS8_vEERKNS_26HeterogeneousAccessEqualToIS8_vEERKSaISK_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames, ptr nonnull %0, i64 3, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5folly10F14FastMapIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit unwind label %bb.e

_ZN5folly10F14FastMapIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly10F14FastMapIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S9_EEECI2NS_3f146detail11F14BasicMapINSK_21VectorContainerPolicyIS5_S9_vvvSt17integral_constantIbLb1EEEEEEESt16initializer_listISG_EmRKSB_RKSD_RKSH_.exit, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames) #40
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEv()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox5Enums9invertMapINS0_4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap.685") align 8 @_ZZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox4core12_GLOBAL__N_118partitionKindNamesEvE6kNames)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev, ptr nonnull @_ZZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.i = lshr i64 %i.h, 56
  %i.j = or i64 %i.i, 128                         ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.m = trunc nuw i64 %i.j to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 16), align 8, !tbaa !268
  %i.q = and i64 %i.p, 255                        ; 3 uses
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, i64 8), align 8, !tbaa !618 ; 2 uses
  %i.t = load ptr, ptr @_ZZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues, align 8 ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %2, align 8
  %.fr63 = freeze i64 %i.v                        ; 3 uses
  %i.w = icmp eq i64 %.fr63, 0
  br i1 %i.w, label %.split58.us, label %.split58, !llvm.loop !75

.split58.us:                                      ; preds = %bb.g, %bb.i
  %.022.i.i57.us = phi i64 [ %i.ar, %bb.i ], [ %i.r, %bb.g ]
  %.024.i.i56.us = phi i64 [ %i.as, %bb.i ], [ %i.h, %bb.g ] ; 2 uses
  %i.x = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56.us, i64 range(i64 0, 256) %i.q)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.x ; 3 uses
  %i.z = load <16 x i8>, ptr %i.y, align 16       ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.z, %i.o
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = and i16 %i.ab, 4095                     ; 2 uses
  %.not4750.us = icmp eq i16 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.z, i64 15
  br i1 %.not4750.us, label %.critedge.i.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split58.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.backedge.us.us, %.lr.ph.us
  %.sroa.011.051.us.us = phi i32 [ %i.ae, %.lr.ph.us ], [ %i.ap, %.critedge.i.i.backedge.us.us ] ; 3 uses
  %i.ah = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge.us.us, !prof !284

.critedge.i.i.backedge.us.us:                     ; preds = %bb.h
  %i.ao = add nuw nsw i32 %.sroa.011.051.us.us, 4095
  %i.ap = and i32 %i.ao, %.sroa.011.051.us.us     ; 2 uses
  %.not47.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not47.us.us, label %.critedge.i.i._crit_edge.split.us.us, label %bb.h, !llvm.loop !75

.critedge.i.i._crit_edge.split.us.us:             ; preds = %.critedge.i.i.backedge.us.us, %.split58.us
  %i.aq = icmp eq i8 %i.ad, 0
  br i1 %i.aq, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.i, !prof !198

bb.i:                                             ; preds = %.critedge.i.i._crit_edge.split.us.us
  %i.ar = add i64 %.022.i.i57.us, -1              ; 2 uses
  %i.as = add i64 %i.l, %.024.i.i56.us
  %.not.i.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58.us, !llvm.loop !76

.split58:                                         ; preds = %bb.g, %bb.k
  %.022.i.i57 = phi i64 [ %i.bq, %bb.k ], [ %i.r, %bb.g ]
  %.024.i.i56 = phi i64 [ %i.br, %bb.k ], [ %i.h, %bb.g ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i.i56, i64 range(i64 0, 256) %i.q)
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.at ; 3 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.o
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 4095                     ; 2 uses
  %.not4750 = icmp eq i16 %i.ay, 0
  %i.az = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not4750, label %.critedge.i.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split58
  %i.ba = zext nneg i16 %i.ay to i32
  %i.bb = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.011.051 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bf, %.critedge.i.i.backedge ] ; 3 uses
  %i.bd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.011.051, i1 true)
  %i.be = add nuw nsw i32 %.sroa.011.051, 4095
  %i.bf = and i32 %i.be, %.sroa.011.051           ; 2 uses
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr63, %i.bl
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !285
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.u, ptr %i.bn, i64 %.fr63)
  %i.bo = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %bb.j
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %.critedge.i.i._crit_edge.split, label %bb.j, !llvm.loop !75

.critedge.i.i._crit_edge.split:                   ; preds = %.critedge.i.i.backedge, %.split58
  %i.bp = icmp eq i8 %i.az, 0
  br i1 %i.bp, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.k, !prof !198

bb.k:                                             ; preds = %.critedge.i.i._crit_edge.split
  %i.bq = add i64 %.022.i.i57, -1                 ; 2 uses
  %i.br = add i64 %i.l, %.024.i.i56
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split58, !llvm.loop !76

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4core21PartitionedOutputNode9tryToKindESt17basic_string_viewIcSt11char_traitsIcEEE7kValues) #40
  resume { ptr, i32 } %i.bs

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.h
  %.pre-phi = phi i64 [ %i.al, %bb.h ], [ %i.bj, %.split ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !608
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.bw, 4294967296
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.critedge.i.i._crit_edge.split, %bb.k, %bb.i, %.critedge.i.i._crit_edge.split.us.us, %bb.f, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread
  %.sroa.2.0 = phi i64 [ %i.bx, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %.critedge.i.i._crit_edge.split.us.us ], [ 0, %bb.k ], [ 0, %.critedge.i.i._crit_edge.split ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox5Enums9invertMapINS0_4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastMap.685") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %3 = alloca %"struct.std::pair.863", align 8    ; 4 uses
  %4 = alloca %"class.folly::F14FastMap.685", align 16 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr null, ptr %4, align 16, !tbaa !619
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !618
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 16, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = lshr i64 %i.d, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.e, 0
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %.not.i.i.i.not, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.backedge

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit: ; preds = %bb.h
  %i.i = load <2 x ptr>, ptr %4, align 16, !tbaa !185
  %.pre36 = load i64, ptr %i.b, align 16, !tbaa !135
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre36, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ 0, %bb.a ]
  %i.k = phi <2 x ptr> [ %i.i, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit ], [ <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !185
  store i64 %i.j, ptr %i.l, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

.backedge:                                        ; preds = %bb.h, %.lr.ph
  %.pn45 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.024.030, %bb.h ] ; 3 uses
  %.sroa.024.030 = getelementptr inbounds i8, ptr %.pn45, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.pn45, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !1884
  %i.n = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.backedge
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %i.n, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.024.030)
          to label %.noexc18 unwind label %bb.e

.noexc18:                                         ; preds = %.noexc
  %i.q = load i8, ptr %i.h, align 8, !tbaa !133, !range !131, !noalias !1885, !noundef !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !1884
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.b, !prof !198

bb.b:                                             ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1886
  %i.s = getelementptr inbounds i8, ptr %.pn45, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !285, !noalias !1886
  %i.u = load i64, ptr %i.m, align 8, !tbaa !283, !noalias !1886
  %i.v = ptrtoint ptr %i.t to i64
  store i64 %i.v, ptr %2, align 16, !noalias !1886
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa_idx3.i, align 8, !noalias !1886
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.405, i64 45, i64 13, ptr nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1886
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5Enums9invertMapINS0_4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NSA_23HeterogeneousAccessHashISC_vEENSA_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.405) #42
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.noexc, %.backedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !119    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !120
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.i

bb.h:                                             ; preds = %.noexc18
  %i.ae = icmp eq ptr %i.f, %.sroa.024.030
  br i1 %i.ae, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit.loopexit, label %.backedge, !prof !122

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !290
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !268  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !268
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  resume { ptr, i32 } %i.ez

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !133
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.not.i64 = icmp eq i64 %i.fa, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !671 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fd = sub i64 0, %i.fc
  %i.fe = and i64 %i.fd, -8
  %i.ff = mul i64 %i.fa, 24
  %i.fg = sub i64 %i.ff, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #30

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #30

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2176 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2177, !nonnull !132
  %i.d = load i8, ptr %i.c, align 1, !tbaa !133, !range !131, !noundef !132
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2178, !nonnull !132, !align !656
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2179, !nonnull !132, !align !656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2180, !nonnull !132, !align !656
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2181, !nonnull !132, !align !656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2182, !nonnull !132, !align !656
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2179, !nonnull !132, !align !656
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !274
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2183, !nonnull !132, !align !656
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !135 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !268
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !268
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !2177
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !133, !range !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2178
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !135
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2184, !nonnull !132, !align !656
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2185, !nonnull !132, !align !656
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2186, !nonnull !132, !align !656
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !672
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS7_SB_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #44
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS8_JRKS8_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !274
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !274  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.041.0, 4095
  %i.y = and i32 %i.x, %.sroa.041.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !669
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !186
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %4, align 4, !tbaa !275
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !275
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !198, !llvm.loop !10

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread65, label %bb.f, !prof !198

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i76, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !11

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi85, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre81 = load ptr, ptr %i.at, align 8, !tbaa !274
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !120
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ba, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.029                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bo, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2187

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !688
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core15AggregationNode4StepESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !120
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !268
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !186
  %i.ce = load ptr, ptr %1, align 8, !tbaa !669, !nonnull !132, !noundef !132
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %5, align 4, !tbaa !275
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2189
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !689
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !268
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !281
  %.pre107 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !281  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %4, align 8
  %.fr92 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr92, 0
  br i1 %i.q, label %.split87.us, label %.split87, !llvm.loop !12

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.022.i86.us = phi i64 [ %i.al, %bb.d ], [ %i.j, %bb.b ]
  %.024.i85.us = phi i64 [ %i.am, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.y = zext nneg i16 %i.w to i32
  %i.z = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.041.078.us.us = phi i32 [ %i.y, %.lr.ph.us ], [ %i.aj, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !186
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.ai = add nuw nsw i32 %.sroa.041.078.us.us, 4095
  %i.aj = and i32 %i.ai, %.sroa.041.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !12

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ak = icmp eq i8 %i.x, 0
  br i1 %i.ak, label %.thread67, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.al = add i64 %.022.i86.us, -1                ; 2 uses
  %i.am = add i64 %i.e, %.024.i85.us
  %.not.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !13

.split87:                                         ; preds = %bb.b, %bb.f
  %.022.i86 = phi i64 [ %i.bk, %bb.f ], [ %i.j, %bb.b ]
  %.024.i85 = phi i64 [ %i.bl, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.ap, %i.h
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 4095                     ; 2 uses
  %.not6977 = icmp eq i16 %i.as, 0
  %i.at = extractelement <16 x i8> %i.ap, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.au = zext nneg i16 %i.as to i32
  %i.av = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.078 = phi i32 [ %i.au, %.lr.ph ], [ %i.az, %.critedge.i.backedge ] ; 3 uses
  %i.ax = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078, i1 true)
  %i.ay = add nuw nsw i32 %.sroa.041.078, 4095
  %i.az = and i32 %i.ay, %.sroa.041.078           ; 2 uses
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !186
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr92, %i.bf
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !285
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.bh, i64 %.fr92)
  %i.bi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.az, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !12

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bj = icmp eq i8 %i.at, 0
  br i1 %i.bj, label %.thread67, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bk = add i64 %.022.i86, -1                   ; 2 uses
  %i.bl = add i64 %i.e, %.024.i85
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !13

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.ac, %bb.c ], [ %i.ba, %.split ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.c ], [ %i.an, %.split ]
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %..thread67_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread67_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ]
  %i.bq = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.0.copyload.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bt = add i64 %.pre-phi108, -1
  %i.bu = lshr i64 %i.bt, 12
  %i.bv = add nuw nsw i64 %i.bu, 1
  %i.bw = mul i64 %i.bv, %i.bs                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.bw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.bs, i64 noundef %i.bw)
  %.pre104 = load ptr, ptr %i.bx, align 8, !tbaa !281
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre109 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre109, %bb.g ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bz = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !120
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = and i16 %i.cd, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.ce, 4095
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cf = shl i64 %3, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ch = phi i64 [ %i.bz, %bb.h ], [ %i.cn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 15 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.ck, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cm = add i64 %i.cg, %.029                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cm, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.cn ; 3 uses
  %i.cp = load <16 x i8>, ptr %i.co, align 16     ; 2 uses
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.cs, 4095
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !2190

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.ct = extractelement <16 x i8> %i.cp, i64 14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  %i.cv = add i8 %i.ct, 16
  store i8 %i.cv, ptr %i.cu, align 2, !tbaa !688
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ce, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cs, %bb.k ]
  %.1 = phi ptr [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64              ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !120
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.db = trunc i64 %3 to i8
  store i8 %i.db, ptr %i.cy, align 1, !tbaa !120
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cx ; 2 uses
  %i.de = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.a, align 8, !tbaa !268
  %i.dg = lshr i64 %i.df, 8                       ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !186
  %i.di = load ptr, ptr %1, align 8, !tbaa !287, !nonnull !132, !noundef !132
  %i.dj = and i64 %i.dg, 4294967295
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !689
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %6, align 4, !tbaa !275
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2192
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.do = and i64 %i.dn, -256
  %i.dp = add i64 %i.do, 256
  %i.dq = and i64 %i.dn, 255
  %i.dr = or disjoint i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink134 = phi ptr [ %i.bp, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core15AggregationNode4StepEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ds, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285  ; 7 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !283    ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 3 uses
  %i.e = icmp ult i64 %i.c, 17
  br i1 %i.e, label %bb.b, label %bb.f, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = xor i64 %i.c, 4766890152743124950        ; 2 uses
  %i.h = icmp samesign ugt i64 %i.c, 7
  br i1 %i.h, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.b, align 1
  %.0.copyload.i.i15 = load i64, ptr %i.i, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -4
  %.0.copyload.i.i16 = load i32, ptr %i.b, align 1
  %i.k = zext i32 %.0.copyload.i.i16 to i64
  %.0.copyload.i.i17 = load i32, ptr %i.j, align 1
  %i.l = zext i32 %.0.copyload.i.i17 to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit, label %bb.e

end_hunk_9
begin_hunk_10_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.bb = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bb, label %middle.block73, label %vector.body64, !llvm.loop !2238

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.ap, %n.vec63
  br i1 %cmp.n74, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader77

.lr.ph.i.i.i17.preheader77:                       ; preds = %vector.memcheck46, %.lr.ph.i.i.i17.preheader, %middle.block73
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck46 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block73 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.az, %middle.block73 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader77, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader77 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader77 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !185, !alias.scope !2243, !noalias !2242
  store ptr null, ptr %i.bc, align 8, !tbaa !184, !alias.scope !2243, !noalias !2242
  store <2 x ptr> %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !185, !alias.scope !2242, !noalias !2243
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !239, !alias.scope !2243, !noalias !2242
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2239

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block73, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %middle.block73 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !214
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #43
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !219
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !213
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13ISerializable22deserializeAsUniquePtrINS0_4TypeEvEEDaRKN5folly7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic2atENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nonnull @.str.339, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.339, i64 4))
  call void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11Ev()
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  invoke void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE14CreateFunctionISH_EclERKS7_SG_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !120
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !696
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.k = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.n = load i64, ptr %i.l, align 8, !tbaa !120
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEPvEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #32 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !698
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !641  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !121  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !121
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.p = load ptr, ptr %1, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17: ; preds = %bb.b, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.s = lshr i64 %i.r, 56
  %i.t = or i64 %i.s, 128                         ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = trunc nuw i64 %i.t to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = load i64, ptr %i.a, align 8, !tbaa !268
  %i.aa = and i64 %i.z, 255                       ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !702
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i39 = phi i64 [ %i.ab, %bb.d ], [ %i.bn, %bb.f ]
  %.025.i38 = phi i64 [ %i.r, %bb.d ], [ %i.bo, %bb.f ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38, i64 range(i64 0, 256) %i.aa)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.af, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.y
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 16383                    ; 2 uses
  %.not36 = icmp eq i16 %i.al, 0
  %i.am = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not36, label %.critedge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.an = zext nneg i16 %i.al to i32              ; 2 uses
  %i.ao = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !121
  %.fr40 = freeze i64 %i.ap                       ; 3 uses
  %i.aq = icmp eq i64 %.fr40, 0
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !83

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.backedge.us
  %.sroa.013.037.us = phi i32 [ %i.az, %.critedge.i.backedge.us ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037.us, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !641
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge.us, !prof !284

.critedge.i.backedge.us:                          ; preds = %.lr.ph.split.us
  %i.ay = add nuw nsw i32 %.sroa.013.037.us, 16383
  %i.az = and i32 %i.ay, %.sroa.013.037.us        ; 2 uses
  %.not.us = icmp eq i32 %i.az, 0
  br i1 %.not.us, label %.critedge.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !83

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.013.037 = phi i32 [ %i.bc, %.critedge.i.backedge ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.013.037, 16383
  %i.bc = and i32 %i.bb, %.sroa.013.037           ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !641 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !121
  %i.bi = icmp eq i64 %.fr40, %i.bh
  br i1 %i.bi, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %.lr.ph.split
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !119
  %i.bk = load ptr, ptr %1, align 8, !tbaa !119
  %bcmp.i.i.i9 = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %.fr40)
  %i.bl = icmp eq i32 %bcmp.i.i.i9, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.critedge.i._crit_edge, label %.lr.ph.split, !llvm.loop !83

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %.critedge.i.backedge.us, %bb.e
  %i.bm = icmp eq i8 %i.am, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge
  %i.bn = add i64 %.023.i39, -1                   ; 2 uses
  %i.bo = add i64 %i.v, %.025.i38
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.e, !llvm.loop !84

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit: ; preds = %.critedge.i._crit_edge, %bb.f, %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.a
  %.sroa.012.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17 ], [ true, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ true, %.lr.ph.split.us ], [ true, %.split ], [ false, %bb.f ], [ false, %.critedge.i._crit_edge ]
  ret i1 %.sroa.012.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEPvEE14CreateFunctionISH_EclERKS7_SF_SG_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.898") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2249, !nonnull !132, !align !656 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = lshr i64 %i.d, 8
  switch i64 %i.e, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !698
  %i.h = and i64 %i.g, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !641  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !121  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !121
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.r = load ptr, ptr %2, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %i.l)
  %i.s = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.s, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.t = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.u = lshr i64 %i.t, 56
  %i.v = or i64 %i.u, 128                         ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = trunc nuw i64 %i.v to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !268
  %i.ac = and i64 %i.ab, 255                      ; 2 uses
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !702
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i.i65 = phi i64 [ %i.ad, %bb.d ], [ %i.bp, %bb.f ]
  %.025.i.i64 = phi i64 [ %i.t, %bb.d ], [ %i.bq, %bb.f ] ; 2 uses
  %i.ag = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i64, i64 range(i64 0, 256) %i.ac)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ae, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aj, i32 0, i32 3, i32 1)
  %i.ak = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.al = icmp eq <16 x i8> %i.ak, %i.aa
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = and i16 %i.am, 16383                    ; 2 uses
  %.not58 = icmp eq i16 %i.an, 0
  %i.ao = extractelement <16 x i8> %i.ak, i64 15
  br i1 %.not58, label %.critedge.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = zext nneg i16 %i.an to i32              ; 2 uses
  %i.aq = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i64, ptr %i.af, align 8, !tbaa !121
  %.fr66 = freeze i64 %i.ar                       ; 3 uses
  %i.as = icmp eq i64 %.fr66, 0
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !83

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.i.backedge.us
  %.sroa.016.059.us = phi i32 [ %i.bb, %.critedge.i.i.backedge.us ], [ %i.ap, %.lr.ph ] ; 3 uses
  %i.at = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.016.059.us, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !641 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !121
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %.critedge.i.i.backedge.us, !prof !284

.critedge.i.i.backedge.us:                        ; preds = %.lr.ph.split.us
  %i.ba = add nuw nsw i32 %.sroa.016.059.us, 16383
  %i.bb = and i32 %i.ba, %.sroa.016.059.us        ; 2 uses
  %.not.us = icmp eq i32 %i.bb, 0
  br i1 %.not.us, label %.critedge.i.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !83

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.016.059 = phi i32 [ %i.be, %.critedge.i.i.backedge ], [ %i.ap, %.lr.ph ] ; 3 uses
  %i.bc = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.016.059, i1 true)
  %i.bd = add nuw nsw i32 %.sroa.016.059, 16383
  %i.be = and i32 %i.bd, %.sroa.016.059           ; 2 uses
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !641 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !121
  %i.bk = icmp eq i64 %.fr66, %i.bj
  br i1 %i.bk, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %.lr.ph.split
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !119
  %i.bm = load ptr, ptr %2, align 8, !tbaa !119
  %bcmp.i.i.i4 = tail call i32 @bcmp(ptr %i.bm, ptr %i.bl, i64 %.fr66)
  %i.bn = icmp eq i32 %bcmp.i.i.i4, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %.critedge.i.i._crit_edge, label %.lr.ph.split, !llvm.loop !83

.critedge.i.i._crit_edge:                         ; preds = %.critedge.i.i.backedge, %.critedge.i.i.backedge.us, %bb.e
  %i.bo = icmp eq i8 %i.ao, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i.i._crit_edge
  %i.bp = add i64 %.023.i.i65, -1                 ; 2 uses
  %i.bq = add i64 %i.x, %.025.i.i64
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread, label %bb.e, !llvm.loop !84

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread: ; preds = %bb.f, %.critedge.i.i._crit_edge, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43: ; preds = %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  %i.br = phi ptr [ %i.j, %bb.c ], [ %i.j, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ %i.aw, %.lr.ph.split.us ], [ %i.bh, %.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !185, !noalias !2250
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !251, !noalias !2250
  %.not.i.i8 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i8, label %bb.g, label %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEclES9_SA_.exit

bb.g:                                             ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43
  tail call void @_ZSt25__throw_bad_function_callv() #42, !noalias !2250
  unreachable

_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEclES9_SA_.exit: ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !635, !noalias !2250
  call void %i.bw(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.898") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !2246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEclES9_SA_.exit, %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE4findERKS9_.exit.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11Ev() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #32 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !704
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !706  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !121  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !121
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.p = load ptr, ptr %1, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17: ; preds = %bb.b, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.s = lshr i64 %i.r, 56
  %i.t = or i64 %i.s, 128                         ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = trunc nuw i64 %i.t to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = load i64, ptr %i.a, align 8, !tbaa !268
  %i.aa = and i64 %i.z, 255                       ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !710
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i39 = phi i64 [ %i.ab, %bb.d ], [ %i.bn, %bb.f ]
  %.025.i38 = phi i64 [ %i.r, %bb.d ], [ %i.bo, %bb.f ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38, i64 range(i64 0, 256) %i.aa)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.af, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.y
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 16383                    ; 2 uses
  %.not36 = icmp eq i16 %i.al, 0
  %i.am = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not36, label %.critedge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.an = zext nneg i16 %i.al to i32              ; 2 uses
  %i.ao = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !121
  %.fr40 = freeze i64 %i.ap                       ; 3 uses
  %i.aq = icmp eq i64 %.fr40, 0
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !85

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.backedge.us
  %.sroa.013.037.us = phi i32 [ %i.az, %.critedge.i.backedge.us ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037.us, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !706
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %.critedge.i.backedge.us, !prof !284

.critedge.i.backedge.us:                          ; preds = %.lr.ph.split.us
  %i.ay = add nuw nsw i32 %.sroa.013.037.us, 16383
  %i.az = and i32 %i.ay, %.sroa.013.037.us        ; 2 uses
  %.not.us = icmp eq i32 %i.az, 0
  br i1 %.not.us, label %.critedge.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !85

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.013.037 = phi i32 [ %i.bc, %.critedge.i.backedge ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.013.037, 16383
  %i.bc = and i32 %i.bb, %.sroa.013.037           ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !706 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !121
  %i.bi = icmp eq i64 %.fr40, %i.bh
  br i1 %i.bi, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %.lr.ph.split
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !119
  %i.bk = load ptr, ptr %1, align 8, !tbaa !119
  %bcmp.i.i.i9 = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %.fr40)
  %i.bl = icmp eq i32 %bcmp.i.i.i9, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.critedge.i._crit_edge, label %.lr.ph.split, !llvm.loop !85

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %.critedge.i.backedge.us, %bb.e
  %i.bm = icmp eq i8 %i.am, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge
  %i.bn = add i64 %.023.i39, -1                   ; 2 uses
  %i.bo = add i64 %i.v, %.025.i38
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit, label %bb.e, !llvm.loop !86

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SL_EEEEERKT_.exit: ; preds = %.critedge.i._crit_edge, %bb.f, %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit, %bb.a
  %.sroa.012.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit.thread17 ], [ true, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit ], [ true, %.lr.ph.split.us ], [ true, %.split ], [ false, %bb.f ], [ false, %.critedge.i._crit_edge ]
  ret i1 %.sroa.012.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE14CreateFunctionISG_EclERKS7_SF_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.898") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2256, !nonnull !132, !align !656 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !268
  %i.d = lshr i64 %i.c, 8
  switch i64 %i.d, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !704
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !706  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !121  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.q = load ptr, ptr %2, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.k)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.s = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.t = lshr i64 %i.s, 56
  %i.u = or i64 %i.t, 128                         ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = trunc nuw i64 %i.u to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !268
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !710
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i.i64 = phi i64 [ %i.ac, %bb.d ], [ %i.bo, %bb.f ]
  %.025.i.i63 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.f ] ; 2 uses
  %i.af = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i63, i64 range(i64 0, 256) %i.ab)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.ad, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ag, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.z
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = and i16 %i.al, 16383                    ; 2 uses
  %.not57 = icmp eq i16 %i.am, 0
  %i.an = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not57, label %.critedge.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = zext nneg i16 %i.am to i32              ; 2 uses
  %i.ap = icmp ne ptr %i.ag, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !121
  %.fr65 = freeze i64 %i.aq                       ; 3 uses
  %i.ar = icmp eq i64 %.fr65, 0
  br i1 %i.ar, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !85

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.i.backedge.us
  %.sroa.015.058.us = phi i32 [ %i.ba, %.critedge.i.i.backedge.us ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058.us, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !706 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !121
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge.us, !prof !284

.critedge.i.i.backedge.us:                        ; preds = %.lr.ph.split.us
  %i.az = add nuw nsw i32 %.sroa.015.058.us, 16383
  %i.ba = and i32 %i.az, %.sroa.015.058.us        ; 2 uses
  %.not.us = icmp eq i32 %i.ba, 0
  br i1 %.not.us, label %.critedge.i.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !85

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.015.058 = phi i32 [ %i.bd, %.critedge.i.i.backedge ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.bb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058, i1 true)
  %i.bc = add nuw nsw i32 %.sroa.015.058, 16383
  %i.bd = and i32 %i.bc, %.sroa.015.058           ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !706 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !121
  %i.bj = icmp eq i64 %.fr65, %i.bi
  br i1 %i.bj, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %.lr.ph.split
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !119
  %i.bl = load ptr, ptr %2, align 8, !tbaa !119
  %bcmp.i.i.i3 = tail call i32 @bcmp(ptr %i.bl, ptr %i.bk, i64 %.fr65)
  %i.bm = icmp eq i32 %bcmp.i.i.i3, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.critedge.i.i._crit_edge, label %.lr.ph.split, !llvm.loop !85

.critedge.i.i._crit_edge:                         ; preds = %.critedge.i.i.backedge, %.critedge.i.i.backedge.us, %bb.e
  %i.bn = icmp eq i8 %i.an, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i.i._crit_edge
  %i.bo = add i64 %.023.i.i64, -1                 ; 2 uses
  %i.bp = add i64 %i.w, %.025.i.i63
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.e, !llvm.loop !86

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread: ; preds = %bb.f, %.critedge.i.i._crit_edge, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42: ; preds = %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit
  %i.bq = phi ptr [ %i.i, %bb.c ], [ %i.i, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SK_E.exit ], [ %i.av, %.lr.ph.split.us ], [ %i.bg, %.split ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !251, !noalias !2257
  %.not.i.i7 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i7, label %bb.g, label %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEclES9_.exit

bb.g:                                             ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  tail call void @_ZSt25__throw_bad_function_callv() #42, !noalias !2257
  unreachable

_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEclES9_.exit: ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2259, !noalias !2257
  tail call void %i.bv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.898") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %3), !inline_history !2253
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEclES9_.exit, %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11Ev() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE3HasERKS7_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #32 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !712
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !714  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !121  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !121
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.p = load ptr, ptr %1, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17: ; preds = %bb.b, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.s = lshr i64 %i.r, 56
  %i.t = or i64 %i.s, 128                         ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = trunc nuw i64 %i.t to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = load i64, ptr %i.a, align 8, !tbaa !268
  %i.aa = and i64 %i.z, 255                       ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !718
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i39 = phi i64 [ %i.ab, %bb.d ], [ %i.bn, %bb.f ]
  %.025.i38 = phi i64 [ %i.r, %bb.d ], [ %i.bo, %bb.f ] ; 2 uses
  %i.ae = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38, i64 range(i64 0, 256) %i.aa)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.af, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.y
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 16383                    ; 2 uses
  %.not36 = icmp eq i16 %i.al, 0
  %i.am = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not36, label %.critedge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.an = zext nneg i16 %i.al to i32              ; 2 uses
  %i.ao = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !121
  %.fr40 = freeze i64 %i.ap                       ; 3 uses
  %i.aq = icmp eq i64 %.fr40, 0
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !87

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.backedge.us
  %.sroa.013.037.us = phi i32 [ %i.az, %.critedge.i.backedge.us ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037.us, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !714
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge.us, !prof !284

.critedge.i.backedge.us:                          ; preds = %.lr.ph.split.us
  %i.ay = add nuw nsw i32 %.sroa.013.037.us, 16383
  %i.az = and i32 %i.ay, %.sroa.013.037.us        ; 2 uses
  %.not.us = icmp eq i32 %i.az, 0
  br i1 %.not.us, label %.critedge.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !87

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.013.037 = phi i32 [ %i.bc, %.critedge.i.backedge ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.013.037, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.013.037, 16383
  %i.bc = and i32 %i.bb, %.sroa.013.037           ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !714 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !121
  %i.bi = icmp eq i64 %.fr40, %i.bh
  br i1 %i.bi, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %.lr.ph.split
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !119
  %i.bk = load ptr, ptr %1, align 8, !tbaa !119
  %bcmp.i.i.i9 = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %.fr40)
  %i.bl = icmp eq i32 %bcmp.i.i.i9, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.critedge.i._crit_edge, label %.lr.ph.split, !llvm.loop !87

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %.critedge.i.backedge.us, %bb.e
  %i.bm = icmp eq i8 %i.am, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge
  %i.bn = add i64 %.023.i39, -1                   ; 2 uses
  %i.bo = add i64 %i.v, %.025.i38
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit, label %bb.e, !llvm.loop !88

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findIS9_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEERKT_.exit: ; preds = %.critedge.i._crit_edge, %bb.f, %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.a
  %.sroa.012.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread17 ], [ true, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ true, %.lr.ph.split.us ], [ true, %.split ], [ false, %bb.f ], [ false, %.critedge.i._crit_edge ]
  ret i1 %.sroa.012.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEE14CreateFunctionISH_EclERKS7_SG_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2265, !nonnull !132, !align !656 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !268
  %i.d = lshr i64 %i.c, 8
  switch i64 %i.d, label %bb.d [
    i64 0, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !712
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !714  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !121  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.q = load ptr, ptr %2, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.k)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.s = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.t = lshr i64 %i.s, 56
  %i.u = or i64 %i.t, 128                         ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = trunc nuw i64 %i.u to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !268
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !718
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.023.i.i64 = phi i64 [ %i.ac, %bb.d ], [ %i.bo, %bb.f ]
  %.025.i.i63 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.f ] ; 2 uses
  %i.af = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i63, i64 range(i64 0, 256) %i.ab)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.ad, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ag, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.z
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = and i16 %i.al, 16383                    ; 2 uses
  %.not57 = icmp eq i16 %i.am, 0
  %i.an = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not57, label %.critedge.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = zext nneg i16 %i.am to i32              ; 2 uses
  %i.ap = icmp ne ptr %i.ag, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !121
  %.fr65 = freeze i64 %i.aq                       ; 3 uses
  %i.ar = icmp eq i64 %.fr65, 0
  br i1 %i.ar, label %.lr.ph.split.us, label %.lr.ph.split, !llvm.loop !87

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.i.i.backedge.us
  %.sroa.015.058.us = phi i32 [ %i.ba, %.critedge.i.i.backedge.us ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058.us, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !714 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !121
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge.us, !prof !284

.critedge.i.i.backedge.us:                        ; preds = %.lr.ph.split.us
  %i.az = add nuw nsw i32 %.sroa.015.058.us, 16383
  %i.ba = and i32 %i.az, %.sroa.015.058.us        ; 2 uses
  %.not.us = icmp eq i32 %i.ba, 0
  br i1 %.not.us, label %.critedge.i.i._crit_edge, label %.lr.ph.split.us, !llvm.loop !87

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i.i.backedge
  %.sroa.015.058 = phi i32 [ %i.bd, %.critedge.i.i.backedge ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.bb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.058, i1 true)
  %i.bc = add nuw nsw i32 %.sroa.015.058, 16383
  %i.bd = and i32 %i.bc, %.sroa.015.058           ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !714 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !121
  %i.bj = icmp eq i64 %.fr65, %i.bi
  br i1 %i.bj, label %.split, label %.critedge.i.i.backedge, !prof !284

.split:                                           ; preds = %.lr.ph.split
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !119
  %i.bl = load ptr, ptr %2, align 8, !tbaa !119
  %bcmp.i.i.i3 = tail call i32 @bcmp(ptr %i.bl, ptr %i.bk, i64 %.fr65)
  %i.bm = icmp eq i32 %bcmp.i.i.i3, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42, label %.critedge.i.i.backedge, !prof !286

.critedge.i.i.backedge:                           ; preds = %.split, %.lr.ph.split
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.critedge.i.i._crit_edge, label %.lr.ph.split, !llvm.loop !87

.critedge.i.i._crit_edge:                         ; preds = %.critedge.i.i.backedge, %.critedge.i.i.backedge.us, %bb.e
  %i.bn = icmp eq i8 %i.an, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i.i._crit_edge
  %i.bo = add i64 %.023.i.i64, -1                 ; 2 uses
  %i.bp = add i64 %i.w, %.025.i.i63
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread, label %bb.e, !llvm.loop !88

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread: ; preds = %bb.f, %.critedge.i.i._crit_edge, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit, %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !696
  br label %bb.h

_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42: ; preds = %.split, %.lr.ph.split.us, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit
  %i.bq = phi ptr [ %i.i, %bb.c ], [ %i.i, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit ], [ %i.av, %.lr.ph.split.us ], [ %i.bg, %.split ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !251, !noalias !2266
  %.not.i.i7 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i7, label %bb.g, label %_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteIS3_EERKN5folly7dynamicEEEclESA_.exit

bb.g:                                             ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  tail call void @_ZSt25__throw_bad_function_callv() #42, !noalias !2266
  unreachable

_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteIS3_EERKN5folly7dynamicEEEclESA_.exit: ; preds = %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2268, !noalias !2266
  tail call void %i.bv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %3), !inline_history !2262
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteIS3_EERKN5folly7dynamicEEEclESA_.exit, %_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE4findERKS9_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !119    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !121  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = icmp ult i64 %i.c, 17
  br i1 %i.e, label %bb.b, label %bb.f, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = xor i64 %i.c, 4766890152743124950        ; 2 uses
  %i.h = icmp samesign ugt i64 %i.c, 7
  br i1 %i.h, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.a, align 1
  %.0.copyload.i.i15 = load i64, ptr %i.i, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -4
  %.0.copyload.i.i16 = load i32, ptr %i.a, align 1
  %i.k = zext i32 %.0.copyload.i.i16 to i64
  %.0.copyload.i.i17 = load i32, ptr %i.j, align 1
  %i.l = zext i32 %.0.copyload.i.i17 to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.a, align 1, !tbaa !120
  %i.n = sext i8 %i.m to i64
  %i.o = shl nsw i64 %i.n, 45
  %i.p = getelementptr i8, ptr %i.d, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !120
  %i.r = sext i8 %i.q to i64
  %i.s = or i64 %i.o, %i.r
  %i.t = lshr i64 %i.c, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !120
  %i.w = sext i8 %i.v to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.c, 48
  br i1 %i.x, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2: ; preds = %bb.f, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %.069.i = phi i64 [ %i.bc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.c, %bb.f ]
  %.067.i = phi i64 [ %i.ag, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.066.i = phi ptr [ %i.bb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.a, %bb.f ] ; 7 uses
  %.065.i = phi i64 [ %i.aq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.i = phi i64 [ %i.ba, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.copyload.i.i18 = load i64, ptr %.066.i, align 1
  %i.y = xor i64 %.0.copyload.i.i18, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %.0.copyload.i.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i.i19, %.067.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066.i, i64 16
  %.0.copyload.i.i20 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i20, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.i, i64 24
  %.0.copyload.i.i21 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.i21, %.065.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %.0.copyload.i.i22 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i.i22, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.066.i, i64 40
  %.0.copyload.i.i23 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i23, %.0.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.i, i64 48 ; 3 uses
  %i.bc = add i64 %.069.i, -48                    ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 48
  br i1 %i.bd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %bb.g, !llvm.loop !82

bb.g:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %i.be = xor i64 %i.aq, %i.ag
  %i.bf = xor i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 16
  br i1 %i.bg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10: ; preds = %bb.f, %bb.g
  %.1.i72 = phi ptr [ %i.bb, %bb.g ], [ %i.a, %bb.f ] ; 6 uses
  %.168.i70 = phi i64 [ %i.bf, %bb.g ], [ 4766890152743124950, %bb.f ]
  %.170.i69 = phi i64 [ %i.bc, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.0.copyload.i.i24 = load i64, ptr %.1.i72, align 1
  %i.bh = xor i64 %.0.copyload.i.i24, 5418857496715711651
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i72, i64 8
  %.0.copyload.i.i25 = load i64, ptr %i.bi, align 1
  %i.bj = xor i64 %.0.copyload.i.i25, %.168.i70
  %i.bk = zext i64 %i.bh to i128
  %i.bl = zext i64 %i.bj to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = icmp samesign ugt i64 %.170.i69, 32
  br i1 %i.bq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %.0.copyload.i.i26 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %.0.copyload.i.i26, 5418857496715711651
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i72, i64 24
  %.0.copyload.i.i27 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i27, %i.bp
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, %bb.g
  %.1.i71 = phi ptr [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bb, %bb.g ]
  %.170.i68 = phi i64 [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bc, %bb.g ] ; 3 uses
  %.2.i = phi i64 [ %i.ca, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %i.bp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bf, %bb.g ]
end_hunk_10
begin_hunk_11_@_ZNSt12__shared_ptrIN8facebook5velox13ISerializableELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E:bb.a
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.o, %bb.n
  %.0.i.i.i9 = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ap, label %bb.p, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.p
  ret void

bb.q:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #40
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2273 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN8facebook5velox13ISerializableEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #40, !inline_history !2271
  br label %_ZNKSt14default_deleteIN8facebook5velox13ISerializableEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox13ISerializableEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !668  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN8facebook5velox13ISerializableEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !120
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(53) @_ZTSSt14default_deleteIN8facebook5velox13ISerializableEE) #40
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK5folly7dynamic4findENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #32 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !125    ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i.i, label %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !276
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.d, i32 noundef %i.c) #22
  unreachable

_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !268
  %i.g = lshr i64 %i.f, 8                         ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2276 ; 3 uses
  %i.j = and i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = shl i64 %i.i, 1
  %i.m = and i64 %i.l, 14
  %i.n = lshr i64 %i.i, 3
  %i.o = and i64 %i.n, 1
  %i.p = or disjoint i64 %i.m, %i.o               ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !2278 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !125
  %i.s = icmp eq i32 %i.r, 6
  br i1 %i.s, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, !prof !198

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !121  ; 2 uses
  %i.x = ptrtoint ptr %2 to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y
  %.not.i.i.i.i = icmp eq i64 %i.z, %i.w
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

bb.d:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.aa = icmp eq ptr %2, %1
  br i1 %i.aa, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.d
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.u, i64 %i.w)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.c, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

bb.e:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 0, ptr %i.b, align 8, !tbaa !135
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.af, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !135 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = lshr i64 %i.ag, 56
  %i.ai = or i64 %i.ah, 128                       ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = trunc nuw i64 %i.ai to i8
  %i.am = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !268
  %i.ap = and i64 %i.ao, 255                      ; 3 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 2 uses
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !298 ; 3 uses
  %i.as = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.as
  br i1 %.fr, label %.split54.us, label %.split54, !llvm.loop !2274

.split54.us:                                      ; preds = %bb.e, %bb.g
  %.023.i53.us = phi i64 [ %i.bp, %bb.g ], [ %i.aq, %bb.e ]
  %.025.i52.us = phi i64 [ %i.bq, %bb.g ], [ %i.ag, %bb.e ] ; 2 uses
  %i.at = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i52.us, i64 range(i64 0, 256) %i.ap) ; 2 uses
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.aw, i32 0, i32 3, i32 1)
  %i.ax = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.ay = icmp eq <16 x i8> %i.ax, %i.an
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not45.us = icmp eq i16 %i.ba, 0
  %i.bb = extractelement <16 x i8> %i.ax, i64 15
  br i1 %.not45.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split54.us
  %i.bc = zext nneg i16 %i.ba to i32
  %i.bd = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bd)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, %.lr.ph.us
  %.sroa.019.046.us.us = phi i32 [ %i.bc, %.lr.ph.us ], [ %i.bg, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us ] ; 3 uses
  %i.be = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.046.us.us, i1 true)
  %i.bf = add nuw nsw i32 %.sroa.019.046.us.us, 16383
  %i.bg = and i32 %i.bf, %.sroa.019.046.us.us     ; 2 uses
  %i.bh = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2278 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !125
  %i.bl = icmp eq i32 %i.bk, 6
  br i1 %i.bl, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, !prof !198

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us: ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !121
  %.not.i.i.i.i9.us.us = icmp eq i64 %i.af, %i.bn
  br i1 %.not.i.i.i.i9.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, !prof !284

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, %bb.f
  %.not.us.us = icmp eq i32 %i.bg, 0
  br i1 %.not.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.f, !llvm.loop !2274

.critedge.i._crit_edge.split.us.us:               ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11.us.us, %.split54.us
  %i.bo = icmp eq i8 %i.bb, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.g, !prof !198

bb.g:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.bp = add i64 %.023.i53.us, -1                ; 2 uses
  %i.bq = add i64 %i.ak, %.025.i52.us
  %.not.i.us = icmp eq i64 %i.bp, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split54.us, !llvm.loop !2275

.split54:                                         ; preds = %bb.e, %bb.i
  %.023.i53 = phi i64 [ %i.cq, %bb.i ], [ %i.aq, %bb.e ]
  %.025.i52 = phi i64 [ %i.cr, %bb.i ], [ %i.ag, %bb.e ] ; 2 uses
  %i.br = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i52, i64 range(i64 0, 256) %i.ap) ; 2 uses
  %i.bs = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, %i.an
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not45 = icmp eq i16 %i.by, 0
  %i.bz = extractelement <16 x i8> %i.bv, i64 15
  br i1 %.not45, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split54
  %i.ca = zext nneg i16 %i.by to i32
  %i.cb = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cb)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.019.046 = phi i32 [ %i.ca, %.lr.ph ], [ %i.ce, %.critedge.i.backedge ] ; 3 uses
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.046, i1 true)
  %i.cd = add nuw nsw i32 %.sroa.019.046, 16383
  %i.ce = and i32 %i.cd, %.sroa.019.046           ; 2 uses
  %i.cf = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2278 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !125
  %i.cj = icmp eq i32 %i.ci, 6
  br i1 %i.cj, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, label %.critedge.i.backedge, !prof !198

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8:      ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !121
  %.not.i.i.i.i9 = icmp eq i64 %i.af, %i.cl
  br i1 %.not.i.i.i.i9, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !119
  %bcmp.i.i.i.i10 = call i32 @bcmp(ptr %1, ptr %i.cn, i64 %i.af)
  %i.co = icmp eq i32 %bcmp.i.i.i.i10, 0
  br i1 %i.co, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %.critedge.i.backedge, !prof !2279

.critedge.i.backedge:                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, %bb.h, %.split
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %.critedge.i._crit_edge.split, label %bb.h, !llvm.loop !2274

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split54
  %i.cp = icmp eq i8 %i.bz, 0
  br i1 %i.cp, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.i, !prof !198

bb.i:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cq = add i64 %.023.i53, -1                   ; 2 uses
  %i.cr = add i64 %i.ak, %.025.i52
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split54, !llvm.loop !2275

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit: ; preds = %.split, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us
  %.us-phi = phi i64 [ %i.bh, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.cf, %.split ] ; 2 uses
  %i.cs = phi i64 [ %i.at, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.br, %.split ]
  %i.ct = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.us-phi
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit: ; preds = %bb.i, %.critedge.i._crit_edge.split, %bb.g, %.critedge.i._crit_edge.split.us.us, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %.sroa.7.1 = phi i64 [ %i.p, %bb.d ], [ %i.g, %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit ], [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.p, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %.us-phi, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ 0, %bb.g ], [ 0, %.critedge.i._crit_edge.split.us.us ], [ 0, %.critedge.i._crit_edge.split ], [ 0, %bb.i ]
  %.sroa.018.1 = phi ptr [ %i.k, %bb.d ], [ null, %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit ], [ null, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.k, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.cv, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ null, %bb.g ], [ null, %.critedge.i._crit_edge.split.us.us ], [ null, %.critedge.i._crit_edge.split ], [ null, %bb.i ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.018.1, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.7.1, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5folly5RangeIPKcEEEclINS_17__normal_iteratorIPKNS2_7dynamicESt6vectorISB_SaISB_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = load ptr, ptr %0, align 8, !tbaa !2281, !nonnull !132, !align !656 ; 2 uses
  store i32 6, ptr %2, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2283 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2284 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !116
  %i.j = icmp eq ptr %i.c, null
  %i.k = icmp ne ptr %i.e, null
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.375) #42
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.h, 0
  br i1 %i.m, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.376) #42
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.h, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !122

.noexc9.i.i:                                      ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #41 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !119
  store i64 %i.h, ptr %i.i, align 8, !tbaa !120
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.c, align 1, !tbaa !120
  store i8 %i.r, ptr %i.q, align 1, !tbaa !120
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.h, i1 false)
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.s, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.t, align 1, !tbaa !120
  %i.u = invoke noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret i1 %i.u

bb.h:                                             ; preds = %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.v
}

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13ISerializable11deserializeISt6vectorINS0_4core20FieldAccessTypedExprESaIS5_EETnPNSt9enable_ifIXsr14is_vector_typeIT_EE5valueEvE4typeELPv0EEEDaRKN5folly7dynamicESD_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.13", align 16   ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !125
  %.not.i.i.i = icmp eq i32 %i.a, 1
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !198

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13ISerializable11deserializeISt6vectorINS0_4core20FieldAccessTypedExprESaIS5_EETnPNSt9enable_ifIXsr14is_vector_typeIT_EE5valueEvE4typeELPv0EEEDaRKN5folly7dynamicESD_E18veloxCheckFailArgs) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !305  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit.loopexit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.j = load <2 x ptr>, ptr %3, align 16, !tbaa !183
  %.pre26 = load ptr, ptr %i.h, align 16, !tbaa !182
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit.loopexit, %bb.c
  %i.k = phi ptr [ %.pre26, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit.loopexit ], [ null, %bb.c ]
  %i.l = phi <2 x ptr> [ %i.j, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit.loopexit ], [ splat (ptr null), %bb.c ]
  store <2 x ptr> %i.l, ptr %0, align 8, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.m, align 8, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.019.023 = phi ptr [ %i.c, %.lr.ph ], [ %i.ai, %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  invoke void @_ZN8facebook5velox13ISerializable11deserializeINS0_4core20FieldAccessTypedExprEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.023, ptr noundef %2)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !180  ; 5 uses
  %i.o = load ptr, ptr %i.h, align 16, !tbaa !182
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bm) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  resume { ptr, i32 } %i.ez

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !133
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.not.i64 = icmp eq i64 %i.fa, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !671 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fd = sub i64 0, %i.fc
  %i.fe = and i64 %i.fd, -8
  %i.ff = mul i64 %i.fa, 24
  %i.fg = sub i64 %i.ff, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2607 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2608, !nonnull !132
  %i.d = load i8, ptr %i.c, align 1, !tbaa !133, !range !131, !noundef !132
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2609, !nonnull !132, !align !656
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2610, !nonnull !132, !align !656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2611, !nonnull !132, !align !656
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2612, !nonnull !132, !align !656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2613, !nonnull !132, !align !656
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2610, !nonnull !132, !align !656
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !448
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2614, !nonnull !132, !align !656
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !135 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !268
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !268
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !2608
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !133, !range !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2609
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !135
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2615, !nonnull !132, !align !656
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2616, !nonnull !132, !align !656
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2617, !nonnull !132, !align !656
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !739
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS6_SA_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SA_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SA_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SA_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !448
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !448  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.041.0, 4095
  %i.y = and i32 %i.x, %.sroa.041.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !738
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !186
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %4, align 4, !tbaa !449
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !449
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !198, !llvm.loop !45

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread65, label %bb.f, !prof !198

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i76, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !46

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi85, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre81 = load ptr, ptr %i.at, align 8, !tbaa !448
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !120
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ba, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.029                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bo, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2618

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !688
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core8JoinTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !120
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !268
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !186
  %i.ce = load ptr, ptr %1, align 8, !tbaa !738, !nonnull !132, !noundef !132
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %5, align 4, !tbaa !449
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2620
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !689
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !268
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !453
  %.pre107 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !453  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %4, align 8
  %.fr92 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr92, 0
  br i1 %i.q, label %.split87.us, label %.split87, !llvm.loop !47

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.022.i86.us = phi i64 [ %i.al, %bb.d ], [ %i.j, %bb.b ]
  %.024.i85.us = phi i64 [ %i.am, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.y = zext nneg i16 %i.w to i32
  %i.z = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.041.078.us.us = phi i32 [ %i.y, %.lr.ph.us ], [ %i.aj, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !186
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.ai = add nuw nsw i32 %.sroa.041.078.us.us, 4095
  %i.aj = and i32 %i.ai, %.sroa.041.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !47

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ak = icmp eq i8 %i.x, 0
  br i1 %i.ak, label %.thread67, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.al = add i64 %.022.i86.us, -1                ; 2 uses
  %i.am = add i64 %i.e, %.024.i85.us
  %.not.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !48

.split87:                                         ; preds = %bb.b, %bb.f
  %.022.i86 = phi i64 [ %i.bk, %bb.f ], [ %i.j, %bb.b ]
  %.024.i85 = phi i64 [ %i.bl, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.ap, %i.h
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 4095                     ; 2 uses
  %.not6977 = icmp eq i16 %i.as, 0
  %i.at = extractelement <16 x i8> %i.ap, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.au = zext nneg i16 %i.as to i32
  %i.av = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.078 = phi i32 [ %i.au, %.lr.ph ], [ %i.az, %.critedge.i.backedge ] ; 3 uses
  %i.ax = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078, i1 true)
  %i.ay = add nuw nsw i32 %.sroa.041.078, 4095
  %i.az = and i32 %i.ay, %.sroa.041.078           ; 2 uses
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !186
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr92, %i.bf
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !285
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.bh, i64 %.fr92)
  %i.bi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.az, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !47

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bj = icmp eq i8 %i.at, 0
  br i1 %i.bj, label %.thread67, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bk = add i64 %.022.i86, -1                   ; 2 uses
  %i.bl = add i64 %i.e, %.024.i85
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !48

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.ac, %bb.c ], [ %i.ba, %.split ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.c ], [ %i.an, %.split ]
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %..thread67_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread67_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ]
  %i.bq = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.0.copyload.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bt = add i64 %.pre-phi108, -1
  %i.bu = lshr i64 %i.bt, 12
  %i.bv = add nuw nsw i64 %i.bu, 1
  %i.bw = mul i64 %i.bv, %i.bs                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.bw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.bs, i64 noundef %i.bw)
  %.pre104 = load ptr, ptr %i.bx, align 8, !tbaa !453
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre109 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre109, %bb.g ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bz = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !120
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = and i16 %i.cd, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.ce, 4095
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cf = shl i64 %3, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ch = phi i64 [ %i.bz, %bb.h ], [ %i.cn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 15 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.ck, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cm = add i64 %i.cg, %.029                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cm, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.cn ; 3 uses
  %i.cp = load <16 x i8>, ptr %i.co, align 16     ; 2 uses
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.cs, 4095
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !2621

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.ct = extractelement <16 x i8> %i.cp, i64 14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  %i.cv = add i8 %i.ct, 16
  store i8 %i.cv, ptr %i.cu, align 2, !tbaa !688
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ce, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cs, %bb.k ]
  %.1 = phi ptr [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64              ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !120
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.db = trunc i64 %3 to i8
  store i8 %i.db, ptr %i.cy, align 1, !tbaa !120
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cx ; 2 uses
  %i.de = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.a, align 8, !tbaa !268
  %i.dg = lshr i64 %i.df, 8                       ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !186
  %i.di = load ptr, ptr %1, align 8, !tbaa !454, !nonnull !132, !noundef !132
  %i.dj = and i64 %i.dg, 4294967295
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !689
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %6, align 4, !tbaa !449
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2623
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.do = and i64 %i.dn, -256
  %i.dp = add i64 %i.do, 256
  %i.dq = and i64 %i.dn, 255
  %i.dr = or disjoint i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink134 = phi ptr [ %i.bp, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ds, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core8JoinTypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bm) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  resume { ptr, i32 } %i.ez

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !133
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.not.i64 = icmp eq i64 %i.fa, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !671 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fd = sub i64 0, %i.fc
  %i.fe = and i64 %i.fd, -8
  %i.ff = mul i64 %i.fa, 24
  %i.fg = sub i64 %i.ff, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2702 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2703, !nonnull !132
  %i.d = load i8, ptr %i.c, align 1, !tbaa !133, !range !131, !noundef !132
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2704, !nonnull !132, !align !656
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2705, !nonnull !132, !align !656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2706, !nonnull !132, !align !656
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2707, !nonnull !132, !align !656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2708, !nonnull !132, !align !656
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2705, !nonnull !132, !align !656
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !509
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2709, !nonnull !132, !align !656
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !135 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !268
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !268
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !2703
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !133, !range !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2704
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !135
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2710, !nonnull !132, !align !656
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2711, !nonnull !132, !align !656
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2712, !nonnull !132, !align !656
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !746
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS7_SB_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS8_JRKS8_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !509
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !509  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.041.0, 4095
  %i.y = and i32 %i.x, %.sroa.041.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !745
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !186
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %4, align 4, !tbaa !510
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !510
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !198, !llvm.loop !54

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread65, label %bb.f, !prof !198

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i76, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !55

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi85, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre81 = load ptr, ptr %i.at, align 8, !tbaa !509
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !120
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ba, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.029                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bo, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2713

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !688
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode9BoundTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !120
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !268
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !186
  %i.ce = load ptr, ptr %1, align 8, !tbaa !745, !nonnull !132, !noundef !132
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %5, align 4, !tbaa !510
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2715
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !689
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !268
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !514
  %.pre107 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !514  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %4, align 8
  %.fr92 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr92, 0
  br i1 %i.q, label %.split87.us, label %.split87, !llvm.loop !56

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.022.i86.us = phi i64 [ %i.al, %bb.d ], [ %i.j, %bb.b ]
  %.024.i85.us = phi i64 [ %i.am, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.y = zext nneg i16 %i.w to i32
  %i.z = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.041.078.us.us = phi i32 [ %i.y, %.lr.ph.us ], [ %i.aj, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !186
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.ai = add nuw nsw i32 %.sroa.041.078.us.us, 4095
  %i.aj = and i32 %i.ai, %.sroa.041.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !56

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ak = icmp eq i8 %i.x, 0
  br i1 %i.ak, label %.thread67, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.al = add i64 %.022.i86.us, -1                ; 2 uses
  %i.am = add i64 %i.e, %.024.i85.us
  %.not.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !57

.split87:                                         ; preds = %bb.b, %bb.f
  %.022.i86 = phi i64 [ %i.bk, %bb.f ], [ %i.j, %bb.b ]
  %.024.i85 = phi i64 [ %i.bl, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.ap, %i.h
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 4095                     ; 2 uses
  %.not6977 = icmp eq i16 %i.as, 0
  %i.at = extractelement <16 x i8> %i.ap, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.au = zext nneg i16 %i.as to i32
  %i.av = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.078 = phi i32 [ %i.au, %.lr.ph ], [ %i.az, %.critedge.i.backedge ] ; 3 uses
  %i.ax = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078, i1 true)
  %i.ay = add nuw nsw i32 %.sroa.041.078, 4095
  %i.az = and i32 %i.ay, %.sroa.041.078           ; 2 uses
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !186
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr92, %i.bf
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !285
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.bh, i64 %.fr92)
  %i.bi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.az, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !56

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bj = icmp eq i8 %i.at, 0
  br i1 %i.bj, label %.thread67, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bk = add i64 %.022.i86, -1                   ; 2 uses
  %i.bl = add i64 %i.e, %.024.i85
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !57

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.ac, %bb.c ], [ %i.ba, %.split ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.c ], [ %i.an, %.split ]
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %..thread67_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread67_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ]
  %i.bq = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.0.copyload.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bt = add i64 %.pre-phi108, -1
  %i.bu = lshr i64 %i.bt, 12
  %i.bv = add nuw nsw i64 %i.bu, 1
  %i.bw = mul i64 %i.bv, %i.bs                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.bw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.bs, i64 noundef %i.bw)
  %.pre104 = load ptr, ptr %i.bx, align 8, !tbaa !514
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre109 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre109, %bb.g ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bz = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !120
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = and i16 %i.cd, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.ce, 4095
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cf = shl i64 %3, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ch = phi i64 [ %i.bz, %bb.h ], [ %i.cn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 15 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.ck, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cm = add i64 %i.cg, %.029                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cm, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.cn ; 3 uses
  %i.cp = load <16 x i8>, ptr %i.co, align 16     ; 2 uses
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.cs, 4095
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !2716

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.ct = extractelement <16 x i8> %i.cp, i64 14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  %i.cv = add i8 %i.ct, 16
  store i8 %i.cv, ptr %i.cu, align 2, !tbaa !688
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ce, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cs, %bb.k ]
  %.1 = phi ptr [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64              ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !120
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.db = trunc i64 %3 to i8
  store i8 %i.db, ptr %i.cy, align 1, !tbaa !120
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cx ; 2 uses
  %i.de = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.a, align 8, !tbaa !268
  %i.dg = lshr i64 %i.df, 8                       ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !186
  %i.di = load ptr, ptr %1, align 8, !tbaa !515, !nonnull !132, !noundef !132
  %i.dj = and i64 %i.dg, 4294967295
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !689
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %6, align 4, !tbaa !510
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2718
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.do = and i64 %i.dn, -256
  %i.dp = add i64 %i.do, 256
  %i.dq = and i64 %i.dn, 255
  %i.dr = or disjoint i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink134 = phi ptr [ %i.bp, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ds, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode9BoundTypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bm) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  resume { ptr, i32 } %i.ez

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !133
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.not.i64 = icmp eq i64 %i.fa, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !671 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fd = sub i64 0, %i.fc
  %i.fe = and i64 %i.fd, -8
  %i.ff = mul i64 %i.fa, 24
  %i.fg = sub i64 %i.ff, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2771 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2772, !nonnull !132
  %i.d = load i8, ptr %i.c, align 1, !tbaa !133, !range !131, !noundef !132
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2773, !nonnull !132, !align !656
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2774, !nonnull !132, !align !656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2775, !nonnull !132, !align !656
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2776, !nonnull !132, !align !656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2777, !nonnull !132, !align !656
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2774, !nonnull !132, !align !656
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !520
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2778, !nonnull !132, !align !656
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !135 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !268
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !268
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !2772
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !133, !range !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2773
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !135
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2779, !nonnull !132, !align !656
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2780, !nonnull !132, !align !656
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2781, !nonnull !132, !align !656
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !753
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS7_SB_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS8_JRKS8_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !520
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !520  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.041.0, 4095
  %i.y = and i32 %i.x, %.sroa.041.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !752
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !186
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %4, align 4, !tbaa !521
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !521
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !198, !llvm.loop !58

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread65, label %bb.f, !prof !198

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i76, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !59

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi85, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre81 = load ptr, ptr %i.at, align 8, !tbaa !520
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !120
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ba, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.029                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bo, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2782

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !688
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core10WindowNode10WindowTypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !120
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !268
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !186
  %i.ce = load ptr, ptr %1, align 8, !tbaa !752, !nonnull !132, !noundef !132
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %5, align 4, !tbaa !521
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2784
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !689
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !268
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !525
  %.pre107 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !525  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %4, align 8
  %.fr92 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr92, 0
  br i1 %i.q, label %.split87.us, label %.split87, !llvm.loop !60

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.022.i86.us = phi i64 [ %i.al, %bb.d ], [ %i.j, %bb.b ]
  %.024.i85.us = phi i64 [ %i.am, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.y = zext nneg i16 %i.w to i32
  %i.z = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.041.078.us.us = phi i32 [ %i.y, %.lr.ph.us ], [ %i.aj, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !186
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.ai = add nuw nsw i32 %.sroa.041.078.us.us, 4095
  %i.aj = and i32 %i.ai, %.sroa.041.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !60

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ak = icmp eq i8 %i.x, 0
  br i1 %i.ak, label %.thread67, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.al = add i64 %.022.i86.us, -1                ; 2 uses
  %i.am = add i64 %i.e, %.024.i85.us
  %.not.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !61

.split87:                                         ; preds = %bb.b, %bb.f
  %.022.i86 = phi i64 [ %i.bk, %bb.f ], [ %i.j, %bb.b ]
  %.024.i85 = phi i64 [ %i.bl, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.ap, %i.h
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 4095                     ; 2 uses
  %.not6977 = icmp eq i16 %i.as, 0
  %i.at = extractelement <16 x i8> %i.ap, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.au = zext nneg i16 %i.as to i32
  %i.av = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.078 = phi i32 [ %i.au, %.lr.ph ], [ %i.az, %.critedge.i.backedge ] ; 3 uses
  %i.ax = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078, i1 true)
  %i.ay = add nuw nsw i32 %.sroa.041.078, 4095
  %i.az = and i32 %i.ay, %.sroa.041.078           ; 2 uses
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !186
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr92, %i.bf
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !285
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.bh, i64 %.fr92)
  %i.bi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.az, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !60

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bj = icmp eq i8 %i.at, 0
  br i1 %i.bj, label %.thread67, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bk = add i64 %.022.i86, -1                   ; 2 uses
  %i.bl = add i64 %i.e, %.024.i85
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !61

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.ac, %bb.c ], [ %i.ba, %.split ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.c ], [ %i.an, %.split ]
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %..thread67_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread67_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ]
  %i.bq = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.0.copyload.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bt = add i64 %.pre-phi108, -1
  %i.bu = lshr i64 %i.bt, 12
  %i.bv = add nuw nsw i64 %i.bu, 1
  %i.bw = mul i64 %i.bv, %i.bs                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.bw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.bs, i64 noundef %i.bw)
  %.pre104 = load ptr, ptr %i.bx, align 8, !tbaa !525
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre109 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre109, %bb.g ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bz = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !120
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = and i16 %i.cd, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.ce, 4095
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cf = shl i64 %3, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ch = phi i64 [ %i.bz, %bb.h ], [ %i.cn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 15 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.ck, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cm = add i64 %i.cg, %.029                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cm, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.cn ; 3 uses
  %i.cp = load <16 x i8>, ptr %i.co, align 16     ; 2 uses
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.cs, 4095
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !2785

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.ct = extractelement <16 x i8> %i.cp, i64 14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  %i.cv = add i8 %i.ct, 16
  store i8 %i.cv, ptr %i.cu, align 2, !tbaa !688
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ce, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cs, %bb.k ]
  %.1 = phi ptr [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64              ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !120
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.db = trunc i64 %3 to i8
  store i8 %i.db, ptr %i.cy, align 1, !tbaa !120
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cx ; 2 uses
  %i.de = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.a, align 8, !tbaa !268
  %i.dg = lshr i64 %i.df, 8                       ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !186
  %i.di = load ptr, ptr %1, align 8, !tbaa !526, !nonnull !132, !noundef !132
  %i.dj = and i64 %i.dg, 4294967295
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !689
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %6, align 4, !tbaa !521
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2787
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.do = and i64 %i.dn, -256
  %i.dp = add i64 %i.do, 256
  %i.dq = and i64 %i.dn, 255
  %i.dr = or disjoint i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink134 = phi ptr [ %i.bp, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ds, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core10WindowNode10WindowTypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bm) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  resume { ptr, i32 } %i.ez

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !133
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.not.i64 = icmp eq i64 %i.fa, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !671 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fd = sub i64 0, %i.fc
  %i.fe = and i64 %i.fd, -8
  %i.ff = mul i64 %i.fa, 24
  %i.fg = sub i64 %i.ff, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2860 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2861, !nonnull !132
  %i.d = load i8, ptr %i.c, align 1, !tbaa !133, !range !131, !noundef !132
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2862, !nonnull !132, !align !656
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2863, !nonnull !132, !align !656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2864, !nonnull !132, !align !656
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2865, !nonnull !132, !align !656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2866, !nonnull !132, !align !656
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2863, !nonnull !132, !align !656
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !591
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2867, !nonnull !132, !align !656
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !135 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !268
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !268
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !2861
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !133, !range !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2862
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !135
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2868, !nonnull !132, !align !656
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2869, !nonnull !132, !align !656
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2870, !nonnull !132, !align !656
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !765
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS7_SB_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS8_JRKS8_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !591
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !591  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.041.0, 4095
  %i.y = and i32 %i.x, %.sroa.041.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !764
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !186
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %4, align 4, !tbaa !592
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !592
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !198, !llvm.loop !66

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread65, label %bb.f, !prof !198

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i76, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !67

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi85, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre81 = load ptr, ptr %i.at, align 8, !tbaa !591
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !120
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ba, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.029                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bo, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2871

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !688
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core18LocalPartitionNode4TypeESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !120
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !268
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !186
  %i.ce = load ptr, ptr %1, align 8, !tbaa !764, !nonnull !132, !noundef !132
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %5, align 4, !tbaa !592
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2873
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !689
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !268
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !596
  %.pre107 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !596  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %4, align 8
  %.fr92 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr92, 0
  br i1 %i.q, label %.split87.us, label %.split87, !llvm.loop !69

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.022.i86.us = phi i64 [ %i.al, %bb.d ], [ %i.j, %bb.b ]
  %.024.i85.us = phi i64 [ %i.am, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.y = zext nneg i16 %i.w to i32
  %i.z = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.041.078.us.us = phi i32 [ %i.y, %.lr.ph.us ], [ %i.aj, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !186
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.ai = add nuw nsw i32 %.sroa.041.078.us.us, 4095
  %i.aj = and i32 %i.ai, %.sroa.041.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !69

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ak = icmp eq i8 %i.x, 0
  br i1 %i.ak, label %.thread67, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.al = add i64 %.022.i86.us, -1                ; 2 uses
  %i.am = add i64 %i.e, %.024.i85.us
  %.not.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !70

.split87:                                         ; preds = %bb.b, %bb.f
  %.022.i86 = phi i64 [ %i.bk, %bb.f ], [ %i.j, %bb.b ]
  %.024.i85 = phi i64 [ %i.bl, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.ap, %i.h
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 4095                     ; 2 uses
  %.not6977 = icmp eq i16 %i.as, 0
  %i.at = extractelement <16 x i8> %i.ap, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.au = zext nneg i16 %i.as to i32
  %i.av = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.078 = phi i32 [ %i.au, %.lr.ph ], [ %i.az, %.critedge.i.backedge ] ; 3 uses
  %i.ax = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078, i1 true)
  %i.ay = add nuw nsw i32 %.sroa.041.078, 4095
  %i.az = and i32 %i.ay, %.sroa.041.078           ; 2 uses
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !186
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr92, %i.bf
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !285
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.bh, i64 %.fr92)
  %i.bi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.az, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !69

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bj = icmp eq i8 %i.at, 0
  br i1 %i.bj, label %.thread67, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bk = add i64 %.022.i86, -1                   ; 2 uses
  %i.bl = add i64 %i.e, %.024.i85
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !70

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.ac, %bb.c ], [ %i.ba, %.split ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.c ], [ %i.an, %.split ]
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %..thread67_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread67_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ]
  %i.bq = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.0.copyload.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bt = add i64 %.pre-phi108, -1
  %i.bu = lshr i64 %i.bt, 12
  %i.bv = add nuw nsw i64 %i.bu, 1
  %i.bw = mul i64 %i.bv, %i.bs                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.bw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.bs, i64 noundef %i.bw)
  %.pre104 = load ptr, ptr %i.bx, align 8, !tbaa !596
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre109 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre109, %bb.g ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bz = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !120
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = and i16 %i.cd, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.ce, 4095
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cf = shl i64 %3, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ch = phi i64 [ %i.bz, %bb.h ], [ %i.cn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 15 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.ck, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cm = add i64 %i.cg, %.029                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cm, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.cn ; 3 uses
  %i.cp = load <16 x i8>, ptr %i.co, align 16     ; 2 uses
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.cs, 4095
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !2874

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.ct = extractelement <16 x i8> %i.cp, i64 14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  %i.cv = add i8 %i.ct, 16
  store i8 %i.cv, ptr %i.cu, align 2, !tbaa !688
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ce, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cs, %bb.k ]
  %.1 = phi ptr [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64              ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !120
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.db = trunc i64 %3 to i8
  store i8 %i.db, ptr %i.cy, align 1, !tbaa !120
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cx ; 2 uses
  %i.de = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.a, align 8, !tbaa !268
  %i.dg = lshr i64 %i.df, 8                       ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !186
  %i.di = load ptr, ptr %1, align 8, !tbaa !597, !nonnull !132, !noundef !132
  %i.dj = and i64 %i.dg, 4294967295
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !689
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %6, align 4, !tbaa !592
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2876
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.do = and i64 %i.dn, -256
  %i.dp = add i64 %i.do, 256
  %i.dq = and i64 %i.dn, 255
  %i.dr = or disjoint i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink134 = phi ptr [ %i.bp, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ds, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core18LocalPartitionNode4TypeEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
end_hunk_15
begin_hunk_16_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bm) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  resume { ptr, i32 } %i.ez

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !133
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.not.i64 = icmp eq i64 %i.fa, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !671 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !135
  %i.fd = sub i64 0, %i.fc
  %i.fe = and i64 %i.fd, -8
  %i.ff = mul i64 %i.fa, 24
  %i.fg = sub i64 %i.ff, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2929 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2930, !nonnull !132
  %i.d = load i8, ptr %i.c, align 1, !tbaa !133, !range !131, !noundef !132
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !198

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2931, !nonnull !132, !align !656
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2932, !nonnull !132, !align !656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2933, !nonnull !132, !align !656
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2934, !nonnull !132, !align !656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2935, !nonnull !132, !align !656
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2932, !nonnull !132, !align !656
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !607
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2936, !nonnull !132, !align !656
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !135 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !268
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !268
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !2930
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !133, !range !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2931
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !135
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2937, !nonnull !132, !align !656
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2938, !nonnull !132, !align !656
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2939, !nonnull !132, !align !656
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !772
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS7_SB_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS7_SB_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS8_JRKS8_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !607
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !607  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i75 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i75, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.041.0, 4095
  %i.y = and i32 %i.x, %.sroa.041.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !771
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !186
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %4, align 4, !tbaa !608
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !608
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !198, !llvm.loop !72

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread65, label %bb.f, !prof !198

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i76, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i75
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !73

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi85, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre81 = load ptr, ptr %i.at, align 8, !tbaa !607
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !120
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ba, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.029                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bo, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !2940

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !688
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4core21PartitionedOutputNode4KindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !120
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !268
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !186
  %i.ce = load ptr, ptr %1, align 8, !tbaa !771, !nonnull !132, !noundef !132
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %5, align 4, !tbaa !608
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2942
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !689
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !268
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.co, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !618
  %.pre107 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !618  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %4, align 8
  %.fr92 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr92, 0
  br i1 %i.q, label %.split87.us, label %.split87, !llvm.loop !75

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.022.i86.us = phi i64 [ %i.al, %bb.d ], [ %i.j, %bb.b ]
  %.024.i85.us = phi i64 [ %i.am, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.y = zext nneg i16 %i.w to i32
  %i.z = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.041.078.us.us = phi i32 [ %i.y, %.lr.ph.us ], [ %i.aj, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !186
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !283
  %.not.i.i.i.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.ai = add nuw nsw i32 %.sroa.041.078.us.us, 4095
  %i.aj = and i32 %i.ai, %.sroa.041.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !75

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ak = icmp eq i8 %i.x, 0
  br i1 %i.ak, label %.thread67, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.al = add i64 %.022.i86.us, -1                ; 2 uses
  %i.am = add i64 %i.e, %.024.i85.us
  %.not.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !76

.split87:                                         ; preds = %bb.b, %bb.f
  %.022.i86 = phi i64 [ %i.bk, %bb.f ], [ %i.j, %bb.b ]
  %.024.i85 = phi i64 [ %i.bl, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.ap, %i.h
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 4095                     ; 2 uses
  %.not6977 = icmp eq i16 %i.as, 0
  %i.at = extractelement <16 x i8> %i.ap, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.au = zext nneg i16 %i.as to i32
  %i.av = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.041.078 = phi i32 [ %i.au, %.lr.ph ], [ %i.az, %.critedge.i.backedge ] ; 3 uses
  %i.ax = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078, i1 true)
  %i.ay = add nuw nsw i32 %.sroa.041.078, 4095
  %i.az = and i32 %i.ay, %.sroa.041.078           ; 2 uses
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !186
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !283
  %.not.i.i.i = icmp eq i64 %.fr92, %i.bf
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !285
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.bh, i64 %.fr92)
  %i.bi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.az, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !75

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bj = icmp eq i8 %i.at, 0
  br i1 %i.bj, label %.thread67, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bk = add i64 %.022.i86, -1                   ; 2 uses
  %i.bl = add i64 %i.e, %.024.i85
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !76

_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.ac, %bb.c ], [ %i.ba, %.split ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.c ], [ %i.an, %.split ]
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %..thread67_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread67_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ]
  %i.bq = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.0.copyload.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bt = add i64 %.pre-phi108, -1
  %i.bu = lshr i64 %i.bt, 12
  %i.bv = add nuw nsw i64 %i.bu, 1
  %i.bw = mul i64 %i.bv, %i.bs                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.bw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.bs, i64 noundef %i.bw)
  %.pre104 = load ptr, ptr %i.bx, align 8, !tbaa !618
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre109 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre109, %bb.g ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bz = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !120
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = and i16 %i.cd, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.ce, 4095
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cf = shl i64 %3, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ch = phi i64 [ %i.bz, %bb.h ], [ %i.cn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 15 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !686 ; 2 uses
  %.not.i32 = icmp eq i8 %i.ck, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cm = add i64 %i.cg, %.029                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cm, i64 range(i64 0, 256) %.pre-phi110) ; 2 uses
  %i.co = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %i.cn ; 3 uses
  %i.cp = load <16 x i8>, ptr %i.co, align 16     ; 2 uses
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.cs, 4095
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !2943

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.ct = extractelement <16 x i8> %i.cp, i64 14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  %i.cv = add i8 %i.ct, 16
  store i8 %i.cv, ptr %i.cu, align 2, !tbaa !688
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ce, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cs, %bb.k ]
  %.1 = phi ptr [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64              ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !120
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.db = trunc i64 %3 to i8
  store i8 %i.db, ptr %i.cy, align 1, !tbaa !120
  %i.dc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cx ; 2 uses
  %i.de = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.a, align 8, !tbaa !268
  %i.dg = lshr i64 %i.df, 8                       ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !186
  %i.di = load ptr, ptr %1, align 8, !tbaa !619, !nonnull !132, !noundef !132
  %i.dj = and i64 %i.dg, 4294967295
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !689
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %6, align 4, !tbaa !608
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2945
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.do = and i64 %i.dn, -256
  %i.dp = add i64 %i.do, 256
  %i.dq = and i64 %i.dn, 255
  %i.dr = or disjoint i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink134 = phi ptr [ %i.bp, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.dd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !197
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ds, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox4core21PartitionedOutputNode4KindEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
end_hunk_16
begin_hunk_17_@_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_:bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.567) #42
  unreachable

_ZNK3fmt3v117context3argEi.exit.thread35.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.b, %bb.g ], [ %i.al, %bb.p ]
  %.sink104 = phi ptr [ %i.s, %bb.g ], [ %i.x, %bb.p ]
  %.sroa.23.037.ph = phi i32 [ %i.q, %bb.g ], [ %i.ax, %bb.p ]
  %i.ay = zext nneg i32 %.sink to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sink104, i64 %i.ay
  %.sroa.08.0.copyload23 = load i128, ptr %i.az, align 16, !tbaa !120 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.08.0.copyload23 to i32
  %.sroa.08.sroa.0.sroa.11.0.extract.shift99 = lshr i128 %.sroa.08.0.copyload23, 32
  %.sroa.08.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.08.sroa.0.sroa.11.0.extract.shift99 to i32
  %.sroa.08.sroa.11.0.extract.shift = lshr i128 %.sroa.08.0.copyload23, 64
  %.sroa.08.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.08.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v117context3argEi.exit.thread35

_ZNK3fmt3v117context3argEi.exit.thread35:         ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split, %_ZNK3fmt3v117context3argEi.exit
  %.sroa.08.sroa.0.sroa.11.0 = phi i32 [ %.sroa.08.sroa.0.sroa.11.0.extract.trunc87, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.08.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ] ; 4 uses
  %.sroa.08.sroa.0.sroa.0.0 = phi i32 [ %.sroa.08.sroa.0.sroa.0.0.extract.trunc71, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.08.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ] ; 7 uses
  %.sroa.08.sroa.11.0 = phi i64 [ %.sroa.08.sroa.11.0.extract.trunc60, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.08.sroa.11.0.extract.trunc, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ]
  %.sroa.23.037 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v117context3argEi.exit ], [ %.sroa.23.037.ph, %_ZNK3fmt3v117context3argEi.exit.thread35.sink.split ]
  switch i32 %.sroa.23.037, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %i.ba = icmp slt i32 %.sroa.08.sroa.0.sroa.0.0, 0
  %i.bb = zext nneg i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  br i1 %i.ba, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

bb.r:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %i.bc = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext72 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift73 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext72, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext61 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert63 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift73, %.sroa.08.sroa.0.sroa.0.0.insert.ext61
  %i.bd = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.08.sroa.0.sroa.0.0.insert.insert63, i64 -1)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift, %.sroa.08.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext80 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift81 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext80, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext67 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert69 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift81, %.sroa.08.sroa.0.sroa.0.0.insert.ext67
  %.not100 = icmp sgt i64 %.sroa.08.sroa.11.0, -1
  br i1 %.not100, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  %.sroa.08.sroa.0.sroa.11.0.insert.ext76 = zext i32 %.sroa.08.sroa.0.sroa.11.0 to i64
  %.sroa.08.sroa.0.sroa.11.0.insert.shift77 = shl nuw i64 %.sroa.08.sroa.0.sroa.11.0.insert.ext76, 32
  %.sroa.08.sroa.0.sroa.0.0.insert.ext64 = zext i32 %.sroa.08.sroa.0.sroa.0.0 to i64
  %.sroa.08.sroa.0.sroa.0.0.insert.insert66 = or disjoint i64 %.sroa.08.sroa.0.sroa.11.0.insert.shift77, %.sroa.08.sroa.0.sroa.0.0.insert.ext64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v117context3argEi.exit.thread35
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.569) #42
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.08.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert69, %bb.u ], [ %.sroa.08.sroa.0.sroa.0.0.insert.insert66, %bb.v ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ] ; 2 uses
  %i.be = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.be, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.568) #42
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread40: ; preds = %bb.q, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i42 = phi i64 [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bb, %bb.q ]
  %i.bf = trunc nuw nsw i64 %.0.i42 to i32
  ret i32 %i.bf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.863") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !329
  %.pre105 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !329  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.fr90 = freeze i64 %i.o                        ; 3 uses
  %i.p = icmp eq i64 %.fr90, 0
  br i1 %i.p, label %.split85.us, label %.split85, !llvm.loop !3044

.split85.us:                                      ; preds = %bb.b, %bb.d
  %.022.i84.us = phi i64 [ %i.am, %bb.d ], [ %i.j, %bb.b ]
  %.024.i83.us = phi i64 [ %i.an, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.q = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i83.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 4095                       ; 2 uses
  %.not6775.us = icmp eq i16 %i.v, 0
  %i.w = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not6775.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split85.us
  %i.x = zext nneg i16 %i.v to i32
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.040.076.us.us = phi i32 [ %i.x, %.lr.ph.us ], [ %i.ak, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.076.us.us, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !186
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !121
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.aj = add nuw nsw i32 %.sroa.040.076.us.us, 4095
  %i.ak = and i32 %i.aj, %.sroa.040.076.us.us     ; 2 uses
  %.not67.us.us = icmp eq i32 %i.ak, 0
  br i1 %.not67.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !3044

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split85.us
  %i.al = icmp eq i8 %i.w, 0
  br i1 %i.al, label %.thread65, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.am = add i64 %.022.i84.us, -1                ; 2 uses
  %i.an = add i64 %i.e, %.024.i83.us
  %.not.i.us = icmp eq i64 %i.am, 0
  br i1 %.not.i.us, label %.thread65, label %.split85.us, !llvm.loop !3045

.split85:                                         ; preds = %bb.b, %bb.f
  %.022.i84 = phi i64 [ %i.bn, %bb.f ], [ %i.j, %bb.b ]
  %.024.i83 = phi i64 [ %i.bo, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i83, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.ao ; 3 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16     ; 2 uses
  %i.ar = icmp eq <16 x i8> %i.aq, %i.h
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 4095                     ; 2 uses
  %.not6775 = icmp eq i16 %i.at, 0
  %i.au = extractelement <16 x i8> %i.aq, i64 15
  br i1 %.not6775, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split85
  %i.av = zext nneg i16 %i.at to i32
  %i.aw = icmp ne ptr %i.ap, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.040.076 = phi i32 [ %i.av, %.lr.ph ], [ %i.ba, %.critedge.i.backedge ] ; 3 uses
  %i.ay = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.076, i1 true)
  %i.az = add nuw nsw i32 %.sroa.040.076, 4095
  %i.ba = and i32 %i.az, %.sroa.040.076           ; 2 uses
  %i.bb = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !186
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !121
  %i.bi = icmp eq i64 %.fr90, %i.bh
  br i1 %i.bi, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !119
  %i.bk = load ptr, ptr %4, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %.fr90)
  %i.bl = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not67 = icmp eq i32 %i.ba, 0
  br i1 %.not67, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !3044

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split85
  %i.bm = icmp eq i8 %i.au, 0
  br i1 %i.bm, label %.thread65, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bn = add i64 %.022.i84, -1                   ; 2 uses
  %i.bo = add i64 %i.e, %.024.i83
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %.thread65, label %.split85, !llvm.loop !3045

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.ab, %bb.c ], [ %i.bb, %.split ] ; 2 uses
  %i.bp = phi i64 [ %i.q, %bb.c ], [ %i.ao, %.split ]
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.us-phi
  br label %bb.n

.thread65:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %..thread65_crit_edge
  %.pre-phi106 = phi i64 [ %.pre105, %..thread65_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ]
  %i.bt = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.d ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.f ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %.0.copyload.i.i = load i16, ptr %i.bu, align 1
  %i.bv = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bw = add i64 %.pre-phi106, -1
  %i.bx = lshr i64 %i.bw, 12
  %i.by = add nuw nsw i64 %i.bx, 1
  %i.bz = mul i64 %i.by, %i.bv                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.bz
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread65
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi106, i64 noundef %i.bv, i64 noundef %i.bz)
  %.pre102 = load ptr, ptr %i.ca, align 8, !tbaa !329
  %.pre103 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre107 = and i64 %.pre103, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.g
  %.pre-phi108 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre107, %bb.g ] ; 2 uses
  %i.cb = phi ptr [ %i.bt, %.thread65 ], [ %.pre102, %bb.g ] ; 3 uses
  %i.cc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi108) ; 2 uses
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load <16 x i8>, ptr %i.cd, align 16, !tbaa !120
  %i.cf = icmp slt <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = and i16 %i.cg, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ch, 4095
  br i1 %.not68, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.ci = shl i64 %3, 1
  %i.cj = or disjoint i64 %i.ci, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ck = phi i64 [ %i.cc, %bb.h ], [ %i.cq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.cp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 15 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !686 ; 2 uses
  %.not.i31 = icmp eq i8 %i.cn, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = add i8 %i.cn, 1
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !686
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cp = add i64 %i.cj, %.028                    ; 2 uses
  %i.cq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cp, i64 range(i64 0, 256) %.pre-phi108) ; 2 uses
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cq ; 3 uses
  %i.cs = load <16 x i8>, ptr %i.cr, align 16     ; 2 uses
  %i.ct = icmp slt <16 x i8> %i.cs, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %i.cv = and i16 %i.cu, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.cv, 4095
  br i1 %.not69, label %bb.i, label %bb.k, !llvm.loop !3046

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.cw = extractelement <16 x i8> %i.cs, i64 14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 14
  %i.cy = add i8 %i.cw, 16
  store i8 %i.cy, ptr %i.cx, align 2, !tbaa !688
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.ch, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cv, %bb.k ]
  %.1 = phi ptr [ %i.cd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cr, %bb.k ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 4095
  %i.cz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.da = zext nneg i16 %i.cz to i64              ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !120
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.de = trunc i64 %3 to i8
  store i8 %i.de, ptr %i.db, align 1, !tbaa !120
  %i.df = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.da ; 2 uses
  %i.dh = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dh)
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.dg, i64 %i.da, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink132 = phi ptr [ %i.bs, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dg, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.da, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink132, ptr %0, align 8, !tbaa !197
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !135
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.di, align 8, !tbaa !691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268
  %i.c = lshr i64 %i.b, 8                         ; 2 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !186
  %i.e = load ptr, ptr %0, align 8, !tbaa !327, !nonnull !132, !noundef !132
  %i.f = and i64 %i.c, 4294967295
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !116
  %i.i = load ptr, ptr %5, align 8, !tbaa !119    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !121  ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.376) #42
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !122

.noexc6.i.i.i.i:                                  ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc2 unwind label %bb.f

.noexc2:                                          ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #41
          to label %.noexc3 unwind label %bb.f    ; 2 uses

.noexc3:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.g, align 8, !tbaa !119
  store i64 %i.k, ptr %i.h, align 8, !tbaa !120
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc3, %bb.a
end_hunk_17
begin_hunk_18_@_ZSt10_ConstructIN8facebook5velox4core16MarkDistinctNodeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS9_RSt6vectorISt10shared_ptrIKNS2_20FieldAccessTypedExprEESaISF_EERSC_IKNS2_8PlanNodeEEEEvPT_DpOT0_:bb.a
  %i.bx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bx, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  %i.by = load ptr, ptr %7, align 8, !tbaa !181   ; 3 uses
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cr, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i ], [ %i.by, %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cc, align 8, !tbaa !204
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !205
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !139
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #40, !inline_history !25
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !139
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #40, !inline_history !25
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.y ], [ %i.cp, %bb.z ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.aa, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i, !prof !122

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #40
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.w, %.lr.ph.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.cr, %i.bz
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !181
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.by, %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !182
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #43
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i, %bb.ab
  %i.cx = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.m
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit
  %i.cz = load i64, ptr %i.m, align 8, !tbaa !120
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.db = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.a
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !120
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  ret void

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #40
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.ae ], [ %i.dg, %bb.ad ] ; 2 uses
  %i.di = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.m
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.af
  %i.dk = load i64, ptr %i.m, align 8, !tbaa !120
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.df, %bb.ac ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %.pn, %bb.af ]
  %i.dm = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.a
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.do = load i64, ptr %i.a, align 8, !tbaa !120
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE19tryEmplaceValueImplIS9_JS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1428") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.i, %bb.b ], [ %i.ah, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.ai, %bb.f ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !532
  %i.k = load i64, ptr %i.a, align 8, !tbaa !268
  %i.l = and i64 %i.k, 255
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.l)
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.n, align 16, !tbaa !120
  %i.r = icmp eq <16 x i8> %i.q, %i.g
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.u, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.040.0, 16383
  %i.y = and i32 %i.x, %.sroa.040.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.z
  %i.ab = load ptr, ptr %4, align 8, !tbaa !527
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !527
  %i.ad = tail call noundef zeroext i1 @_ZNK8facebook5velox4core18ITypedExprComparerclEPKNS1_10ITypedExprES5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ab, ptr noundef %i.ac)
  br i1 %i.ad, label %bb.g, label %.critedge.i, !prof !198, !llvm.loop !62

bb.e:                                             ; preds = %.critedge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !537
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.thread64.loopexit, label %bb.f, !prof !198

bb.f:                                             ; preds = %bb.e
  %i.ah = add i64 %.023.i75, -1                   ; 2 uses
  %i.ai = add i64 %i.d, %.025.i74
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %.thread64.loopexit, label %bb.c, !llvm.loop !63

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.z
  br label %bb.p

.thread64.loopexit:                               ; preds = %bb.e, %bb.f
  %.pre = load i64, ptr %i.a, align 8, !tbaa !268
  br label %.thread64

.thread64:                                        ; preds = %.thread64.loopexit, %bb.a
  %i.ak = phi i64 [ %.pre, %.thread64.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.al = lshr i64 %i.ak, 8                       ; 2 uses
  %i.am = and i64 %i.ak, 255                      ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !532   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !120
  %i.aq = and i8 %i.ap, 15
  %i.ar = zext nneg i8 %i.aq to i64               ; 2 uses
  %i.as = shl i64 %i.ar, %i.am                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.al, %i.as
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.at = shl nuw i64 1, %i.am
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.al, i64 noundef %i.at, i64 noundef %i.ar, i64 noundef %i.as)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !532
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %i.am, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.an, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !120
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.ba, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !537 ; 2 uses
  %.not.i31 = icmp eq i8 %i.bg, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !537
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.028                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bk = getelementptr inbounds nuw [128 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bo, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !3145

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !823
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !120
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE6setTagEmm.exit: ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bt ; 3 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load ptr, ptr %5, align 8, !tbaa !527
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !527
  %i.cc = lshr i64 %i.bt, 1
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = or i64 %i.cc, %i.cd                     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !533
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE6setTagEmm.exit
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !135
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox4core10ITypedExprEE6setTagEmm.exit, %bb.o
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.cj = and i64 %i.ci, -256
  %i.ck = add i64 %i.cj, 256
  %i.cl = and i64 %i.ci, 255
  %i.cm = or disjoint i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !268
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.aj, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !3147
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !135
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !3150
  ret void
}

declare noundef i64 @_ZNK8facebook5velox4core16ITypedExprHasherclEPKNS1_10ITypedExprE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK8facebook5velox4core18ITypedExprComparerclEPKNS1_10ITypedExprES5_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox4core10ITypedExprEvNS6_16ITypedExprHasherENS6_18ITypedExprComparerEvEEE25computeChunkCountAndScaleEmbb.exit

end_hunk_18
begin_hunk_19_@_ZN8facebook5velox4core11OrderByNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISF_EERKSB_INS1_9SortOrderESaISK_EEbRKSC_IKNS1_8PlanNodeEE:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #40
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.az, %.lr.ph.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ih, %i.hp
  br i1 %.not.i.i.i72, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ct, align 8, !tbaa !200
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.ax
  %i.ii = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ho, %bb.ax ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i
  %i.ij = load ptr, ptr %i.df, align 8, !tbaa !201
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.im) #43
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit: ; preds = %bb.be, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i, %.body
  %.pn35.pn = phi { ptr, i32 } [ %i.dp, %.body ], [ %.pn35, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i ], [ %.pn35, %bb.be ] ; 2 uses
  %i.in = load ptr, ptr %i.az, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit
  %i.io = load ptr, ptr %i.bl, align 8, !tbaa !306
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ir) #43
  br label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit: ; preds = %bb.bf, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit, %bb.aa
  %.pn35.pn.pn = phi { ptr, i32 } [ %i.er, %bb.aa ], [ %.pn35.pn, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit ], [ %.pn35.pn, %bb.bf ] ; 2 uses
  %i.is = load ptr, ptr %i.y, align 8, !tbaa !181 ; 3 uses
  %i.it = load ptr, ptr %i.ai, align 8, !tbaa !180 ; 2 uses
  %.not4.i.i.i75 = icmp eq ptr %i.is, %i.it
  br i1 %.not4.i.i.i75, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i
  %.05.i.i.i77 = phi ptr [ %i.jl, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i ], [ %i.is, %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i77, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i76
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.iw, align 8, !tbaa !204
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !205
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !139
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #40, !inline_history !25
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !139
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #40, !inline_history !25
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i.i79 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i.i.i.i.i.i79, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i80

bb.bk:                                            ; preds = %bb.bi
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i80: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i.i.i81 = phi i32 [ %i.iz, %bb.bj ], [ %i.jj, %bb.bk ]
  %i.jk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i81, 1
  br i1 %i.jk, label %bb.bl, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i, !prof !122

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #40
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i80, %bb.bh, %.lr.ph.i.i.i76
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i.i.i77, i64 16 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.jl, %i.it
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i76, !llvm.loop !8

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEEvPT_.exit.i.i.i
  %.pr.i83 = load ptr, ptr %i.y, align 8, !tbaa !181
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit
  %i.jm = phi ptr [ %.pr.i83, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.is, %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i84 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i1.i84, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i
  %i.jn = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jq) #43
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit: ; preds = %bb.bm, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i, %bb.z
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.z ], [ %.pn35.pn.pn, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i ], [ %.pn35.pn.pn, %bb.bm ]
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core8PlanNodeE, i64 16), ptr %0, align 8, !tbaa !139
  %i.jr = load ptr, ptr %i.o, align 8, !tbaa !119 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.p
  br i1 %i.js, label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit
  %i.jt = load i64, ptr %i.p, align 8, !tbaa !120
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #43, !inline_history !234
  br label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit

_ZN8facebook5velox4core8PlanNodeD2Ev.exit:        ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn35.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE19tryEmplaceValueImplIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EEST_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSY_ISU_SM_EEEEEbESY_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1550") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !702   ; 5 uses
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %.fr92 = freeze i64 %i.l                        ; 3 uses
  %i.m = icmp eq i64 %.fr92, 0
  br i1 %i.m, label %.split87.us, label %.split87, !llvm.loop !83

.split87.us:                                      ; preds = %bb.b, %bb.d
  %.023.i86.us = phi i64 [ %i.ai, %bb.d ], [ %i.j, %bb.b ]
  %.025.i85.us = phi i64 [ %i.aj, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i85.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.q, i32 0, i32 3, i32 1)
  %i.r = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.s = icmp eq <16 x i8> %i.r, %i.h
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = and i16 %i.t, 16383                      ; 2 uses
  %.not6977.us = icmp eq i16 %i.u, 0
  %i.v = extractelement <16 x i8> %i.r, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split87.us
  %i.w = zext nneg i16 %i.u to i32
  %i.x = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.042.078.us.us = phi i32 [ %i.w, %.lr.ph.us ], [ %i.ag, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.078.us.us, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !641
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !121
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread, label %.critedge.i.backedge.us.us, !prof !284

.critedge.i.backedge.us.us:                       ; preds = %bb.c
  %i.af = add nuw nsw i32 %.sroa.042.078.us.us, 16383
  %i.ag = and i32 %i.af, %.sroa.042.078.us.us     ; 2 uses
  %.not69.us.us = icmp eq i32 %i.ag, 0
  br i1 %.not69.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.c, !llvm.loop !83

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split87.us
  %i.ah = icmp eq i8 %i.v, 0
  br i1 %i.ah, label %.thread67, label %bb.d, !prof !198

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.ai = add i64 %.023.i86.us, -1                ; 2 uses
  %i.aj = add i64 %i.e, %.025.i85.us
  %.not.i.us = icmp eq i64 %i.ai, 0
  br i1 %.not.i.us, label %.thread67, label %.split87.us, !llvm.loop !84

.split87:                                         ; preds = %bb.b, %bb.f
  %.023.i86 = phi i64 [ %i.bi, %bb.f ], [ %i.j, %bb.b ]
  %.025.i85 = phi i64 [ %i.bj, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.ak = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i85, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.an, i32 0, i32 3, i32 1)
  %i.ao = load <16 x i8>, ptr %i.al, align 16     ; 2 uses
  %i.ap = icmp eq <16 x i8> %i.ao, %i.h
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = and i16 %i.aq, 16383                    ; 2 uses
  %.not6977 = icmp eq i16 %i.ar, 0
  %i.as = extractelement <16 x i8> %i.ao, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split87
  %i.at = zext nneg i16 %i.ar to i32
  %i.au = icmp ne ptr %i.al, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.au)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.042.078 = phi i32 [ %i.at, %.lr.ph ], [ %i.ax, %.critedge.i.backedge ] ; 3 uses
  %i.av = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.078, i1 true)
  %i.aw = add nuw nsw i32 %.sroa.042.078, 16383
  %i.ax = and i32 %i.aw, %.sroa.042.078           ; 2 uses
  %i.ay = zext nneg i32 %i.av to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !641 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !121
  %i.bd = icmp eq i64 %.fr92, %i.bc
  br i1 %i.bd, label %.split, label %.critedge.i.backedge, !prof !284

.split:                                           ; preds = %bb.e
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !119
  %i.bf = load ptr, ptr %4, align 8, !tbaa !119
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bf, ptr %i.be, i64 %.fr92)
  %i.bg = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bg, label %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread, label %.critedge.i.backedge, !prof !286

.critedge.i.backedge:                             ; preds = %.split, %bb.e
  %.not69 = icmp eq i32 %i.ax, 0
  br i1 %.not69, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !83

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split87
  %i.bh = icmp eq i8 %i.as, 0
  br i1 %i.bh, label %.thread67, label %bb.f, !prof !198

bb.f:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bi = add i64 %.023.i86, -1                   ; 2 uses
  %i.bj = add i64 %i.e, %.025.i85
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %.thread67, label %.split87, !llvm.loop !84

_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread: ; preds = %.split, %bb.c
  %.us-phi = phi i64 [ %i.z, %bb.c ], [ %i.ay, %.split ] ; 2 uses
  %i.bk = phi i64 [ %i.n, %bb.c ], [ %i.ak, %.split ]
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.us-phi
  br label %bb.n

.thread67:                                        ; preds = %bb.f, %.critedge.i._crit_edge.split, %bb.d, %.critedge.i._crit_edge.split.us.us, %bb.a
  %.pre-phi108 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.d ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.f ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !120
  %i.bq = and i8 %i.bp, 15
  %i.br = zext nneg i8 %i.bq to i64               ; 2 uses
  %i.bs = shl i64 %i.br, %.pre-phi108             ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.bs
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.bt = shl nuw i64 1, %.pre-phi108
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.bt, i64 noundef %i.br, i64 noundef %i.bs)
  %.pre104 = load ptr, ptr %1, align 8, !tbaa !702
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !268
  %.pre106 = and i64 %.pre105, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi108, %.thread67 ], [ %.pre106, %bb.g ] ; 2 uses
  %i.bu = phi ptr [ %.pre, %.thread67 ], [ %.pre104, %bb.g ] ; 3 uses
  %i.bv = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bw = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load <16 x i8>, ptr %i.bw, align 16, !tbaa !120
  %i.by = icmp slt <16 x i8> %i.bx, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16
  %i.ca = and i16 %i.bz, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.ca, 16383
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit
  %i.cb = shl i64 %3, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.cd = phi i64 [ %i.bv, %bb.h ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit ]
  %i.ce = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 15 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !835 ; 2 uses
  %.not.i33 = icmp eq i8 %i.cg, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = add i8 %i.cg, 1
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !835
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ci = add i64 %i.cc, %.030                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ci, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %i.cj ; 3 uses
  %i.cl = load <16 x i8>, ptr %i.ck, align 16     ; 2 uses
  %i.cm = icmp slt <16 x i8> %i.cl, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16
  %i.co = and i16 %i.cn, 16383                    ; 2 uses
  %.not71 = icmp eq i16 %i.co, 16383
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !3225

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE25incrOutboundOverflowCountEv.exit
  %i.cp = extractelement <16 x i8> %i.cl, i64 14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 14
  %i.cr = add i8 %i.cp, 16
  store i8 %i.cr, ptr %i.cq, align 2, !tbaa !836
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit ], [ %i.co, %bb.k ]
  %.1 = phi ptr [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE16reserveForInsertEm.exit ], [ %i.ck, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64              ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ct ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !120
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.106) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit: ; preds = %bb.l
  %i.cx = trunc i64 %3 to i8
  store i8 %i.cx, ptr %i.cu, align 1, !tbaa !120
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ct ; 2 uses
  %i.da = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.da)
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EEST_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISU_SM_EEEEES10_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cz, i64 %i.ct, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit
  %.sink132 = phi ptr [ %i.bn, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread ], [ %i.cz, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread ], [ %i.ct, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE14keyMatchesItemIS8_EEbRKT_RKPSt4pairIKS8_SL_E.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEE6setTagEmm.exit ]
  store ptr %.sink132, ptr %0, align 8, !tbaa !639
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !135
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.db, align 8, !tbaa !3228
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EEST_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISU_SM_EEEEES10_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE20constructValueAtItemIRNS1_8F14TableISM_EEJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESU_IJEEEEEvOT_PPSt4pairISV_SL_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = tail call ptr @__cxa_begin_catch(ptr %i.b) #40 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE14eraseBlankColdEPSO_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEESS_ImmE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKSA_SN_EEEEEST_ImmEEJSQ_RSZ_RS10_ES11_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !3229

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKSA_SN_EEEEEST_ImmEEJSQ_RSZ_RS10_ES11_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %bb.a, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKSA_SN_EEEEEST_ImmEEJSQ_RSZ_RS10_ES11_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.g = and i64 %2, 255                          ; 2 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.g, 1
  %i.j = ptrtoint ptr %1 to i64
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !698
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.k, ptr %i.l, align 8, !tbaa !135
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS9_SM_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSA_EESU_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISV_SN_EEEEES11_ImmEDpOT_EUlvE_PFvPSP_S16_S17_EJS1C_RS16_RS17_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !268  ; 2 uses
  %i.q = and i64 %i.p, -256
  %i.r = add i64 %i.q, 256
  %i.s = and i64 %i.p, 255
  %i.t = or disjoint i64 %i.r, %i.s
  store i64 %i.t, ptr %i.o, align 8, !tbaa !268
end_hunk_19
