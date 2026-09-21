Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/ArrayVariable?download=true
inline.NumInlined: 1072
inline.NumDeleted: 409
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK13ArrayVariable10is_variantEPK8Variable:bb.a
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !78  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not28.not = icmp ult i64 %i.y, %i.ae
  br i1 %.not28.not, label %.lr.ph, label %.thread, !llvm.loop !166

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.af = phi ptr [ %i.aa, %bb.d ], [ %i.t, %.preheader ]
  %.01934 = phi i64 [ %i.y, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.01934
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77 ; 2 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.01934
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  %i.al = tail call fastcc noundef i32 @_ZL18count_expr_key_varPK10Expression(ptr noundef %i.ah)
  %.not25 = icmp eq i32 %i.al, 1
  br i1 %.not25, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %i.am = tail call fastcc noundef i32 @_ZL18count_expr_key_varPK10Expression(ptr noundef %i.ak)
  %.not26 = icmp eq i32 %i.am, 1
  br i1 %.not26, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.e
  %i.an = tail call fastcc noundef ptr @_ZL17find_expr_key_varPK10Expression(ptr noundef %i.ah)
  %i.ao = tail call fastcc noundef ptr @_ZL17find_expr_key_varPK10Expression(ptr noundef %i.ak)
  %.not27 = icmp eq ptr %i.an, %i.ao
  br i1 %.not27, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %.lr.ph, %bb.e, %.critedge, %.preheader, %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ false, %bb.e ], [ false, %.lr.ph ], [ true, %bb.d ], [ false, %.critedge ]
  ret i1 %.4
}

declare noundef ptr @_ZN16VariableSelector13choose_ok_varERKSt6vectorIP8VariableSaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #9

declare void @_ZN24FunctionInvocationBinaryC1E10eBinaryOpsPK11SafeOpFlags(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN18FunctionInvocation11add_operandEPK10Expression(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN17ExpressionFuncallC1ERK18FunctionInvocation(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

declare noundef ptr @_ZN16VariableSelector24create_mutated_array_varEPK13ArrayVariableRKSt6vectorIPK10ExpressionSaIS6_EE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL18count_expr_key_varPK10Expression(ptr noundef %0) unnamed_addr #0 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.e, %bb.a
  %accumulator.tr.ph = phi i32 [ %i.z, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.tr.ph = phi ptr [ %i.y, %bb.e ], [ %0, %bb.a ]
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %bb.d
  %.tr = phi ptr [ %i.s, %bb.d ], [ %.tr.ph, %tailrecurse.outer ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  switch i32 %i.b, label %.loopexit [
    i32 1, label %.loopexit.loopexit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %.tr, ptr nonnull @_ZTI10Expression, ptr nonnull @_ZTI17ExpressionFuncall, i64 0) #21 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !114
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !78   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !77
  br label %tailrecurse

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.v = tail call fastcc noundef i32 @_ZL18count_expr_key_varPK10Expression(ptr noundef %i.u)
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.z = add i32 %i.v, %accumulator.tr.ph
  br label %tailrecurse.outer

.loopexit.loopexit:                               ; preds = %tailrecurse
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %tailrecurse, %.loopexit.loopexit
  %.1 = phi i32 [ 0, %tailrecurse ], [ 2, %bb.b ], [ %i.b, %.loopexit.loopexit ]
  %accumulator.ret.tr = add i32 %.1, %accumulator.tr.ph
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL17find_expr_key_varPK10Expression(ptr noundef %0) unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.t, %bb.e ]   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  switch i32 %i.b, label %.thread33 [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100, !nonnull !101, !align !102
  br label %.thread33

bb.c:                                             ; preds = %tailrecurse
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull %.tr, ptr nonnull @_ZTI10Expression, ptr nonnull @_ZTI17ExpressionFuncall, i64 0) #21 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !114
  %switch = icmp ult i32 %i.k, 2
  br i1 %switch, label %bb.d, label %.thread33

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !78   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.r, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !77
  br label %tailrecurse

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.w = tail call fastcc noundef ptr @_ZL17find_expr_key_varPK10Expression(ptr noundef %i.v) ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.aa = tail call fastcc noundef ptr @_ZL17find_expr_key_varPK10Expression(ptr noundef %i.z) ; 3 uses
  %i.ab = icmp eq ptr %i.w, null
  %i.ac = icmp ne ptr %i.aa, null
  %or.cond = and i1 %i.ab, %i.ac
  br i1 %or.cond, label %.thread33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.aa, null
  %spec.select = select i1 %.not, ptr %i.w, ptr null
  br label %.thread33

.thread33:                                        ; preds = %tailrecurse, %bb.c, %bb.g, %bb.f, %bb.b
  %.3 = phi ptr [ %i.d, %bb.b ], [ %spec.select, %bb.g ], [ %i.aa, %bb.f ], [ null, %bb.c ], [ null, %tailrecurse ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK13ArrayVariable9is_globalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK13ArrayVariable16is_visible_localEPK5Block(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #8 align 2 {
.lr.ph.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp ne ptr %1, null                  ; 2 uses
  %2 = icmp ne ptr %1, %i.b
  %or.cond.not11 = select i1 %.not10, i1 %2, i1 false
  br i1 %or.cond.not11, label %bb.a, label %._crit_edge

bb.a:                                             ; preds = %.lr.ph.a, %bb.a
  %.012 = phi ptr [ %i.d, %bb.a ], [ %1, %.lr.ph.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 3 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  %3 = icmp ne ptr %i.d, %i.b
  %or.cond.not = select i1 %.not, i1 %3, i1 false
  br i1 %or.cond.not, label %bb.a, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %bb.a, %.lr.ph.a
  %.not.lcssa = phi i1 [ %.not10, %.lr.ph.a ], [ %.not, %bb.a ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK13ArrayVariable19no_loop_initializerEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  %i.d = and i32 %i.c, -2
  %switch = icmp eq i32 %i.d, 2
  br i1 %switch, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK8Variable8is_constEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(288) %0)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.n = icmp ne ptr %i.l, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.o = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ %i.n, %bb.d ], [ true, %bb.a ]
  ret i1 %i.o
}

declare noundef zeroext i1 @_ZNK8Variable8is_constEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK13ArrayVariable20build_init_recursiveEmRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !103
  store i8 123, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 1, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %2
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %.not71 = icmp eq i32 %i.g, 0
  br i1 %.not71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = add i64 %2, 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ac
  %.pre75 = load i64, ptr %i.b, align 8, !tbaa !104 ; 2 uses
  %i.m = icmp eq i64 %.pre75, 9223372036854775807
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.a:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #18
          to label %.noexc29 unwind label %bb.ad

.noexc29:                                         ; preds = %bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %._crit_edge.i.i, %._crit_edge
  %i.n = phi i64 [ %.pre75, %._crit_edge ], [ 1, %._crit_edge.i.i ] ; 4 uses
  %i.o = add nsw i64 %i.n, 1                      ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !89
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.o, %i.t
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 125, ptr %i.u, align 1, !tbaa !89
  br label %bb.ae

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %bb.ae unwind label %bb.ad

bb.d:                                             ; preds = %.lr.ph, %bb.ac
  %i.v = phi ptr [ %i.e, %.lr.ph ], [ %i.da, %bb.ac ]
  %.070 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.ac ] ; 4 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = icmp eq i64 %2, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr @_ZZNK13ArrayVariable20build_init_recursiveEmRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE4seed, align 4, !tbaa !10 ; 5 uses
  %i.ae = mul i32 %i.ad, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %.070, 7
  %i.ah = add nuw nsw i64 %.070, 13
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, %i.af
  %i.ak = mul i64 %i.aj, 52369
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.am = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %i.ar = urem i64 %i.ak, %i.aq
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !104 ; 6 uses
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !104 ; 5 uses
  %i.ax = sub i64 9223372036854775807, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.av
  br i1 %i.ay, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #18
          to label %.noexc31 unwind label %.loopexit.split-lp60

.noexc31:                                         ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.az = add i64 %i.aw, %i.av                    ; 3 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bc = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !89
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.be = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.az, %i.be
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.av, 1
  br i1 %cond.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = load i8, ptr %i.at, align 1, !tbaa !89
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !89
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aw, i64 noundef 0, ptr noundef %i.at, i64 noundef %i.av)
          to label %._crit_edge72 unwind label %.loopexit59

._crit_edge72:                                    ; preds = %bb.k
  %.pre = load i32, ptr @_ZZNK13ArrayVariable20build_init_recursiveEmRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE4seed, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge72, %bb.j, %bb.i, %bb.g
  %i.bh = phi i32 [ %.pre, %._crit_edge72 ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ], [ %i.ad, %bb.g ]
  store i64 %i.az, ptr %i.b, align 8, !tbaa !104
end_hunk_0
