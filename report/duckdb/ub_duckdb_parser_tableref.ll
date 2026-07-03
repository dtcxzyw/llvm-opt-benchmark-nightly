inline.NumInlined: 3131
inline.NumDeleted: 1642
begin_hunk_0
@_ZTVN6duckdb8TableRefE = external unnamed_addr constant { [8 x ptr] }, align 8
@.str.35 = private unnamed_addr constant [22 x i8] c"__internal_delim_get_\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.36 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"Failed to cast expression to type - expression type mismatch\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"list_value\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.47 = private unnamed_addr constant [50 x i8] c"Attempted to dereference unique_ptr that is NULL!\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c"Attempting to dereference an optional pointer that is not set\00", align 1
@.str.49 = private unnamed_addr constant [56 x i8] c"Attempted to access index %ld within vector of size %ld\00", align 1
@.str.50 = private unnamed_addr constant [61 x i8] c"Failed to cast constraint to type - constraint type mismatch\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"Attempted to dereference shared_ptr that is NULL!\00", align 1

@_ZN6duckdb8AtClauseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS8_ELb1EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb8AtClauseC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS8_ELb1EEE
@_ZN6duckdb15BoundRefWrapperC1ENS_14BoundStatementENS_10shared_ptrINS_6BinderELb1EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb15BoundRefWrapperC2ENS_14BoundStatementENS_10shared_ptrINS_6BinderELb1EEE
@_ZN6duckdb13ColumnDataRefC1ENS_20optionally_owned_ptrINS_20ColumnDataCollectionEEENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb13ColumnDataRefC2ENS_20optionally_owned_ptrINS_20ColumnDataCollectionEEENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEE
@_ZN6duckdb7ShowRefC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb7ShowRefC2Ev
@_ZN6duckdb11SubqueryRefC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb11SubqueryRefC2Ev
@_ZN6duckdb11SubqueryRefC1ENS_10unique_ptrINS_15SelectStatementESt14default_deleteIS2_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb11SubqueryRefC2ENS_10unique_ptrINS_15SelectStatementESt14default_deleteIS2_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN6duckdb16TableFunctionRefC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb16TableFunctionRefC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_ZN6duckdb8AtClauseC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS8_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !11
  %i.i = load i64, ptr %i.c, align 8, !tbaa !15
  store i64 %i.i, ptr %i.a, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !14
  store ptr %i.c, ptr %1, align 8, !tbaa !11
  store i64 0, ptr %i.j, align 8, !tbaa !14
  store i8 0, ptr %i.c, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %2, align 8, !tbaa !16
  store i64 %i.n, ptr %i.m, align 8, !tbaa !16
  store ptr null, ptr %2, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb8AtClause8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.a = load ptr, ptr %1, align 8, !tbaa !11, !noalias !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14, !noalias !18 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !7, !alias.scope !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !14, !alias.scope !21
  store i8 0, ptr %i.d, align 8, !tbaa !15, !alias.scope !21
  %i.f = add i64 %i.c, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !14, !alias.scope !21
  %i.h = and i64 %i.g, -4
  %i.i = icmp eq i64 %i.h, 4611686018427387900
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !14, !alias.scope !21
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.c
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !11, !alias.scope !21 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.r = load i64, ptr %i.e, align 8, !tbaa !14, !noalias !24
  %i.s = and i64 %i.r, -4
  %i.t = icmp eq i64 %i.s, 4611686018427387900
  br i1 %i.t, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1, i64 noundef 4)
          to label %.noexc8 unwind label %bb.s    ; 6 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !7, !alias.scope !24
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc8
  store ptr %i.w, ptr %3, align 8, !tbaa !11, !alias.scope !24
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !15
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !15, !alias.scope !24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ae = phi i64 [ %i.aa, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !14, !alias.scope !24
  store ptr %i.x, ptr %i.u, align 8, !tbaa !11
  store i64 0, ptr %i.af, align 8, !tbaa !14
  store i8 0, ptr %i.x, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.g unwind label %bb.t       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.ai)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !14, !noalias !29 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !14, !noalias !29 ; 4 uses
  %i.ap = add i64 %i.ao, %i.am                    ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !11, !noalias !29 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.v                 ; 2 uses
  br i1 %i.ar, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.as)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.i, %bb.h
  %6 = load i64, ptr %i.v, align 8, !noalias !29
  %7 = select i1 %i.ar, i64 15, i64 %6
  %i.at = icmp ugt i64 %i.ap, %7
  br i1 %i.at, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.au = load ptr, ptr %5, align 8, !tbaa !11, !noalias !29
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  br i1 %i.aw, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ax)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i: ; preds = %bb.k, %bb.j
  %8 = load i64, ptr %i.av, align 8, !noalias !29
  %9 = select i1 %i.aw, i64 15, i64 %8
  %.not.i = icmp ugt i64 %i.ap, %9
  br i1 %.not.i, label %bb.m, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.aq, i64 noundef %i.am)
          to label %.noexc10 unwind label %bb.u   ; 5 uses

.noexc10:                                         ; preds = %.critedge.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !7, !alias.scope !29
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.a

bb.l:                                             ; preds = %.noexc10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.a: ; preds = %.noexc10
  store ptr %i.ba, ptr %2, align 8, !tbaa !11, !alias.scope !29
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !15
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !15, !alias.scope !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.a, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !14, !alias.scope !29
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !11
  store i64 0, ptr %i.bi, align 8, !tbaa !14
  store i8 0, ptr %i.bb, align 8, !tbaa !15
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bl = sub i64 4611686018427387903, %i.am
  %i.bm = icmp ult i64 %i.bl, %i.ao
  br i1 %i.bm, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.bn = load ptr, ptr %5, align 8, !tbaa !11, !noalias !29
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bn, i64 noundef %i.ao)
          to label %.noexc12 unwind label %bb.u   ; 5 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bp, ptr %2, align 8, !tbaa !7, !alias.scope !29
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.o:                                             ; preds = %.noexc12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !14 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %.noexc12
  store ptr %i.bq, ptr %2, align 8, !tbaa !11, !alias.scope !29
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !15
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !15, !alias.scope !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !14, !alias.scope !29
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !11
  store i64 0, ptr %i.by, align 8, !tbaa !14
  store i8 0, ptr %i.br, align 8, !tbaa !15
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !14, !noalias !32
  %i.cd = icmp eq i64 %i.cc, 4611686018427387903
  br i1 %i.cd, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc18 unwind label %bb.v

.noexc18:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc19 unwind label %bb.v   ; 6 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !7, !alias.scope !32
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

bb.q:                                             ; preds = %.noexc19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !14 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.noexc19
  store ptr %i.cg, ptr %0, align 8, !tbaa !11, !alias.scope !32
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !15
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !15, !alias.scope !32
  %.phi.trans.insert.i15 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i16 = load i64, ptr %.phi.trans.insert.i15, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.q
  %i.co = phi i64 [ %i.ck, %bb.q ], [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !14, !alias.scope !32
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !11
  store i64 0, ptr %i.cp, align 8, !tbaa !14
  store i8 0, ptr %i.ch, align 8, !tbaa !15
  %i.cr = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cu = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cx = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.v
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @_ZdlPv(ptr noundef %i.cx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.cz = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.d
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  call void @_ZdlPv(ptr noundef %i.cz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.t:                                             ; preds = %bb.g, %bb.f
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.n, %.critedge.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

end_hunk_0
