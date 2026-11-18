Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/field_mask_util?download=true
inline.NumInlined: 1716
inline.NumDeleted: 657
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil20SnakeCaseToCamelCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.h
  %i.y = load i64, ptr %i.d, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37 ]
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.t, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i36 = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35, %bb.i
  %i.ab = phi ptr [ %.pre.i36, %bb.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store i8 %i.e, ptr %i.ac, align 1, !tbaa !47
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38
  %.sink = phi i64 [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !61
  %i.ad = load ptr, ptr %2, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink
  store i8 0, ptr %i.ae, align 1, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.g
  %.2.ph = phi i8 [ 1, %bb.g ], [ 0, %.sink.split ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02645, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.d, %bb.j
  %.not.lcssa.ph = phi i1 [ true, %bb.j ], [ false, %bb.d ], [ false, %bb.b ]
  %.3.ph = phi i8 [ %.2.ph, %bb.j ], [ 1, %bb.d ], [ %.02744, %bb.b ]
  %i.ag = trunc nuw i8 %.3.ph to i1
  %i.ah = xor i1 %i.ag, true
  %i.ai = select i1 %.not.lcssa.ph, i1 %i.ah, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.ai, %._crit_edge.loopexit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil20CamelCaseToSnakeCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %0, ptr nofree readonly captures(address) %1, ptr noundef initializes((8, 16)) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !130 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.a, align 8, !tbaa !61
  %i.b = load ptr, ptr %2, align 8, !tbaa !62
  store i8 0, ptr %i.b, align 1, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %.not35 = icmp samesign eq i64 %0, 0
  br i1 %.not35, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.01936 = phi ptr [ %1, %.lr.ph ], [ %i.al, %bb.i ] ; 2 uses
  %i.e = load i8, ptr %.01936, align 1, !tbaa !47 ; 4 uses
  %.not23.not.not = icmp ne i8 %i.e, 95           ; 3 uses
  br i1 %.not23.not.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = add i8 %i.e, -65
  %or.cond = icmp ult i8 %i.f, 26
  %i.g = load i64, ptr %i.a, align 8, !tbaa !61   ; 7 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !62     ; 3 uses
  %i.j = icmp eq ptr %i.i, %i.d                   ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.d, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.e
  %i.o = phi ptr [ %.pre.i, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 95, ptr %i.p, align 1, !tbaa !47
  store i64 %i.h, ptr %i.a, align 8, !tbaa !61
  %i.q = load ptr, ptr %2, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !47
  %i.s = or disjoint i8 %i.e, 32
  %i.t = load i64, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !62     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.x = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.y = load i64, ptr %i.d, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27 ]
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.t, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i26 = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25, %bb.f
  %i.ab = phi ptr [ %.pre.i26, %bb.f ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i25 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store i8 %i.s, ptr %i.ac, align 1, !tbaa !47
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i32: ; preds = %bb.g
  %i.ad = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i32
  %i.af = phi i64 [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i32 ]
  %i.ag = icmp ugt i64 %i.h, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit33

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i31 = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i30, %bb.h
  %i.ah = phi ptr [ %.pre.i31, %bb.h ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i30 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.g
  store i8 %i.e, ptr %i.ai, align 1, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28
  %.sink = phi i64 [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit33 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit28 ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !61
  %i.aj = load ptr, ptr %2, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink
  store i8 0, ptr %i.ak, align 1, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %.01936, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.c
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.i, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not23.not.not, %bb.b ], [ %.not23.not.not, %bb.i ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil12ToJsonStringERKNS0_9FieldMaskEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef initializes((8, 16)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !132 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 0, ptr %i.a, align 8, !tbaa !61
  %i.b = load ptr, ptr %1, align 8, !tbaa !62
  store i8 0, ptr %i.b, align 1, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %i.m = icmp eq i64 %i.l, 0
  %i.n = add i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.i.i.i.i.i.peel = select i1 %i.m, ptr %i.f, ptr %i.p
  %i.q = load ptr, ptr %.0.i.i.i.i.i.peel, align 8, !tbaa !67 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.g, ptr %2, align 8, !tbaa !68
  store i64 0, ptr %i.h, align 8, !tbaa !61
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.u = invoke noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil20SnakeCaseToCamelCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %i.t, ptr %i.r, ptr noundef nonnull %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.u, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8, !tbaa !61  ; 2 uses
  %.pre45 = load i64, ptr %i.a, align 8, !tbaa !61
  %i.v = sub i64 4611686018427387903, %.pre45
  %i.w = icmp ult i64 %i.v, %.pre
  br i1 %i.w, label %.loopexit44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel: ; preds = %bb.c
  %i.x = load ptr, ptr %2, align 8, !tbaa !62
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.x, i64 noundef %.pre)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel
  %i.z = load ptr, ptr %2, align 8, !tbaa !62     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !47
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %3 = load i64, ptr %i.h, align 8, !tbaa !61
  %4 = icmp ult i64 %3, 16
  call void @llvm.assume(i1 %4)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !65
  %.not38.peel = icmp sgt i32 %i.ad, 1
  br i1 %.not38.peel, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel.a ] ; 2 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = add i64 %i.af, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %.0.i.i.i.i.i = select i1 %i.ah, ptr %i.f, ptr %i.al
  %i.am = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.g, ptr %2, align 8, !tbaa !68
  store i64 0, ptr %i.h, align 8, !tbaa !61
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.aq = invoke noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil20SnakeCaseToCamelCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %i.ap, ptr %i.an, ptr noundef nonnull %2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.peel.next
  br i1 %i.aq, label %bb.e, label %.critedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.f, %.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel, %.lr.ph, %.loopexit44
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.g
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.at = load i64, ptr %i.g, align 8, !tbaa !47
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.av = load i64, ptr %i.a, align 8, !tbaa !61  ; 4 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.i
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18: ; preds = %bb.e
  %i.az = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.e
  %i.ba = load i64, ptr %i.i, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18 ]
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.av, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bd = phi ptr [ %.pre.i, %.noexc ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  store i8 44, ptr %i.be, align 1, !tbaa !47
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !61
  %i.bf = load ptr, ptr %1, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw
  store i8 0, ptr %i.bg, align 1, !tbaa !47
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !61  ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !61
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bh
  br i1 %i.bk, label %.loopexit44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.loopexit44:                                      ; preds = %bb.g, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.loopexit44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.g
  %i.bl = load ptr, ptr %2, align 8, !tbaa !62
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.bl, i64 noundef %i.bh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.bn = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.g
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.bp = load i64, ptr %i.g, align 8, !tbaa !47
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = load i32, ptr %i.c, align 8, !tbaa !65
  %i.bs = sext i32 %i.br to i64
  %.not38 = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %.not38, label %.peel.next, label %.loopexit, !llvm.loop !131

.critedge:                                        ; preds = %bb.d, %bb.b
  %i.bt = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.g
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.critedge
  %i.bv = load i64, ptr %i.g, align 8, !tbaa !47
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel.a, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bx = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ true, %bb.a ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.peel.a ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ]
  ret i1 %i.bx
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil14FromJsonStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_9FieldMaskE(i64 %0, ptr %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !137 {
bb.a:
  %3 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %0, ptr %5, align 8, !tbaa !43, !alias.scope !138
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !46, !alias.scope !138
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 44, ptr %i.a, align 8, !tbaa !47, !alias.scope !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !139
  call void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.b = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not32 = icmp eq ptr %i.b, %i.d
  br i1 %.not32, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.sroa.025.033 = phi ptr [ %i.b, %.lr.ph ], [ %i.aj, %.thread ] ; 3 uses
  %.sroa.0.0.copyload23 = load i64, ptr %.sroa.025.033, align 8, !tbaa !43 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload23, 0
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.e, ptr %6, align 8, !tbaa !68
  store i64 0, ptr %i.f, align 8, !tbaa !61
  store i8 0, ptr %i.e, align 8, !tbaa !47
  %i.k = invoke noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil20CamelCaseToSnakeCaseESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %.sroa.0.0.copyload23, ptr %.sroa.6.0.copyload, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.g, label %bb.j

bb.e:                                             ; preds = %.noexc, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %6, align 8, !tbaa !62     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_0
