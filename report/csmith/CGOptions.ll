Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/CGOptions?download=true
inline.NumInlined: 780
inline.NumDeleted: 257
begin_hunk_0_@_ZN9CGOptions26resolve_exhaustive_optionsEv:bb.a
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !27, !alias.scope !104
  store i64 %i.g, ptr %i.e, align 8, !tbaa !28, !alias.scope !104
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.d
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.e, %bb.d ] ; 3 uses
  switch i64 %i.g, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN9CGOptions14partial_expandB5cxx11Ev.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !28
  store i8 %i.n, ptr %i.m, align 1, !tbaa !28
  br label %_ZN9CGOptions14partial_expandB5cxx11Ev.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN9CGOptions14partial_expandB5cxx11Ev.exit

_ZN9CGOptions14partial_expandB5cxx11Ev.exit:      ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.o, align 8, !tbaa !30, !alias.scope !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !28
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN9CGOptions14partial_expandB5cxx11Ev.exit
  %i.u = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9CGOptions14partial_expandB5cxx11Ev.exit
  %i.v = load i64, ptr %i.e, align 8, !tbaa !28
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br i1 %i.r, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.x, ptr %1, align 8, !tbaa !29, !alias.scope !105
  %i.y = load ptr, ptr @_ZN9CGOptions15partial_expand_B5cxx11E, align 8, !tbaa !27, !noalias !105 ; 2 uses
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions15partial_expand_B5cxx11E, i64 8), align 8, !tbaa !30, !noalias !105 ; 8 uses
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %bb.j, label %._crit_edge.i.i.i3

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp slt i64 %i.z, 0
  br i1 %i.ab, label %.noexc.i.i6, label %bb.k

.noexc.i.i6:                                      ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ac = add nuw i64 %i.z, 1                     ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %.noexc6.i.i5, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i4, !prof !31

.noexc6.i.i5:                                     ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i4: ; preds = %bb.k
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #30 ; 2 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !27, !alias.scope !105
  store i64 %i.z, ptr %i.x, align 8, !tbaa !28, !alias.scope !105
  br label %._crit_edge.i.i.i3

._crit_edge.i.i.i3:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i4, %bb.i
  %i.af = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i4 ], [ %i.x, %bb.i ] ; 3 uses
  switch i64 %i.z, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN9CGOptions14partial_expandB5cxx11Ev.exit7
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i3
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !28
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !28
  br label %_ZN9CGOptions14partial_expandB5cxx11Ev.exit7

bb.m:                                             ; preds = %._crit_edge.i.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.y, i64 %i.z, i1 false)
  br label %_ZN9CGOptions14partial_expandB5cxx11Ev.exit7

_ZN9CGOptions14partial_expandB5cxx11Ev.exit7:     ; preds = %._crit_edge.i.i.i3, %bb.l, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.z, ptr %i.ah, align 8, !tbaa !30, !alias.scope !105
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !28
  %i.aj = invoke noundef zeroext i1 @_ZN15PartialExpander21init_partial_expanderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZN9CGOptions14partial_expandB5cxx11Ev.exit7
  %i.ak = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.x
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.n
  %i.am = load i64, ptr %i.x, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %i.aj, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.ao, ptr noundef nonnull @.str.37, i64 noundef 29) ; 0 uses
  br label %bb.x

bb.p:                                             ; preds = %_ZN9CGOptions14partial_expandB5cxx11Ev.exit7
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.x
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.p
  %i.at = load i64, ptr %i.x, align 8, !tbaa !28
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.aq

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i32, ptr @_ZN9CGOptions21max_exhaustive_depth_E, align 4, !tbaa !23
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.ay = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.ax, ptr noundef nonnull @.str.38, i64 noundef 39) ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.az = load i8, ptr @_ZN9CGOptions11use_struct_E, align 1, !tbaa !20, !range !21, !noundef !22
  %i.ba = trunc nuw i8 %i.az to i1
  %.not = xor i1 %i.ba, true
  %i.bb = load i8, ptr @_ZN9CGOptions14expand_struct_E, align 1, !range !21
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond = select i1 %.not, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.bd, ptr noundef nonnull @.str.39, i64 noundef 45) ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bf = load i8, ptr @_ZN9CGOptions5klee_E, align 1, !tbaa !20, !range !21, !noundef !22
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load i8, ptr @_ZN9CGOptions6crest_E, align 1, !range !21
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i = select i1 %i.bg, i1 true, i1 %i.bi
  %i.bj = load i8, ptr @_ZN9CGOptions14coverage_test_E, align 1, !range !21
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = select i1 %or.cond.i, i1 true, i1 %i.bk
  br i1 %i.bl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.bm, ptr noundef nonnull @.str.40, i64 noundef 66) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i8 1, ptr @_ZN9CGOptions20fixed_struct_fields_E, align 1, !tbaa !20
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %bb.r, %bb.t, %bb.v, %bb.w, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.v ], [ false, %bb.w ], [ true, %bb.t ]
  ret i1 %.1
}

declare void @_ZN17CompatibleChecker23enable_compatible_checkEv() local_unnamed_addr #7

declare noundef zeroext i1 @_ZN15PartialExpander21init_partial_expanderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN9CGOptions21has_extension_supportEv() local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN9CGOptions5klee_E, align 1, !tbaa !20, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @_ZN9CGOptions6crest_E, align 1, !range !21
  %0 = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.b, i1 true, i1 %0
  %1 = load i8, ptr @_ZN9CGOptions14coverage_test_E, align 1, !range !21
  %i.d = trunc nuw i8 %1 to i1
  %i.e = select i1 %or.cond, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9CGOptions18has_delta_conflictEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29, !alias.scope !110
  %i.b = load ptr, ptr @_ZN9CGOptions14delta_monitor_B5cxx11E, align 8, !tbaa !27, !noalias !110 ; 2 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions14delta_monitor_B5cxx11E, i64 8), align 8, !tbaa !30, !noalias !110 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !31

.noexc6.i.i:                                      ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !27, !alias.scope !110
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28, !alias.scope !110
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN9CGOptions13delta_monitorB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !28
  store i8 %i.j, ptr %i.i, align 1, !tbaa !28
  br label %_ZN9CGOptions13delta_monitorB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.b, i64 %i.c, i1 false)
  br label %_ZN9CGOptions13delta_monitorB5cxx11Ev.exit

_ZN9CGOptions13delta_monitorB5cxx11Ev.exit:       ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.c, ptr %i.k, align 8, !tbaa !30, !alias.scope !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !28
  %i.m = load i64, ptr %i.k, align 8, !tbaa !30
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN9CGOptions13delta_monitorB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !29, !alias.scope !111
  %i.p = load ptr, ptr @_ZN9CGOptions9go_delta_B5cxx11E, align 8, !tbaa !27, !noalias !111 ; 2 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions9go_delta_B5cxx11E, i64 8), align 8, !tbaa !30, !noalias !111 ; 8 uses
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.g, label %._crit_edge.i.i.i7

bb.g:                                             ; preds = %bb.f
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %.noexc.i.i10, label %bb.h

.noexc.i.i10:                                     ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i10
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc6.i.i9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i8, !prof !31

.noexc6.i.i9:                                     ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %.noexc6.i.i9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i8: ; preds = %bb.h
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30
          to label %.noexc12 unwind label %bb.m   ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i8
  store ptr %i.v, ptr %1, align 8, !tbaa !27, !alias.scope !111
  store i64 %i.q, ptr %i.o, align 8, !tbaa !28, !alias.scope !111
  br label %._crit_edge.i.i.i7

._crit_edge.i.i.i7:                               ; preds = %.noexc12, %bb.f
  %i.w = phi ptr [ %i.v, %.noexc12 ], [ %i.o, %bb.f ] ; 3 uses
  switch i64 %i.q, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i7
  %i.x = load i8, ptr %i.p, align 1, !tbaa !28
  store i8 %i.x, ptr %i.w, align 1, !tbaa !28
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.y, align 8, !tbaa !30, !alias.scope !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.z, align 1, !tbaa !28
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.k
  %i.ae = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.o, align 8, !tbaa !28
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.critedge

.critedge:                                        ; preds = %_ZN9CGOptions13delta_monitorB5cxx11Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = phi i1 [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZN9CGOptions13delta_monitorB5cxx11Ev.exit ] ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.critedge
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !28
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br i1 %i.ah, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.an = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.am, ptr noundef nonnull @.str.41, i64 noundef 148) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i8, %.noexc6.i.i9, %.noexc.i.i10
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.ap = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.m
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !28
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  resume { ptr, i32 } %i.ao

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.l
  ret i1 %i.ah
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9CGOptions22has_extension_conflictEv() local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN9CGOptions5klee_E, align 1, !tbaa !20, !range !21, !noundef !22
  %i.b = load i8, ptr @_ZN9CGOptions6crest_E, align 1, !tbaa !20, !range !21, !noundef !22
  %narrow = add nuw nsw i8 %i.b, %i.a
  %i.c = load i8, ptr @_ZN9CGOptions14coverage_test_E, align 1, !tbaa !20, !range !21, !noundef !22
  %narrow5 = add nuw nsw i8 %narrow, %i.c
  %i.d = icmp samesign ugt i8 %narrow5, 1         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.42, i64 noundef 59) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN9CGOptions11allow_int64Ev() local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN9CGOptions5klee_E, align 1, !tbaa !20, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @_ZN9CGOptions6crest_E, align 1, !range !21
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.d
  %i.e = load i8, ptr @_ZN9CGOptions14coverage_test_E, align 1, !range !21
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %or.cond.i, i1 true, i1 %i.f
  %.not = xor i1 %i.g, true
  %i.h = load i8, ptr @_ZN9CGOptions7math64_E, align 1, !range !21
  %0 = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %.not, i1 %0, i1 false
  %1 = load i8, ptr @_ZN9CGOptions9longlong_E, align 1, !range !21
  %i.i = trunc nuw i8 %1 to i1
  %i.j = select i1 %or.cond, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9CGOptions12has_conflictEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator.3", align 1  ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZN9CGOptions25has_random_based_conflictEv()
  br i1 %i.a, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN9CGOptions26resolve_exhaustive_optionsEv()
  br i1 %i.b, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr @_ZN9CGOptions5klee_E, align 1, !tbaa !20, !range !21, !noundef !22
  %i.d = load i8, ptr @_ZN9CGOptions6crest_E, align 1, !tbaa !20, !range !21, !noundef !22
  %narrow.i = add nuw nsw i8 %i.d, %i.c
  %i.e = load i8, ptr @_ZN9CGOptions14coverage_test_E, align 1, !tbaa !20, !range !21, !noundef !22
  %narrow5.i = add nuw nsw i8 %narrow.i, %i.e
  %i.f = icmp samesign ugt i8 %narrow5.i, 1
  br i1 %i.f, label %_ZN9CGOptions22has_extension_conflictEv.exit.thread, label %_ZN9CGOptions22has_extension_conflictEv.exit

_ZN9CGOptions22has_extension_conflictEv.exit.thread: ; preds = %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull @.str.42, i64 noundef 59) ; 0 uses
  br label %bb.ac

_ZN9CGOptions22has_extension_conflictEv.exit:     ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN9CGOptions18has_delta_conflictEv()
  br i1 %i.i, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %_ZN9CGOptions22has_extension_conflictEv.exit
  %i.j = load i32, ptr @_ZN9CGOptions21inline_function_prob_E, align 4, !tbaa !23
  %or.cond = icmp ugt i32 %i.j, 100
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 8), align 8, !tbaa !30
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, i64 noundef 0, i64 noundef %i.k, ptr noundef nonnull @.str.43, i64 noundef 47) ; 0 uses
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.m = load i32, ptr @_ZN9CGOptions22builtin_function_prob_E, align 4, !tbaa !23
  %or.cond23 = icmp ugt i32 %i.m, 100
  br i1 %or.cond23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, ptr noundef nonnull @.str.44) ; 0 uses
  br label %bb.ac

bb.h:                                             ; preds = %bb.f
  %i.o = load i32, ptr @_ZN9CGOptions15array_oob_prob_E, align 4, !tbaa !23
  %or.cond24 = icmp ugt i32 %i.o, 100
  br i1 %or.cond24, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, ptr noundef nonnull @.str.45) ; 0 uses
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.q = load i32, ptr @_ZN9CGOptions10max_funcs_E, align 4, !tbaa !23
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, ptr noundef nonnull @.str.46) ; 0 uses
  br label %bb.ac

bb.l:                                             ; preds = %bb.j
  %i.t = load i32, ptr @_ZN9CGOptions14max_blk_depth_E, align 4, !tbaa !23
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, ptr noundef nonnull @.str.47) ; 0 uses
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.w = load i32, ptr @_ZN9CGOptions17func1_max_params_E, align 4, !tbaa !23
  %i.x = load i32, ptr @_ZN9CGOptions11max_params_E, align 4, !tbaa !23
  %i.y = icmp sgt i32 %i.w, %i.x
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9CGOptions13conflict_msg_B5cxx11E, ptr noundef nonnull @.str.48) ; 0 uses
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  call void @_ZN9CGOptions15split_files_dirB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.p
  %i.ag = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br i1 %i.ac, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @CGOPTIONS_DEFAULT_SPLIT_FILES_DIR, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN9CGOptions15split_files_dirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.aj = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.s
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.ao = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.u:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.u
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !28
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.t
  %.pn = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.au, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.ad

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i32, ptr @_ZN9CGOptions16max_split_files_E, align 4, !tbaa !23
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN9CGOptions15split_files_dirB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4)
  %i.bc = invoke noundef zeroext i1 @_ZN16DefaultOutputMgr17create_output_dirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bd = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.x
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !28
end_hunk_0
