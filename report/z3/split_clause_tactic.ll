Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/split_clause_tactic?download=true
inline.NumInlined: 499
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN19split_clause_tactic9translateER11ast_manager:bb.a
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK19split_clause_tactic4nameEv(ptr noundef nonnull align 8 dereferenceable(13) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.16
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !133

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !30
  store i64 %i.c, ptr %i.a, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.j, ptr %i.i, align 1, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !27
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef zeroext i1 @_ZNK10params_ref8get_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN12param_descrs6insertEPKc12cmd_arg_kindS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN13tactic_reportC1EPKcRK4goal(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN19split_clause_tactic13select_clauseER11ast_managerRK3refI4goalE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 5 uses
  %i.e = load i32, ptr %.0.i.i.i, align 8
  %i.f = lshr i32 %i.e, 30
  switch i32 %i.f, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.preheader.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  br label %.preheader.i.i.i, !llvm.loop !2

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = add i32 %i.j, 1
  br label %_ZNK4goal4sizeEv.exit

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27
  %i.n = add i32 %i.m, -1
  br label %_ZNK4goal4sizeEv.exit

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  br label %_ZNK4goal4sizeEv.exit

default.unreachable:                              ; preds = %.preheader.i.i.i
  unreachable

_ZNK4goal4sizeEv.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.07.i.i.i = phi i32 [ %i.p, %bb.e ], [ %i.k, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not51.not = icmp eq i32 %.07.i.i.i, 0
  br i1 %.not51.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %_ZNK4goal4sizeEv.exit, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %.02254 = phi i32 [ %i.au, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ 0, %_ZNK4goal4sizeEv.exit ] ; 4 uses
  %.02353 = phi i32 [ %.4.ph, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ 0, %_ZNK4goal4sizeEv.exit ] ; 6 uses
  %.02652 = phi i32 [ %.430.ph, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ -1, %_ZNK4goal4sizeEv.exit ] ; 5 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !34     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 536870912
  %.not.i = icmp eq i32 %i.t, 0
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !48, !align !49 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 840
  br label %_ZNK4goal4formEj.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 616
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN11ast_manager17expr_array_configEE3getERKNS2_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i32 noundef %.02254)
  br label %_ZNK4goal4formEj.exit

_ZNK4goal4formEj.exit:                            ; preds = %bb.g, %bb.h
  %.in.i = phi ptr [ %i.v, %bb.g ], [ %i.y, %bb.h ]
  %i.z = load ptr, ptr %.in.i, align 8, !tbaa !50 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 65535
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.i:                                             ; preds = %_ZNK4goal4formEj.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %bb.i
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !143
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, 6
  %i.an = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %i.an, label %bb.j, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.j:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !71 ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = load i8, ptr %3, align 4, !tbaa !22, !range !83, !noundef !48
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ugt i32 %i.ap, %.02353
  %spec.select = select i1 %i.at, i32 %.02254, i32 %.02652
  %spec.select38 = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %.02353)
  br label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

_ZNK11ast_manager5is_orEPK4expr.exit.thread:      ; preds = %bb.i, %_ZNK4goal4formEj.exit, %_ZNK11ast_manager5is_orEPK4expr.exit, %bb.j, %bb.l
  %.430.ph = phi i32 [ %spec.select, %bb.l ], [ %.02652, %bb.j ], [ %.02652, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ %.02652, %_ZNK4goal4formEj.exit ], [ %.02652, %bb.i ] ; 2 uses
  %.4.ph = phi i32 [ %spec.select38, %bb.l ], [ %.02353, %bb.j ], [ %.02353, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ %.02353, %_ZNK4goal4formEj.exit ], [ %.02353, %bb.i ]
  %i.au = add nuw i32 %.02254, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %.07.i.i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !134

._crit_edge:                                      ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.thread, %bb.k, %bb.a, %_ZNK4goal4sizeEv.exit
  %spec.select39 = phi i32 [ -1, %_ZNK4goal4sizeEv.exit ], [ -1, %bb.a ], [ %.430.ph, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ %.02254, %bb.k ]
  ret i32 %spec.select39
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16tactic_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV16tactic_exception, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !27
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

declare void @_Z22report_tactic_progressPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4goalC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

declare noundef ptr @_ZN11ast_manager13mk_hypothesisEP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

declare void @_ZN4goal6updateEjP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN20dependency_converter6concatEjPKP4goal(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN13tactic_reportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16tactic_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV16tactic_exception, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN16tactic_exceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !27
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15, !inline_history !144
  br label %_ZN16tactic_exceptionD2Ev.exit

_ZN16tactic_exceptionD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #16, !inline_history !144
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK16tactic_exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  ret ptr %i.b
}

declare noundef i32 @_ZNK12z3_exception10error_codeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN11ast_manager17expr_array_configEE3getERKNS2_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.024 = load ptr, ptr %1, align 8, !tbaa !27    ; 5 uses
  %i.a = load i32, ptr %.024, align 8
  %i.b = lshr i32 %i.a, 30
  switch i32 %i.b, label %default.unreachable28 [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %i.e = icmp eq i32 %2, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.b
  %.024.lcssa26 = phi ptr [ %.024, %bb.b ], [ %.024.1, %bb.f ], [ %.024.2, %bb.h ], [ %.024.3, %bb.j ], [ %.024.4, %bb.l ], [ %.024.5, %bb.n ], [ %.024.6, %bb.p ], [ %.024.7, %bb.r ], [ %.024.8, %bb.t ], [ %.024.9, %bb.v ], [ %.024.10, %bb.x ], [ %.024.11, %bb.z ], [ %.024.12, %bb.ab ], [ %.024.13, %bb.ad ], [ %.024.14, %bb.af ], [ %.024.15, %bb.ah ], [ %.024.16, %bb.aj ]
  %i.f = getelementptr inbounds nuw i8, ptr %.024.lcssa26, i64 8
  br label %bb.al

bb.d:                                             ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a
  %.024.lcssa25 = phi ptr [ %.024, %bb.a ], [ %.024.1, %bb.e ], [ %.024.2, %bb.g ], [ %.024.3, %bb.i ], [ %.024.4, %bb.k ], [ %.024.5, %bb.m ], [ %.024.6, %bb.o ], [ %.024.7, %bb.q ], [ %.024.8, %bb.s ], [ %.024.9, %bb.u ], [ %.024.10, %bb.w ], [ %.024.11, %bb.y ], [ %.024.12, %bb.aa ], [ %.024.13, %bb.ac ], [ %.024.14, %bb.ae ], [ %.024.15, %bb.ag ], [ %.024.16, %bb.ai ]
  %i.g = getelementptr inbounds nuw i8, ptr %.024.lcssa25, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = zext i32 %2 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  br label %bb.al

default.unreachable28:                            ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %.1.in = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %.024.1 = load ptr, ptr %.1.in, align 8, !tbaa !27 ; 5 uses
  %i.k = load i32, ptr %.024.1, align 8
  %i.l = lshr i32 %i.k, 30
  switch i32 %i.l, label %default.unreachable28 [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.d
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.024.1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = icmp eq i32 %2, %i.n
  br i1 %i.o, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.in.1 = getelementptr inbounds nuw i8, ptr %.024.1, i64 16
  %.024.2 = load ptr, ptr %.1.in.1, align 8, !tbaa !27 ; 5 uses
  %i.p = load i32, ptr %.024.2, align 8
  %i.q = lshr i32 %i.p, 30
  switch i32 %i.q, label %default.unreachable28 [
    i32 0, label %bb.h
    i32 1, label %bb.h
end_hunk_0
