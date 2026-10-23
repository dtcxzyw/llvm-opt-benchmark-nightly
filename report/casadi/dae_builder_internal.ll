Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/dae_builder_internal?download=true
inline.NumInlined: 12009
inline.NumDeleted: 2568
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK6casadi18DaeBuilderInternal10transitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.x ], [ %i.ee, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.body
  %.pn12.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn.pn, %.body ], [ %.pn, %bb.y ]
  call void @_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn12.pn.pn.pn.pn

bb.aa:                                            ; preds = %_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev.exit, %bb.d, %bb.b
  ret void
}

declare void @_ZN6casadi11GenericTypeC1Eb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.391", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.394", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !260 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !716

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

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

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %1, ptr %2, align 8, !tbaa !61, !alias.scope !719
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

declare void @_ZN6casadi13CodeGeneratorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SA_EEE(ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #9

declare void @_ZN6casadi13CodeGenerator3addERKNS_8FunctionEb(ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #9

declare void @_ZNK6casadi8Function7forwardEx(ptr dead_on_unwind writable sret(%"class.casadi::Function") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare void @_ZNK6casadi8Function7reverseEx(ptr dead_on_unwind writable sret(%"class.casadi::Function") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare void @_ZN6casadi13CodeGenerator8generateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54   ; 3 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !48, !alias.scope !722
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !54, !alias.scope !722
  store i8 0, ptr %i.e, align 8, !tbaa !53, !alias.scope !722
  %i.g = add i64 %i.d, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !54, !alias.scope !722
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !54, !alias.scope !722
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.718) #29
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !52, !alias.scope !722 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !53, !alias.scope !722
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi18DaeBuilderInternal16generate_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13CodeGeneratorE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1017) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(3289) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.18", align 8    ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::vector.44", align 8   ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52, !noalias !728
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54, !noalias !728 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !48, !alias.scope !729
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8, !tbaa !54, !alias.scope !729
  store i8 0, ptr %i.i, align 8, !tbaa !53, !alias.scope !729
  %i.k = add i64 %i.h, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !54, !alias.scope !729
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !54, !alias.scope !729
  %i.q = add i64 %i.p, -4611686018427387897
  %i.r = icmp ult i64 %i.q, 7
  br i1 %i.r, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.718) #29
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.191, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !52, !alias.scope !729 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.i, align 8, !tbaa !53, !alias.scope !729
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit249, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn64.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %bb.c ], [ %.pn64.pn.pn.pn, %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit249 ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN6casadi10Filesystem12ofstream_ptrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 16)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.y = load ptr, ptr %4, align 8, !tbaa !730    ; 30 uses
  invoke void @_ZN6casadi13CodeGenerator11stream_openERSob(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.192, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.193, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !54
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.194, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.196, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !145
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.ao)
          to label %_ZNSolsEm.exit unwind label %bb.h

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZNSolsEm.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.197, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !233 ; 2 uses
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %.not8.i = icmp eq ptr %i.as, %i.at
  br i1 %.not8.i, label %_ZNK6casadi18DaeBuilderInternal5n_memEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %.lr.ph.i
  %.010.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 ]
  %.sroa.05.09.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !147
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97
  %i.ax = add i64 %i.aw, %.010.i                  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, %i.at
  br i1 %.not.i, label %_ZNK6casadi18DaeBuilderInternal5n_memEv.exit, label %.lr.ph.i

_ZNK6casadi18DaeBuilderInternal5n_memEv.exit:     ; preds = %.lr.ph.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %.0.lcssa.i = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 ], [ %i.ax, %.lr.ph.i ]
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %.0.lcssa.i)
          to label %_ZNSolsEm.exit75 unwind label %bb.h

_ZNSolsEm.exit75:                                 ; preds = %_ZNK6casadi18DaeBuilderInternal5n_memEv.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZNSolsEm.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  invoke void @_ZNK6casadi13CodeGenerator7sz_workERmS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(3289) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.f unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.198, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %bb.f
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !50
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.bc)
          to label %_ZNSolsEm.exit78 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit78:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZNSolsEm.exit78
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.199, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !50
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef %i.bg)
          to label %_ZNSolsEm.exit81 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit81:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZNSolsEm.exit81
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.200, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !50
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i64 noundef %i.bk)
          to label %_ZNSolsEm.exit84 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit84:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZNSolsEm.exit84
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.201, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !50
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bo)
          to label %_ZNSolsEm.exit87 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZNK6casadi18DaeBuilderInternal16generate_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13CodeGeneratorE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !53
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.209, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.ei = load ptr, ptr %i.cx, align 8, !tbaa !231
  %i.ej = load ptr, ptr %i.cw, align 8, !tbaa !232 ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = sdiv exact i64 %i.em, 24                ; 2 uses
  %.not.i.i.i.i.i115 = icmp ugt i64 %i.en, 5
  br i1 %.not.i.i.i.i.i115, label %bb.p, label %.invoke

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 120
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 128
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !182
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !184
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 3
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.ev)
          to label %_ZNSolsEm.exit119 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit119:                                ; preds = %bb.p
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %_ZNSolsEm.exit119
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.210, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ez = load ptr, ptr %i.cx, align 8, !tbaa !231
  %i.fa = load ptr, ptr %i.cw, align 8, !tbaa !232 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sdiv exact i64 %i.fd, 24                ; 2 uses
  %.not.i.i.i.i124 = icmp ugt i64 %i.fe, 5
  br i1 %.not.i.i.i.i124, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef 5, i64 noundef %i.fe) #29
          to label %.noexc125 unwind label %bb.af

.noexc125:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 120
  invoke void @_ZN6casadi18DaeBuilderInternal8generateB5cxx11ERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ff)
          to label %bb.s unwind label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.fg = load ptr, ptr %8, align 8, !tbaa !52
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !54
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef %i.fg, i64 noundef %i.fi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128 unwind label %bb.ag ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128: ; preds = %bb.s
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull @.str.208, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.fm = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !53
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.211, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.fs = load ptr, ptr %i.cx, align 8, !tbaa !231
  %i.ft = load ptr, ptr %i.cw, align 8, !tbaa !232 ; 3 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 24                ; 2 uses
  %.not.i.i.i.i.i138 = icmp ugt i64 %i.fx, 2
  br i1 %.not.i.i.i.i.i138, label %bb.t, label %.invoke

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.fy = phi i64 [ 5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 ], [ 6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 ], [ 2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 ]
  %i.fz = phi i64 [ %i.en, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 ], [ %i.dd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 ], [ %i.fx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef %i.fy, i64 noundef %i.fz) #29
          to label %.cont unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !182
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !184
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.gh)
          to label %_ZNSolsEm.exit142 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEm.exit142:                                ; preds = %bb.t
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144: ; preds = %_ZNSolsEm.exit142
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.212, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.gl = load ptr, ptr %i.cx, align 8, !tbaa !231
  %i.gm = load ptr, ptr %i.cw, align 8, !tbaa !232 ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = sdiv exact i64 %i.gp, 24                ; 2 uses
  %.not.i.i.i.i147 = icmp ugt i64 %i.gq, 2
  br i1 %.not.i.i.i.i147, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef 2, i64 noundef %i.gq) #29
          to label %.noexc148 unwind label %bb.ah

.noexc148:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  invoke void @_ZN6casadi18DaeBuilderInternal8generateB5cxx11ERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.gr)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.gs = load ptr, ptr %9, align 8, !tbaa !52
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !54
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef %i.gs, i64 noundef %i.gu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151 unwind label %bb.ai ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151: ; preds = %bb.w
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.208, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.gy = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !53
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.hd = load ptr, ptr %i.cx, align 8, !tbaa !231
  %i.he = load ptr, ptr %i.cw, align 8, !tbaa !232 ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = sdiv exact i64 %i.hh, 24                ; 2 uses
  %.not.i.i.i.i159 = icmp ugt i64 %i.hi, 6
  br i1 %.not.i.i.i.i159, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef 6, i64 noundef %i.hi) #29
          to label %.noexc160 unwind label %15

.noexc160:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !283 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 152
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !283 ; 2 uses
  %.not261280 = icmp eq ptr %i.hk, %i.hm
  br i1 %.not261280, label %._crit_edge284, label %.lr.ph283

.lr.ph283:                                        ; preds = %bb.y
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.aj

._crit_edge284:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.y
  %i.hp = phi ptr [ null, %bb.y ], [ %i.kf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 15 uses
  %i.hq = phi ptr [ null, %bb.y ], [ %i.kh, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 17 uses
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.213, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163 unwind label %15 ; 0 uses

.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144, %_ZNSolsEm.exit142, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121, %_ZNSolsEm.exit119, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZNSolsEm.exit98, %bb.l, %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88, %_ZNSolsEm.exit87, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNSolsEm.exit84, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82, %_ZNSolsEm.exit81, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZNSolsEm.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %lpad.loopexit.split-lp420 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit168

bb.aa:                                            ; preds = %bb.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.ab:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit94, %bb.j
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.ab
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !53
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ht, %bb.aa ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.hu, %bb.ab ] ; 2 uses
  %i.ia = load ptr, ptr %6, align 8, !tbaa !101   ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIdSaIdEED2Ev.exit168, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !118
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit168

_ZNSt6vectorIdSaIdEED2Ev.exit168:                 ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.hs, %bb.z ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit.split-lp263

bb.ad:                                            ; preds = %bb.m, %bb.n
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit105, %bb.o
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.ae
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !53
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.ad
  %.pn47 = phi { ptr, i32 } [ %i.ig, %bb.ad ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.ih, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.loopexit.split-lp263

bb.af:                                            ; preds = %bb.q, %bb.r
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128, %bb.s
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.ag
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !53
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.af
  %.pn49 = phi { ptr, i32 } [ %i.in, %bb.af ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.io, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit.split-lp263

bb.ah:                                            ; preds = %bb.u, %bb.v
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151, %bb.w
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.ai
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !53
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.ah
  %.pn51 = phi { ptr, i32 } [ %i.iu, %bb.ah ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.iv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.loopexit.split-lp263

15:                                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214, %_ZNSolsEm.exit212, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, %_ZNSolsEm.exit195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %._crit_edge284, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %16 = phi ptr [ %i.hp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %i.hp, %_ZNSolsEm.exit212 ], [ %i.hp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.hp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 ], [ %i.hp, %_ZNSolsEm.exit195 ], [ %i.hp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.hp, %._crit_edge284 ], [ null, %bb.x ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ]
  %17 = phi ptr [ %i.hq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %i.hq, %_ZNSolsEm.exit212 ], [ %i.hq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.hq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 ], [ %i.hq, %_ZNSolsEm.exit195 ], [ %i.hq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.hq, %._crit_edge284 ], [ null, %bb.x ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ]
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.aj:                                            ; preds = %.lr.ph283, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.jb = phi ptr [ null, %.lr.ph283 ], [ %i.kh, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %i.jc = phi ptr [ null, %.lr.ph283 ], [ %i.kg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.sroa.0254.0281 = phi ptr [ null, %.lr.ph283 ], [ %i.kf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.jd = phi ptr [ %i.hk, %.lr.ph283 ], [ %i.ki, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !50 ; 3 uses
  %i.jf = load ptr, ptr %i.ai, align 8, !tbaa !144
  %i.jg = load ptr, ptr %i.ah, align 8, !tbaa !145 ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = ashr exact i64 %i.jj, 3                 ; 2 uses
  %.not.i.i.i178 = icmp ult i64 %i.je, %i.jk
  br i1 %.not.i.i.i178, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef %i.je, i64 noundef %i.jk) #29
          to label %.noexc179 unwind label %.loopexit.split-lp

.noexc179:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.je
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !147
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 264
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jc, %.sroa.0254.0281
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i64 %i.jo, ptr %i.jc, align 8, !tbaa !50
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  store ptr %i.jp, ptr %i.hn, align 8, !tbaa !182
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.an:                                            ; preds = %bb.al
  %i.jq = ptrtoint ptr %i.jc to i64
  %i.jr = ptrtoint ptr %i.jb to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 6 uses
  %i.jt = icmp eq i64 %i.js, 9223372036854775800
  br i1 %i.jt, label %bb.ao, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.720) #29
          to label %.noexc181 unwind label %.loopexit.split-lp

.noexc181:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.an
  %i.ju = ashr exact i64 %i.js, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %i.jv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ju ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.ju
  %i.jx = call i64 @llvm.umin.i64(i64 %i.jv, i64 1152921504606846975)
  %i.jy = select i1 %i.jw, i64 1152921504606846975, i64 %i.jx ; 3 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.jy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.jz = shl nuw nsw i64 %i.jy, 3
  %i.ka = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jz) #32
          to label %.noexc182 unwind label %.loopexit ; 5 uses

.noexc182:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.js ; 2 uses
  store i64 %i.jo, ptr %i.kb, align 8, !tbaa !50
  %i.kc = icmp sgt i64 %i.js, 0
  br i1 %i.kc, label %bb.ap, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ap:                                            ; preds = %.noexc182
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ka, ptr align 8 %i.jb, i64 %i.js, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ap, %.noexc182
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.js) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.aq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ka, ptr %10, align 8, !tbaa !184
  store ptr %i.kd, ptr %i.hn, align 8, !tbaa !182
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jy ; 2 uses
  store ptr %i.ke, ptr %i.ho, align 8, !tbaa !183
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.am
  %i.kf = phi ptr [ %.sroa.0254.0281, %bb.am ], [ %i.ke, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.kg = phi ptr [ %i.jp, %bb.am ], [ %i.kd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.kh = phi ptr [ %i.jb, %bb.am ], [ %i.ka, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %.not261 = icmp eq ptr %i.ki, %i.hm
  br i1 %.not261, label %._crit_edge284, label %bb.aj

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.ak, %bb.ao
  %19 = phi ptr [ %.sroa.0254.0281, %bb.ak ], [ %i.jc, %bb.ao ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163: ; preds = %._crit_edge284
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN6casadi18DaeBuilderInternal8generateB5cxx11ERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163
  %i.kj = load ptr, ptr %11, align 8, !tbaa !52
  %i.kk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !54
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.kj, i64 noundef %i.kl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184 unwind label %bb.ay ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184: ; preds = %bb.ar
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.208, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
  %i.kp = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !53
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.214, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 unwind label %15 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !182
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !184
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = ashr exact i64 %i.lb, 3
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.lc)
          to label %_ZNSolsEm.exit195 unwind label %15 ; 3 uses

_ZNSolsEm.exit195:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %15 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %_ZNSolsEm.exit195
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull @.str.215, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %15 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN6casadi18DaeBuilderInternal8generateB5cxx11ERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %i.kv)
          to label %bb.as unwind label %bb.az

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.lg = load ptr, ptr %12, align 8, !tbaa !52
  %i.lh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !54
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef %i.lg, i64 noundef %i.li)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201 unwind label %bb.ba ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201: ; preds = %bb.as
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef nonnull @.str.208, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.lm = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !53
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.216, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210 unwind label %15 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !182
  %i.lv = load ptr, ptr %i.ls, align 8, !tbaa !184
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = ashr exact i64 %i.ly, 3
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.lz)
          to label %_ZNSolsEm.exit212 unwind label %15 ; 3 uses

_ZNSolsEm.exit212:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 unwind label %15 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214: ; preds = %_ZNSolsEm.exit212
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull @.str.217, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216 unwind label %15 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN6casadi18DaeBuilderInternal8generateB5cxx11ERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %bb.at unwind label %bb.bb

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216
  %i.md = load ptr, ptr %13, align 8, !tbaa !52
  %i.me = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !54
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef %i.md, i64 noundef %i.mf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218 unwind label %bb.bc ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218: ; preds = %bb.at
  %i.mh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mg, ptr noundef nonnull @.str.208, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218
  %i.mi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mg, ptr noundef nonnull @.str.195, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
  %i.mj = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !53
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN6casadi13CodeGenerator11fmu_helpersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.mo = load ptr, ptr %14, align 8, !tbaa !52
  %i.mp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !54
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.mo, i64 noundef %i.mq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit227 unwind label %bb.be ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit227: ; preds = %bb.au
  %i.ms = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit227
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !53
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  invoke void @_ZN6casadi13CodeGenerator12stream_closeERSob(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i1 noundef zeroext false)
          to label %bb.av unwind label %15

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %.not.i.i.i231 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i231, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mx = ptrtoint ptr %i.hp to i64
  %i.my = ptrtoint ptr %i.hq to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.mz) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.na = load ptr, ptr %4, align 8, !tbaa !730   ; 3 uses
  %.not.i232 = icmp eq ptr %i.na, null
  br i1 %.not.i232, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit, label %_ZNKSt14default_deleteISoEclEPSo.exit.i

_ZNKSt14default_deleteISoEclEPSo.exit.i:          ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !63
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(8) %i.na) #30, !inline_history !727
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNKSt14default_deleteISoEclEPSo.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184, %bb.ar
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.ay
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !53
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.ax
  %.pn53 = phi { ptr, i32 } [ %i.ne, %bb.ax ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %i.nf, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bf

bb.az:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201, %bb.as
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nn = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.np = icmp eq ptr %i.nn, %i.no
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.ba
  %i.nq = load i64, ptr %i.no, align 8, !tbaa !53
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236, %bb.az
  %.pn55 = phi { ptr, i32 } [ %i.nl, %bb.az ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236 ], [ %i.nm, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bf

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218, %bb.at
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.bc
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !53
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.ny) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.bb
  %.pn57 = phi { ptr, i32 } [ %i.ns, %bb.bb ], [ %i.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %i.nt, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.bf

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.be:                                            ; preds = %bb.au
  %i.oa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ob = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.be
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !53
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.bd
  %.pn59 = phi { ptr, i32 } [ %i.nz, %bb.bd ], [ %i.oa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.oa, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit, %.loopexit.split-lp, %15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %20 = phi ptr [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %16, %15 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %i.jc, %.loopexit ], [ %19, %.loopexit.split-lp ]
  %21 = phi ptr [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %17, %15 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %i.jb, %.loopexit ], [ %i.jb, %.loopexit.split-lp ] ; 3 uses
  %.pn61.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %18, %15 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i245 = icmp eq ptr %21, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorImSaImEED2Ev.exit246, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.og = ptrtoint ptr %20 to i64
  %i.oh = ptrtoint ptr %21 to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %i.oi) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit246

_ZNSt6vectorImSaImEED2Ev.exit246:                 ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.loopexit.split-lp263

.loopexit.split-lp263:                            ; preds = %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIdSaIdEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt6vectorImSaImEED2Ev.exit246
  %.pn64.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit168 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %.pn61.pn, %_ZNSt6vectorImSaImEED2Ev.exit246 ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %lpad.loopexit.split-lp420, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp263, %bb.h
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %.loopexit.split-lp263 ], [ %i.bw, %bb.h ] ; 2 uses
  %i.oj = load ptr, ptr %4, align 8, !tbaa !730   ; 3 uses
  %.not.i247 = icmp eq ptr %i.oj, null
  br i1 %.not.i247, label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit249, label %_ZNKSt14default_deleteISoEclEPSo.exit.i248

_ZNKSt14default_deleteISoEclEPSo.exit.i248:       ; preds = %bb.bh
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !63
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(8) %i.oj) #30, !inline_history !727
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit249

_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit249: ; preds = %_ZNKSt14default_deleteISoEclEPSo.exit.i248, %bb.bh, %bb.g
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.g ], [ %.pn64.pn.pn, %bb.bh ], [ %.pn64.pn.pn, %_ZNKSt14default_deleteISoEclEPSo.exit.i248 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.on = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.i
  br i1 %i.oo, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEED2Ev.exit249
  %i.op = load i64, ptr %i.i, align 8, !tbaa !53
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #31
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi13CodeGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(3289) dereferenceable(3289) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !739  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !53
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #31
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !731

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !738
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !740
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #31
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !743 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !744 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ak, %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i ], [ %i.ab, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !746 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !747
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #31
  br label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i:  ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ak, %i.ad
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !732

_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.aa, align 8, !tbaa !743
  br label %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %i.al = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ab, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !748
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #31
  br label %_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !751 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !752 ; 2 uses
  %.not4.i.i.i8 = icmp eq ptr %i.as, %i.au
  br i1 %.not4.i.i.i8, label %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i
  %.05.i.i.i10 = phi ptr [ %i.bb, %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i ], [ %i.as, %_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i10, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i.i.i.i11 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i11, label %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i10, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #31
  br label %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i:  ; preds = %bb.f, %.lr.ph.i.i.i9
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i10, i64 24 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bb, %i.au
  br i1 %.not.i.i.i12, label %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i9, !llvm.loop !733

_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i
  %.pr.i13 = load ptr, ptr %i.ar, align 8, !tbaa !751
  br label %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev.exit
  %i.bc = phi ptr [ %.pr.i13, %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.as, %_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i14, label %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit, label %bb.g
end_hunk_1
begin_hunk_2_@_ZN6casadi18DaeBuilderInternal9eliminateENS_8CategoryE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.l
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 4 uses
  %.632 = phi i1 [ true, %bb.l ], [ %.430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !53
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.bw = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread: ; preds = %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !53
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.cf = load i64, ptr %i.bx, align 8, !tbaa !53
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.cg) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.632, label %bb.r, label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.632, label %bb.r, label %bb.br

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn190.ph = phi { ptr, i32 } [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn.pn.pn.pn.pn.pn.pn.pn190 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn190.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.o) #30
  br label %bb.br

bb.s:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.ci = zext nneg i32 %1 to i64                 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !231
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !232 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24                ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.cp, %i.ci
  br i1 %.not.i.i.i.i.i, label %_ZNK6casadi18DaeBuilderInternal4sizeENS_8CategoryE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef %i.ci, i64 noundef %i.cp) #29
  unreachable

_ZNK6casadi18DaeBuilderInternal4sizeENS_8CategoryE.exit: ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ci ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !182
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !184
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %_ZNK6casadi18DaeBuilderInternal4sizeENS_8CategoryE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i8 1, ptr %i.cv, align 8, !tbaa !229
  tail call void @_ZN6casadi18DaeBuilderInternal4sortENS_8CategoryE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !233 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !233 ; 2 uses
  %.not227 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.w

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.dc = load ptr, ptr %i.cj, align 8, !tbaa !231
  %i.dd = load ptr, ptr %i.ch, align 8, !tbaa !232 ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = sdiv exact i64 %i.dg, 24                ; 2 uses
  %.not.i.i.i115 = icmp ugt i64 %i.dh, %i.ci
  br i1 %.not.i.i.i115, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef %i.ci, i64 noundef %i.dh) #29
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit
  %.sroa.0180.0228 = phi ptr [ %i.cx, %.lr.ph ], [ %i.dr, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.0180.0228, align 8, !tbaa !147
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 400 ; 3 uses
  %i.dk = invoke noundef zeroext i1 @_ZNK6casadi2MX11is_constantEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  br i1 %i.dk, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !293 ; 4 uses
  %i.dm = load ptr, ptr %i.db, align 8, !tbaa !294
  %.not.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !110
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !110
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %.noexc117 unwind label %bb.ab

.noexc117:                                        ; preds = %bb.z
  %i.do = load ptr, ptr %i.da, align 8, !tbaa !293
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dp, ptr %i.da, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.w
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc117, %bb.aa, %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0180.0228, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dr, %i.cz
  br i1 %.not, label %._crit_edge, label %bb.w

bb.ac:                                            ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.ci ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !182 ; 2 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !184 ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i.i.i, label %.noexc120, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = icmp ugt i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %.noexc.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !106

.noexc.i.i:                                       ; preds = %bb.ad
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc119 unwind label %bb.al

.noexc119:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ad
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #32
          to label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge unwind label %bb.al

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge: ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.ds, align 8, !tbaa !283 ; 3 uses
  %.pre250.a = load ptr, ptr %i.dt, align 8, !tbaa !283 ; 2 uses
  %.pre253 = ptrtoint ptr %.pre250.a to i64
  %.pre254 = ptrtoint ptr %.pre to i64
  %26 = icmp eq ptr %.pre250.a, %.pre
  br label %.noexc120

.noexc120:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge, %bb.ac
  %.pre-phi255 = phi i64 [ %.pre254, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge ], [ %i.dx, %bb.ac ]
  %.pre-phi = phi i64 [ %.pre253, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge ], [ %i.dw, %bb.ac ]
  %.not217234 = phi i1 [ %26, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge ], [ true, %bb.ac ]
  %i.eb = phi ptr [ %.pre, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge ], [ %i.dv, %bb.ac ] ; 2 uses
  %i.ec = phi ptr [ %i.ea, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i..noexc120_crit_edge ], [ null, %bb.ac ] ; 10 uses
  store ptr %i.ec, ptr %13, align 8, !tbaa !184
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dy
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !183
  %i.eg = sub i64 %.pre-phi, %.pre-phi255         ; 4 uses
  %i.eh = icmp sgt i64 %i.eg, 8
  br i1 %i.eh, label %bb.ae, label %bb.af, !prof !102

bb.ae:                                            ; preds = %.noexc120
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ec, ptr align 8 %i.eb, i64 %i.eg, i1 false)
  br label %bb.ah

bb.af:                                            ; preds = %.noexc120
  %i.ei = icmp eq i64 %i.eg, 8
  br i1 %i.ei, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ej = load i64, ptr %i.eb, align 8, !tbaa !50
  store i64 %i.ej, ptr %i.ec, align 8, !tbaa !50
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ek = getelementptr inbounds i8, ptr %i.ec, i64 %i.eg ; 2 uses
  store ptr %i.ek, ptr %i.ed, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNK6casadi18DaeBuilderInternal3varERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.173") align 8 %14, ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.el = invoke noundef i32 @_ZN6casadi20dependent_definitionENS_8CategoryE(i32 noundef %1)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNK6casadi18DaeBuilderInternal6outputENS_14OutputCategoryE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.173") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %i.el)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6casadi2MX18substitute_inplaceERKSt6vectorIS0_SaIS0_EERS3_S6_b(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext false)
          to label %_ZN6casadi18substitute_inplaceERKSt6vectorINS_2MXESaIS1_EERS3_S6_b.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6casadi18substitute_inplaceERKSt6vectorINS_2MXESaIS1_EERS3_S6_b.exit: ; preds = %bb.ak
  %i.em = load ptr, ptr %12, align 8, !tbaa !295  ; 2 uses
  %i.en = load ptr, ptr %i.cw, align 8, !tbaa !233 ; 2 uses
  %i.eo = load ptr, ptr %i.cy, align 8, !tbaa !233 ; 2 uses
  %.not216229 = icmp eq ptr %i.en, %i.eo
  br i1 %.not216229, label %._crit_edge233, label %.lr.ph232

._crit_edge233:                                   ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZN6casadi18substitute_inplaceERKSt6vectorINS_2MXESaIS1_EERS3_S6_b.exit
  %.sroa.0177.0.lcssa = phi ptr [ %i.em, %_ZN6casadi18substitute_inplaceERKSt6vectorINS_2MXESaIS1_EERS3_S6_b.exit ], [ %.sroa.0177.1, %_ZN6casadi2MXaSERKS0_.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !295
  %i.er = icmp eq ptr %.sroa.0177.0.lcssa, %i.eq
  br i1 %i.er, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %._crit_edge233
  br i1 %.not217234, label %._crit_edge238, label %.lr.ph237

bb.al:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %bb.v
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit167

bb.am:                                            ; preds = %bb.ah
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.lr.ph232:                                        ; preds = %_ZN6casadi18substitute_inplaceERKSt6vectorINS_2MXESaIS1_EERS3_S6_b.exit, %_ZN6casadi2MXaSERKS0_.exit
  %.sroa.0174.0231 = phi ptr [ %i.fa, %_ZN6casadi2MXaSERKS0_.exit ], [ %i.en, %_ZN6casadi18substitute_inplaceERKSt6vectorINS_2MXESaIS1_EERS3_S6_b.exit ] ; 2 uses
  %.sroa.0177.0230 = phi ptr [ %.sroa.0177.1, %_ZN6casadi2MXaSERKS0_.exit ], [ %i.em, %_ZN6casadi18substitute_inplaceERKSt6vectorINS_2MXESaIS1_EERS3_S6_b.exit ] ; 3 uses
  %i.ev = load ptr, ptr %.sroa.0174.0231, align 8, !tbaa !147
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 400 ; 2 uses
  %i.ex = invoke noundef zeroext i1 @_ZNK6casadi2MX11is_constantEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %.lr.ph232
  br i1 %i.ex, label %_ZN6casadi2MXaSERKS0_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0177.0230, i64 8
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0177.0230)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.ap, %bb.ao
  %.sroa.0177.1 = phi ptr [ %.sroa.0177.0230, %bb.ao ], [ %i.ey, %bb.ap ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0174.0231, i64 8 ; 2 uses
  %.not216 = icmp eq ptr %i.fa, %i.eo
  br i1 %.not216, label %._crit_edge233, label %.lr.ph232

bb.aq:                                            ; preds = %._crit_edge233
  %i.fb = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.391, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.as unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.5)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.388, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %bb.at
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.392, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !alias.scope !988
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ay unwind label %bb.be

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.bs unwind label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread: ; preds = %bb.aq
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split335

bb.az:                                            ; preds = %bb.as
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.ba:                                            ; preds = %bb.at
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.bb:                                            ; preds = %bb.au
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.bc:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.bd:                                            ; preds = %bb.aw
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.be:                                            ; preds = %bb.ay, %bb.ax
  %.0 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %16, align 8, !tbaa !52   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.be
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !53
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.bd
  %.pn76 = phi { ptr, i32 } [ %i.fh, %bb.bd ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %i.fi, %bb.be ] ; 2 uses
  %.1 = phi i1 [ true, %bb.bd ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.0, %bb.be ] ; 2 uses
  %i.fo = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !53
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.bc
  %.pn76.pn = phi { ptr, i32 } [ %i.fg, %bb.bc ], [ %.pn76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.bc ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.ft = load ptr, ptr %22, align 8, !tbaa !52   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !53
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.bb
  %.pn76.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.bb ], [ %.pn76.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn76.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.bb ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
  %i.fy = load ptr, ptr %23, align 8, !tbaa !52   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !53
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.ba
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.ba ], [ %.pn76.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn76.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.ba ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.gd = load ptr, ptr %17, align 8, !tbaa !52   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !53
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.az
  %.pn76.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.az ], [ %.pn76.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.pn76.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.az ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ] ; 2 uses
  %i.gi = load ptr, ptr %18, align 8, !tbaa !52   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !53
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.gn = load ptr, ptr %19, align 8, !tbaa !52   ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread: ; preds = %bb.ar
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %19, align 8, !tbaa !52   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %.sink.split335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !53
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #31
  br label %.sink.split335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.gw = load i64, ptr %i.go, align 8, !tbaa !53
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br i1 %.5, label %bb.bf, label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br i1 %.5, label %bb.bf, label %.loopexit.split-lp.loopexit.split-lp

.sink.split335:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.thread
  %.pn76.pn.pn.pn.pn.pn.pn202.ph = phi { ptr, i32 } [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.thread ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %.pn76.pn.pn.pn.pn.pn.pn202 = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %.pn76.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.pn76.pn.pn.pn.pn.pn.pn202.ph, %.sink.split335 ]
  call void @__cxa_free_exception(ptr %i.fb) #30
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge238:                                   ; preds = %bb.bm, %.preheader
  %i.gy = load ptr, ptr %15, align 8, !tbaa !292  ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !293 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gy, %i.ha
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge238, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i ], [ %i.gy, %._crit_edge238 ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #30
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.hb, %i.ha
  br i1 %.not.i.i.i144, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !292
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge238
  %i.hc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.gy, %._crit_edge238 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !294
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #31
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.hi = load ptr, ptr %14, align 8, !tbaa !292  ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !293 ; 2 uses
  %.not4.i.i.i145 = icmp eq ptr %i.hi, %i.hk
  br i1 %.not4.i.i.i145, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i151, label %.lr.ph.i.i.i146

.lr.ph.i.i.i146:                                  ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.lr.ph.i.i.i146
  %.05.i.i.i147 = phi ptr [ %i.hl, %.lr.ph.i.i.i146 ], [ %i.hi, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i147) #30
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i147, i64 8 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.hl, %i.hk
  br i1 %.not.i.i.i148, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i149, label %.lr.ph.i.i.i146, !llvm.loop !17

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i149: ; preds = %.lr.ph.i.i.i146
  %.pr.i150 = load ptr, ptr %14, align 8, !tbaa !292
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i151

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i151: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i149, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %i.hm = phi ptr [ %.pr.i150, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i149 ], [ %i.hi, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i152 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i1.i152, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit153, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i151
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !294
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #31
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit153

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit153:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i151, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %.not.i.i.i154 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit153
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.dy) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit153, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.hs = load ptr, ptr %12, align 8, !tbaa !292  ; 3 uses
  %i.ht = load ptr, ptr %i.ep, align 8, !tbaa !293 ; 2 uses
  %.not4.i.i.i155 = icmp eq ptr %i.hs, %i.ht
  br i1 %.not4.i.i.i155, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i161, label %.lr.ph.i.i.i156

.lr.ph.i.i.i156:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i156
  %.05.i.i.i157 = phi ptr [ %i.hu, %.lr.ph.i.i.i156 ], [ %i.hs, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i157) #30
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i157, i64 8 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.hu, %i.ht
  br i1 %.not.i.i.i158, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i159, label %.lr.ph.i.i.i156, !llvm.loop !17

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i159: ; preds = %.lr.ph.i.i.i156
  %.pr.i160 = load ptr, ptr %12, align 8, !tbaa !292
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i161

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i161: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i159, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.hv = phi ptr [ %.pr.i160, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i159 ], [ %i.hs, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i162 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i1.i162, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit163, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i161
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !294
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #31
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit163

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit163:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i161, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.loopexit

.lr.ph237:                                        ; preds = %.preheader, %bb.bm
  %.sroa.0168.0235 = phi ptr [ %i.il, %bb.bm ], [ %i.ec, %.preheader ] ; 2 uses
  %i.ib = load i64, ptr %.sroa.0168.0235, align 8, !tbaa !50 ; 3 uses
  %i.ic = load ptr, ptr %i.cy, align 8, !tbaa !144
  %i.id = load ptr, ptr %i.cw, align 8, !tbaa !145 ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 3                 ; 2 uses
  %.not.i.i.i164 = icmp ult i64 %i.ib, %i.ih
  br i1 %.not.i.i.i164, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph237
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef %i.ib, i64 noundef %i.ih) #29
          to label %.noexc165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc165:                                        ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %.lr.ph237
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ib
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !147
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !103
  invoke void @_ZN6casadi18DaeBuilderInternal10categorizeEmNS_8CategoryE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i64 noundef %i.ik, i32 noundef 9)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0168.0235, i64 8 ; 2 uses
  %.not217 = icmp eq ptr %i.il, %i.ek
  br i1 %.not217, label %._crit_edge238, label %.lr.ph237

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl, %bb.ap, %.lr.ph232, %bb.ak, %bb.bk
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph241, %_ZN6casadi18DaeBuilderInternal7indicesENS_8CategoryE.exit, %_ZNK6casadi18DaeBuilderInternal4sizeENS_8CategoryE.exit, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit163
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %.pn76.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.pn76.pn.pn.pn.pn.pn.pn202, %bb.bf ], [ %lpad.loopexit.split-lp350, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.an
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %i.eu, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #30
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.am
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn, %bb.bn ], [ %i.et, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %.not.i.i.i166 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorImSaImEED2Ev.exit167, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.dy) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit167

_ZNSt6vectorImSaImEED2Ev.exit167:                 ; preds = %bb.bp, %bb.bo, %bb.al
  %.pn84.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.al ], [ %.pn84.pn.pn.pn.pn, %bb.bo ], [ %.pn84.pn.pn.pn.pn, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit167, %bb.ab
  %.pn91 = phi { ptr, i32 } [ %i.dq, %bb.ab ], [ %.pn84.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit167 ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.r, %bb.bq
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.bq ], [ %.pn.pn.pn.pn.pn.pn.pn.pn190, %bb.r ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  resume { ptr, i32 } %.pn91.pn

bb.bs:                                            ; preds = %bb.ay, %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi18DaeBuilderInternal12set_categoryEmNS_8CategoryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1017) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %17 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %1, %i.h
  br i1 %.not.i.i.i, label %_ZN6casadi18DaeBuilderInternal8variableEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.714, i64 noundef %1, i64 noundef %i.h) #29
  unreachable

_ZN6casadi18DaeBuilderInternal8variableEm.exit:   ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 124 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !230  ; 6 uses
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %bb.am, label %bb.c

bb.c:                                             ; preds = %_ZN6casadi18DaeBuilderInternal8variableEm.exit
  switch i32 %2, label %bb.n [
    i32 5, label %bb.d
    i32 2, label %bb.f
    i32 1, label %bb.h
    i32 6, label %bb.j
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %.off = add i32 %i.l, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !103
  tail call void @_ZN6casadi18DaeBuilderInternal15set_variabilityEmNS_11VariabilityE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i64 noundef %i.n, i32 noundef 4)
  br label %bb.am

bb.f:                                             ; preds = %bb.c
  switch i32 %i.l, label %bb.n [
    i32 5, label %bb.g
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.o = load i64, ptr %i.j, align 8, !tbaa !103
  tail call void @_ZN6casadi18DaeBuilderInternal15set_variabilityEmNS_11VariabilityE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i64 noundef %i.o, i32 noundef 2)
  br label %bb.am

bb.h:                                             ; preds = %bb.c
  switch i32 %i.l, label %bb.n [
    i32 5, label %bb.i
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.p = load i64, ptr %i.j, align 8, !tbaa !103
  tail call void @_ZN6casadi18DaeBuilderInternal15set_variabilityEmNS_11VariabilityE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i64 noundef %i.p, i32 noundef 1)
  br label %bb.am

bb.j:                                             ; preds = %bb.c
  %i.q = icmp ne i32 %i.l, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.s = load i8, ptr %i.r, align 8, !range !163
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i64, ptr %i.j, align 8, !tbaa !103
  tail call void @_ZN6casadi18DaeBuilderInternal10categorizeEmNS_8CategoryE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i64 noundef %i.u, i32 noundef 6)
  br label %bb.am

bb.l:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.l, 6
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %i.j, align 8, !tbaa !103
  tail call void @_ZN6casadi18DaeBuilderInternal10categorizeEmNS_8CategoryE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i64 noundef %i.w, i32 noundef 8)
  br label %bb.am

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.f, %bb.c, %bb.l, %bb.j
  %i.x = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.545, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
end_hunk_2
