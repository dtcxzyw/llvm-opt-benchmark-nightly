Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/points?download=true
inline.NumInlined: 19258
inline.NumDeleted: 6035
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 416
loop-unroll.NumUnrolled: 516
begin_hunk_0_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !1670
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !43, !alias.scope !1680
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !1680
  store i8 0, ptr %i.n, align 8, !tbaa !35, !alias.scope !1680
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1657, !noalias !1680 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1680 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1659, !noalias !1680 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !47, !alias.scope !1680 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !35, !alias.scope !1680
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.81, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !1670
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1681

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !9
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !35
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #19
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1670  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !1673
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !1670  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !1673
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1672 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1673
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1672
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1670   ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !8
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !1673
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !1670
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1672
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !1673
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1672 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1673 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1672
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1670   ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !8
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !1673
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !1670
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1672
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !1673
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !1672
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj1EEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1670  ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !8
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.not.i17.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !1673
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !1670
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !1672
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !1673
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj1EEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj1EEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

declare void @_ZN7openvdb5v13_08GridBase12registerGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrIS1_EvE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE7factoryEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.568") align 8 %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19, !noalias !1682
  store i32 0, ptr %1, align 4, !noalias !1682
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #30, !noalias !1685 ; 6 uses
  invoke void @_ZN7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.g, !noalias !1685

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.c, !noalias !1685 ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = call ptr @__cxa_begin_catch(ptr %i.d) #19, !noalias !1685 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !9, !noalias !1685
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1685
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #19, !noalias !1685, !inline_history !1688
  invoke void @__cxa_rethrow() #28
          to label %bb.f unwind label %bb.d, !noalias !1685

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i.i unwind label %bb.e, !noalias !1685

common.resume.i.i:                                ; preds = %bb.g, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #31, !noalias !1685
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #29, !noalias !1685
  br label %common.resume.i.i

_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !59, !noalias !1685
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !61, !noalias !1685
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !9, !noalias !1685
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.o, align 8, !tbaa !1689, !noalias !1685
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !1682
  store ptr %i.a, ptr %0, align 8, !tbaa !1692
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !61
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !198
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !1695
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !1700
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.c, align 8, !tbaa !1701
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !1702
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !1703
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN7openvdb5v13_08GridBaseE, i64 16), ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN7openvdb5v13_04math9Transform21createLinearTransformEd(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.577") align 8 %i.f, double noundef 1.000000e+00)
          to label %_ZN7openvdb5v13_08GridBaseC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7openvdb5v13_07MetaMapD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(72) %0) #19
  br label %common.resume

_ZN7openvdb5v13_08GridBaseC2Ev.exit:              ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = invoke noalias noundef nonnull dereferenceable(1232) ptr @_Znwm(i64 noundef 1232) #30
          to label %bb.c unwind label %bb.j       ; 6 uses

bb.c:                                             ; preds = %_ZN7openvdb5v13_08GridBaseC2Ev.exit
  invoke void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(1232) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.h, align 8, !tbaa !1704
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10stealNodesISt6vectorIPS8_SaISE_EEEEvRT_RKS7_b:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.05.015 = phi ptr [ %i.b, %.lr.ph ], [ %i.ax, %bb.k ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.05.015, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1774 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 262144 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.013.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.o, %bb.h ] ; 5 uses
  %.0712.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.p, %bb.h ] ; 5 uses
  %i.h = load i64, ptr %.013.i.i.i.i, align 8, !tbaa !48, !noalias !1887 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48, !noalias !1887 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.1, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48, !noalias !1887 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.2, label %bb.g, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48, !noalias !1887 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.3, label %bb.h, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.p = add nuw nsw i32 %.0712.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i32 %i.p, 512
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit, label %bb.d, !llvm.loop !1792

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit: ; preds = %bb.g
  %i.q = or disjoint i32 %.0712.i.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53: ; preds = %bb.f
  %i.r = or disjoint i32 %.0712.i.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56: ; preds = %bb.e
  %i.s = or disjoint i32 %.0712.i.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i: ; preds = %bb.d, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit
  %.0712.i.i.i.i.lcssa = phi i32 [ %i.s, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56 ], [ %i.r, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53 ], [ %i.q, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit ], [ %.0712.i.i.i.i, %bb.d ]
  %.lcssa = phi i64 [ %i.j, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56 ], [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53 ], [ %i.n, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit ], [ %i.h, %bb.d ]
  %i.t = shl nuw nsw i32 %.0712.i.i.i.i.lcssa, 6
  %i.u = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !1890, !alias.scope !1887
  store i32 %i.w, ptr %i.d, align 8, !alias.scope !1887
  store ptr %i.g, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1887
  %.not6.i = icmp eq i32 %i.w, 32768
  br i1 %.not6.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i
  %i.x = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i ], [ %i.w, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i ]
  %i.y = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10stealNodesISt6vectorIPS7_SaISB_EEEEvRT_RKS6_b(ptr noundef nonnull align 8 dereferenceable(33808) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3)
  %i.ac = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !1798 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !1799
  %i.ae = add i32 %i.ad, 1                        ; 4 uses
  %i.af = lshr i32 %i.ae, 6                       ; 3 uses
  %i.ag = icmp ugt i32 %i.ae, 32767
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ah = and i32 %i.ae, 63
  %i.ai = zext nneg i32 %i.af to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.al = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.ak, %i.am
  %.not.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ao = shl nsw i64 -1, %i.al
  %i.ap = and i64 %i.ak, %i.ao                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.j
  %exitcond.not.i.i.i.i.i40 = icmp eq i32 %i.af, 511
  br i1 %exitcond.not.i.i.i.i.i40, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit, label %.lr.ph42

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph42
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit, label %.lr.ph42, !llvm.loop !1800

.lr.ph42:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i41 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i41, 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !1800

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph42
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.j
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.as, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.ap, %bb.j ], [ %i.ar, %.critedge.loopexit.i.i.i.i.i ]
  %i.at = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.au = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.i
  %.118.i.i.i.i.i = phi i32 [ %i.aw, %.critedge.i.i.i.i.i ], [ %i.ae, %bb.i ] ; 3 uses
  store i32 %.118.i.i.i.i.i, ptr %i.d, align 8, !tbaa !1799
  %.not.i = icmp eq i32 %.118.i.i.i.i.i, 32768
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit, label %.lr.ph.i, !llvm.loop !1892

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit: ; preds = %bb.h, %.lr.ph.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.k

bb.k:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10stealNodesISt6vectorIPS7_SaISC_EEEEvRT_RKS6_b.exit, %bb.b
  %i.ax = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.05.015) #32 ; 2 uses
  %.not8 = icmp eq ptr %i.ax, %i.c
  br i1 %.not8, label %._crit_edge, label %bb.b, !llvm.loop !1893
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10stealNodesISt6vectorIPS7_SaISB_EEEEvRT_RKS6_b(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32768 ; 4 uses
  %i.b = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.a), !noalias !1894 ; 2 uses
  %.not11 = icmp eq i32 %i.b, 4096
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 33280 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1848
  %.pre13 = load ptr, ptr %i.d, align 8, !tbaa !1863
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.a, i8 0, i64 512, i1 false), !tbaa !48
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit
  %i.f = phi ptr [ %.pre13, %.lr.ph ], [ %i.ae, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit ] ; 3 uses
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.af, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit ] ; 3 uses
  %.sroa.3.012 = phi i32 [ %i.b, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit ] ; 5 uses
  %i.h = zext i32 %.sroa.3.012 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !1897
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !1848
  br label %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE9push_backEOS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !1850   ; 4 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
  unreachable

_ZNKSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %i.j, ptr %i.x, align 8, !tbaa !1897
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !1863
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ac) #29
  br label %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i
  store ptr %i.w, ptr %1, align 8, !tbaa !1850
  store ptr %i.z, ptr %i.c, align 8, !tbaa !1848
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !1863
  br label %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i
  %i.ae = phi ptr [ %i.f, %bb.c ], [ %i.ad, %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ]
  %i.af = phi ptr [ %i.k, %bb.c ], [ %i.z, %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ]
  %i.ag = and i32 %.sroa.3.012, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah                    ; 2 uses
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE9push_backEOS7_.exit
  %i.aj = lshr i32 %.sroa.3.012, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !48
  %i.an = or i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !48
  br label %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit

bb.i:                                             ; preds = %_ZNSt6vectorIPN7openvdb5v13_06points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEESaIS7_EE9push_backEOS7_.exit
  %i.ao = xor i64 %i.ai, -1
  %i.ap = lshr i32 %.sroa.3.012, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !48
  %i.at = and i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !48
  br label %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit

_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit: ; preds = %bb.h, %bb.i
  %i.au = load i32, ptr %2, align 4, !tbaa !8
  store i32 %i.au, ptr %i.i, align 8, !tbaa !8
  %i.av = add i32 %.sroa.3.012, 1                 ; 4 uses
  %i.aw = lshr i32 %i.av, 6                       ; 3 uses
  %i.ax = icmp ugt i32 %i.av, 4095
  br i1 %i.ax, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit
  %i.ay = and i32 %i.av, 63
  %i.az = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !48 ; 2 uses
  %i.bc = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  %.not.i.i.i.i6 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i6, label %bb.k, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bf = shl nsw i64 -1, %i.bc
  %i.bg = and i64 %i.bb, %i.bf                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k
  %exitcond.not.i.i.i.i25 = icmp eq i32 %i.aw, 63
  br i1 %exitcond.not.i.i.i.i25, label %._crit_edge, label %.lr.ph27

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph27
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph27, !llvm.loop !1837

.lr.ph27:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i26 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i26, 1 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !1837

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph27
  %i.bj = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.k
  %.016.lcssa.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ %i.bj, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bg, %bb.k ], [ %i.bi, %.critedge.loopexit.i.i.i.i ]
  %i.bk = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit: ; preds = %bb.j, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bn, %.critedge.i.i.i.i ], [ %i.av, %bb.j ] ; 2 uses
  %.not = icmp eq i32 %.118.i.i.i.i, 4096
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1899
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1890   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !45
  store i8 0, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.84, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #19 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !35
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !9
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISL_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cq, %bb.i ], [ %i.cq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesIS9_EclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
  %i.dd = load i8, ptr %i.l, align 2, !tbaa !1952
  %i.de = add i8 %i.dd, -1                        ; 2 uses
  store i8 %i.de, ptr %i.l, align 2, !tbaa !1952
  %i.df = load i8, ptr %5, align 8, !tbaa !1955
  %i.dg = add i8 %i.df, 7
  %i.dh = and i8 %i.dg, 7
  store i8 %i.dh, ptr %5, align 8, !tbaa !1955
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.di = phi i8 [ %i.cl, %.noexc ], [ %i.de, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %thread-pre-split22
  %i.dk = load ptr, ptr %3, align 8, !tbaa !1950  ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 15
  %i.dm = load atomic i8, ptr %i.dl monotonic, align 1
  %i.dn = icmp eq i8 %i.dm, -1
  br i1 %i.dn, label %bb.k, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !35
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.dp, %bb.k ], [ %i.dk, %bb.j ]
  %i.dq = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !1959

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, %bb.c
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesIS9_EclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1853 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !1851   ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !1855
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.e = phi ptr [ %i.t, %bb.i ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.08 = phi i64 [ %i.v, %bb.i ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.08
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1897 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1835 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7openvdb5v13_06points12AttributeSetEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_06points12AttributeSetEEclEPS3_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN7openvdb5v13_06points12AttributeSetD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.j) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 40) #29
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_06points12AttributeSetEEclEPS3_.exit.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.l = load atomic i32, ptr %i.k seq_cst, align 8
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i
  %i.m = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj1EEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(106) %i.g)
          to label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !35
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load atomic i32, ptr %i.k seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i.i.i.i, label %bb.f, label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #29
  br label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 112) #29
  %.pre9 = load ptr, ptr %0, align 8, !tbaa !1855
  br label %bb.i

bb.i:                                             ; preds = %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit, %.lr.ph
  %i.t = phi ptr [ %.pre9, %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.08
  store ptr null, ptr %i.u, align 8, !tbaa !1897
  %i.v = add i64 %.08, 1                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1960
}

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10stealNodesISt6vectorIPSA_SaISE_EEEEvRT_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1701 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not1011.i = icmp eq ptr %i.c, %i.d
  br i1 %.not1011.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10stealNodesISt6vectorIPSA_SaISE_EEEEvRT_RKS7_b.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE9push_backEOSB_.exit.i, %.lr.ph.i
  %.sroa.06.012.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.ag, %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE9push_backEOSB_.exit.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1774 ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE9push_backEOSB_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 8, !tbaa !8
  store ptr null, ptr %i.g, align 8, !tbaa !1738
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 56
  store i32 %i.i, ptr %i.j, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 60
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !1587
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !1857 ; 4 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1862
  %.not.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.k, align 8, !tbaa !1961
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.e, align 8, !tbaa !1857
  br label %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE9push_backEOSB_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8, !tbaa !1859   ; 4 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
  unreachable

_ZNKSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %i.h, ptr %i.z, align 8, !tbaa !1961
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i.i

_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i.i
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !1862
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #29
  br label %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i.i
  store ptr %i.y, ptr %1, align 8, !tbaa !1859
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !1857
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.f, align 8, !tbaa !1862
  br label %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE9push_backEOSB_.exit.i

_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE9push_backEOSB_.exit.i: ; preds = %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i.i, %bb.d, %bb.b
  %i.ag = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.06.012.i) #32 ; 2 uses
  %.not10.i = icmp eq ptr %i.ag, %i.d
  br i1 %.not10.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10stealNodesISt6vectorIPSA_SaISE_EEEEvRT_RKS7_b.exit, label %bb.b, !llvm.loop !1962

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10stealNodesISt6vectorIPSA_SaISE_EEEEvRT_RKS7_b.exit: ; preds = %_ZNSt6vectorIPN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESaISB_EE9push_backEOSB_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1900
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1915
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !35
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1853
  %i.g = load i64, ptr %0, align 8, !tbaa !1851
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !1916
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1919
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.l = load i64, ptr %1, align 8, !tbaa !1812
  store i64 %i.l, ptr %i.k, align 8, !tbaa !1812
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.m, align 32, !tbaa !1963
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.q, align 16, !tbaa !1929
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.r, align 4, !tbaa !1930
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 8, !tbaa !1931
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.v = load i64, ptr %3, align 8, !tbaa !1932
  store i64 %i.v, ptr %i.u, align 8, !tbaa !1932
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !1933
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1937
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1938
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !1710
  store ptr %4, ptr %i.m, align 32, !tbaa !1963
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISH_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1941 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1931
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISN_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !1931
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1944
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISN_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !1963
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISN_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 32, !tbaa !1963
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !1930
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !1930
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISN_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISN_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISL_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !1800

.critedge.loopexit.i.i.i.i.i.i.i:                 ; preds = %.lr.ph223
  %i.av = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %.critedge.loopexit.i.i.i.i.i.i.i, %bb.l
  %.016.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.l ], [ %i.av, %.critedge.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.as, %bb.l ], [ %i.au, %.critedge.loopexit.i.i.i.i.i.i.i ]
  %i.aw = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i.i, 6
  %i.ax = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2291

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEESaISB_EE9push_backEOSB_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #32 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit, label %bb.b, !llvm.loop !2292

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2293 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2293
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !2294 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2295
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2296
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !2294 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #30
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !1784  ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !1787
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.o:                                             ; preds = %.noexc32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.cj, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.o, %.noexc32
  %.not.i8.i = icmp eq ptr %i.cj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !1786
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #29
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !1784
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !1787
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !1786
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !2294, !noalias !2297
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !2294, !noalias !2300
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !2293, !noalias !2297
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !2296, !noalias !2297
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %vector.ph

bb.q:                                             ; preds = %bb.j
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.r:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !2046
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !48
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !2303

_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #30
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !48
  %i.ef = icmp sgt i64 %i.dv, 0
  br i1 %i.ef, label %bb.v, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.v:                                             ; preds = %.noexc36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %i.dc, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.v, %.noexc36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !1786
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !1784
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !1787
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1810 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
  %.sroa.1470.1 = phi ptr [ %i.eq, %bb.x ], [ %.sroa.1470.090, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.sroa.1169.1 = phi ptr [ %i.es, %bb.x ], [ %.sroa.1169.091, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.sroa.065.1 = phi ptr [ %i.er, %bb.x ], [ %i.eo, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.not75.a = icmp eq ptr %.sroa.065.1, %i.cv
  br i1 %.not75.a, label %.loopexit, label %vector.ph

.loopexit78:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.91, %bb.z ], [ @.str.90, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #28
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #30
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !48
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !1784
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !1787
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !1786
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !2293 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !2293
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !2294
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !2295
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !2296
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !2294
  %.pre127.a = ptrtoint ptr %.pre to i64
  %.pre128 = ptrtoint ptr %.pre117.a to i64
  %.pre130 = sub i64 %.pre127.a, %.pre128
  %.pre132 = ashr exact i64 %.pre130, 3
  %.pre134 = ptrtoint ptr %.pre118.a to i64
  %.pre136 = ptrtoint ptr %.pre119.a to i64
  %.pre138 = sub i64 %.pre134, %.pre136
  %.pre140 = ashr exact i64 %.pre138, 3
  %.pre142 = ptrtoint ptr %.pre120.a to i64
  %.pre144 = ptrtoint ptr %.pre121 to i64
  %.pre146 = sub i64 %.pre142, %.pre144
  %.pre148 = ashr exact i64 %.pre146, 3
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.y, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %.pre-phi149 = phi i64 [ %.pre148, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ %i.cc, %bb.y ]
  %.pre-phi141 = phi i64 [ %.pre140, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ %i.bu, %bb.y ]
  %.pre-phi133 = phi i64 [ %.pre132, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ %i.bk, %bb.y ]
  %i.fd = phi ptr [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ %i.be, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !1851
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !1853
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %5, ptr %7, align 8, !tbaa !2304
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !2306
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !1787
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !1784
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3                 ; 3 uses
  %i.ft = icmp ugt i64 %i.fs, 1
  br i1 %i.ft, label %.lr.ph94.preheader, label %._crit_edge

.lr.ph94.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.fn, align 8    ; 2 uses
  %i.fu = add nsw i64 %i.fs, -1                   ; 2 uses
  %i.fv = add nsw i64 %i.fs, -2
  %xtraiter = and i64 %i.fu, 3                    ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 3
  br i1 %i.fw, label %.lr.ph94.epil.preheader, label %.lr.ph94.preheader.new

.lr.ph94.preheader.new:                           ; preds = %.lr.ph94.preheader
  %unroll_iter = and i64 %i.fu, -4
  br label %.lr.ph94

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph94
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph94.epil.preheader

.lr.ph94.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph94.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph94.preheader ], [ %i.gq, %._crit_edge.loopexit.unr-lcssa ]
  %.01993.epil.init = phi i64 [ 1, %.lr.ph94.preheader ], [ %i.gr, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod247 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod247)
  br label %.lr.ph94.epil

.lr.ph94.epil:                                    ; preds = %.lr.ph94.epil, %.lr.ph94.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph94.epil.preheader ], [ %i.fz, %.lr.ph94.epil ]
  %.01993.epil = phi i64 [ %.01993.epil.init, %.lr.ph94.epil.preheader ], [ %i.ga, %.lr.ph94.epil ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE16initRootChildrenIKNS1_8RootNodeISA_EEEEbRT_:bb.a
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESt14default_deleteISD_EE5resetIPSC_vEEvT_.exit

.thread:                                          ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1812 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !1812
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESt14default_deleteISD_EE5resetIPSC_vEEvT_.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i.i: ; preds = %.thread
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #29
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESt14default_deleteISD_EE5resetIPSC_vEEvT_.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESt14default_deleteISD_EE5resetIPSC_vEEvT_.exit: ; preds = %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i.i, %.thread, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i, %bb.c
  %.sink = phi ptr [ %.pre, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i ], [ %i.m, %bb.c ], [ null, %.thread ], [ null, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i.i ]
  %i.q = phi i64 [ %i.h, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i ], [ %i.h, %bb.c ], [ 0, %.thread ], [ 0, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEclISC_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSD_EE5valueEvE4typeEPSH_.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.r, align 8, !tbaa !2537
  store i64 %i.q, ptr %0, align 8, !tbaa !2494
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESt14default_deleteISD_EE5resetIPSC_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEESt14default_deleteISD_EE5resetIPSC_vEEvT_.exit ]
  %.not22 = icmp eq i64 %i.s, 0
  br i1 %.not22, label %.thread21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2537
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1701 ; 3 uses
  %.not2.i.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.2.0.i.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1738
  %.not1.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i.i, label %bb.f, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2213

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.2.0.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %.not2324 = icmp eq ptr %.sroa.2.1.i.i, %i.c
  br i1 %.not2324, label %.thread21, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit
  %.026 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit ], [ %i.u, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.025 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit ], [ %.sroa.2.1.i.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.025, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1774
  %i.ab = getelementptr inbounds nuw i8, ptr %.026, i64 8
  store ptr %i.aa, ptr %.026, align 8, !tbaa !1961
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.5.025) #32 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1738
  %.not1.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #32 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i12, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !2213

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.not23 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not23, label %.thread21, label %.lr.ph, !llvm.loop !2538

.thread21:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS9_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeISD_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.895, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>::ChildIter.718", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.896, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2494   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not166 = icmp eq i64 %i.a, 0
  br i1 %.not166, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre123.a = load i64, ptr %1, align 8, !tbaa !2494
  %i.q = icmp eq i64 %.pre123.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.038103 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !2500
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.038103
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit90 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit90:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2537
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.038103
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1961
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi196 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load197 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load197)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi196, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 512
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !2539

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp92

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit91 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit91:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp92:                             ; preds = %bb.p
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.038103, 1                 ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2494
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !2540

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not165 = icmp eq i64 %i.a, 0
  br i1 %.not165, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc80 unwind label %bb.f   ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc80
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc80
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2494
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !2520
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2519
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISF_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal18ActiveVoxelCountOpINS7_4TreeINS7_8RootNodeISJ_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre124.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre125.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.au

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre125.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre124.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph105

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph105.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.037104.epil.init = phi i64 [ 1, %.lr.ph105.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph105.epil.preheader ], [ %i.dn, %.lr.ph105.epil ]
  %.037104.epil = phi i64 [ %.037104.epil.init, %.lr.ph105.epil.preheader ], [ %i.do, %.lr.ph105.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph105.epil.preheader ], [ %epil.iter.next, %.lr.ph105.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.037104.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.037104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph105.epil, !llvm.loop !2541

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph105.preheader.new ], [ %i.ee, %.lr.ph105 ]
  %.037104 = phi i64 [ 1, %.lr.ph105.preheader.new ], [ %i.ef, %.lr.ph105 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.3, %.lr.ph105 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.037104 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS9_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeISD_EEEEEEEEEEbRT_RKT0_b:bb.a
  %.not89 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not89, label %._crit_edge110.loopexit, label %.lr.ph109

bb.ap:                                            ; preds = %bb.ae, %._crit_edge110
  %.pre127129 = phi i64 [ %.pre127, %._crit_edge110 ], [ %.pre127128, %bb.ae ]
  %i.hd = phi i64 [ %.pre127, %._crit_edge110 ], [ %i.fc, %bb.ae ] ; 2 uses
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge110 ], [ %.036112, %bb.ae ]
  %i.he = add nuw i64 %.0113, 1                   ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.hd
  br i1 %i.hf, label %bb.ae, label %.thread87, !llvm.loop !2551

bb.aq:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.hg = load i64, ptr %1, align 8, !tbaa !2494
  store i64 %i.hg, ptr %10, align 8, !tbaa !1851
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.hh, align 8, !tbaa !1853
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 1, ptr %i.hi, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %0, ptr %11, align 8, !tbaa !2552
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %6, ptr %i.hj, align 8, !tbaa !2304
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %2, ptr %i.hk, align 8, !tbaa !2520
  %i.hl = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %1, ptr %i.hl, align 8, !tbaa !2519
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISF_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal18ActiveVoxelCountOpINS7_4TreeINS7_8RootNodeISJ_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.thread87

bb.as:                                            ; preds = %bb.aq
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.au

.thread87:                                        ; preds = %bb.ap, %bb.ad, %.thread, %bb.ar, %bb.ab
  %i.hn = phi i1 [ false, %bb.ab ], [ true, %bb.ar ], [ false, %.thread ], [ true, %bb.ad ], [ true, %bb.ap ]
  %i.ho = load ptr, ptr %6, align 8, !tbaa !1784  ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %.thread87
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !1786
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.thread87, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i1 %i.hn

bb.au:                                            ; preds = %.loopexit91, %.loopexit.split-lp92, %.loopexit90, %.loopexit.split-lp, %bb.aa, %bb.al, %bb.as, %bb.v, %bb.f
  %.pn49.pn = phi { ptr, i32 } [ %i.da, %bb.v ], [ %i.eq, %bb.aa ], [ %i.u, %bb.f ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.gb, %bb.al ], [ %i.hm, %bb.as ], [ %lpad.loopexit, %.loopexit90 ], [ %lpad.loopexit93, %.loopexit91 ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp92 ]
  %i.hu = load ptr, ptr %6, align 8, !tbaa !1784  ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorImSaImEED2Ev.exit77, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !1786
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit77

_ZNSt6vectorImSaImEED2Ev.exit77:                  ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn49.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS7_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINSB_ISC_Lj5EEEEEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.908, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>::ChildIter.722", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.909, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2521   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not154 = icmp eq i64 %i.a, 0
  br i1 %.not154, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre116.a = load i64, ptr %1, align 8, !tbaa !2521
  %i.q = icmp eq i64 %.pre116.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.03898 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !2500
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.03898
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit88 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit88:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2543
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.03898
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2046
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi176 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load177 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load177)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi176, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 64
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !2554

_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp90

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit89 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit89:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp90:                             ; preds = %bb.p
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.03898, 1                  ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2521
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !2555

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not153 = icmp eq i64 %i.a, 0
  br i1 %.not153, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc78 unwind label %bb.f   ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc78
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc78
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2521
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !2520
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2535
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISD_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal18ActiveVoxelCountOpINS7_4TreeINS7_8RootNodeINSH_ISI_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre117.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre118.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ap

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre118.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph100.epil.preheader, label %.lr.ph100.preheader.new

.lr.ph100.preheader.new:                          ; preds = %.lr.ph100.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph100

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph100
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph100.epil.preheader

.lr.ph100.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph100.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.03799.epil.init = phi i64 [ 1, %.lr.ph100.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph100.epil

.lr.ph100.epil:                                   ; preds = %.lr.ph100.epil, %.lr.ph100.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph100.epil.preheader ], [ %i.dn, %.lr.ph100.epil ]
  %.03799.epil = phi i64 [ %.03799.epil.init, %.lr.ph100.epil.preheader ], [ %i.do, %.lr.ph100.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph100.epil.preheader ], [ %epil.iter.next, %.lr.ph100.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.03799.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.03799.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph100.epil, !llvm.loop !2556

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph100:                                        ; preds = %.lr.ph100, %.lr.ph100.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph100.preheader.new ], [ %i.ee, %.lr.ph100 ]
  %.03799 = phi i64 [ 1, %.lr.ph100.preheader.new ], [ %i.ef, %.lr.ph100 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph100.preheader.new ], [ %niter.next.3, %.lr.ph100 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.03799 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj3EE13reduceTopDownINS0_5tools14count_internal20InactiveVoxelCountOpISE_EEEEvRT_bmm:bb.a
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.i ]
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>>::NodeReducer.924", align 8 ; 9 uses
  %6 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>>::NodeRange", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !2759
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !2762
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  %i.b = load i64, ptr %0, align 8, !tbaa !2494, !noalias !2769
  store i64 %i.b, ptr %6, align 8, !tbaa !2514, !alias.scope !2769
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !2517, !alias.scope !2769
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !2518, !alias.scope !2769
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !2519, !alias.scope !2769
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSG_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISE_EEEEEEEENSG_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSH_RSU_RSW_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEEclERKNSC_9NodeRangeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit unwind label %bb.e

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit: ; preds = %.noexc, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.f = load ptr, ptr %5, align 8, !tbaa !2772   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1591 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.h) #29
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !2455 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 8) #29
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #29
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS9_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISD_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.943, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>::ChildIter.718", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.944, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2494   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not166 = icmp eq i64 %i.a, 0
  br i1 %.not166, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre123.a = load i64, ptr %1, align 8, !tbaa !2494
  %i.q = icmp eq i64 %.pre123.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.038103 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !2755
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.038103
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit90 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit90:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2537
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.038103
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1961
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi196 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load197 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load197)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi196, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 512
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !2773

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp92

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit91 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit91:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp92:                             ; preds = %bb.p
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.038103, 1                 ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2494
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !2774

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not165 = icmp eq i64 %i.a, 0
  br i1 %.not165, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc80 unwind label %bb.f   ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc80
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc80
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2494
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !2772
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2519
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISF_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeISJ_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre124.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre125.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.au

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre125.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre124.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph105

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph105.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.037104.epil.init = phi i64 [ 1, %.lr.ph105.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph105.epil.preheader ], [ %i.dn, %.lr.ph105.epil ]
  %.037104.epil = phi i64 [ %.037104.epil.init, %.lr.ph105.epil.preheader ], [ %i.do, %.lr.ph105.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph105.epil.preheader ], [ %epil.iter.next, %.lr.ph105.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.037104.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.037104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph105.epil, !llvm.loop !2775

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph105.preheader.new ], [ %i.ee, %.lr.ph105 ]
  %.037104 = phi i64 [ 1, %.lr.ph105.preheader.new ], [ %i.ef, %.lr.ph105 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.3, %.lr.ph105 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.037104 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEEEEvRT_bm:bb.a

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i20 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i20, 1 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i.i.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !2795

.critedge.loopexit.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph
  %i.ao = xor i64 %i.an, -1
  %i.ap = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %.critedge.loopexit.i.i.i.i.i.i.i.i, %bb.h
  %.016.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ap, %.critedge.loopexit.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ %i.ao, %.critedge.loopexit.i.i.i.i.i.i.i.i ]
  %i.aq = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i.i.i, 6
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit.i.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i, %bb.g
  %.118.i.i.i.i.i.i.i.i = phi i32 [ %i.at, %.critedge.i.i.i.i.i.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i.i, 4096
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEEEEvRT_RNSB_9NodeRange8IteratorE.exit.i, label %bb.d, !llvm.loop !2796

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEEEEvRT_RNSB_9NodeRange8IteratorE.exit.i: ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEEppEv.exit.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !2755
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.5.06.i
  store i8 1, ptr %i.av, align 1, !tbaa !1587
  %i.aw = add nuw i64 %.sroa.5.06.i, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.b
  br i1 %exitcond.not, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit.thread, label %.lr.ph.i, !llvm.loop !2797

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit.thread: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEEEEvRT_RNSB_9NodeRange8IteratorE.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !2772  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1591 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #29
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.i
  %i.az = load ptr, ptr %.pre, align 8, !tbaa !2455 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 8) #29
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 32) #29
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit.thread, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.j:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS7_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINSB_ISC_Lj5EEEEEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.959, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>::ChildIter.722", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.960, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2521   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not154 = icmp eq i64 %i.a, 0
  br i1 %.not154, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre116.a = load i64, ptr %1, align 8, !tbaa !2521
  %i.q = icmp eq i64 %.pre116.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.03898 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !2755
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.03898
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit88 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit88:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2543
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.03898
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2046
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi176 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load177 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load177)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi176, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 64
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !2798

_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp90

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit89 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit89:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp90:                             ; preds = %bb.p
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.03898, 1                  ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2521
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !2799

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not153 = icmp eq i64 %i.a, 0
  br i1 %.not153, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc78 unwind label %bb.f   ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc78
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc78
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2521
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !2772
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2535
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISD_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeINSH_ISI_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre117.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre118.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ap

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre118.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph100.epil.preheader, label %.lr.ph100.preheader.new

.lr.ph100.preheader.new:                          ; preds = %.lr.ph100.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph100

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph100
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph100.epil.preheader

.lr.ph100.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph100.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.03799.epil.init = phi i64 [ 1, %.lr.ph100.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph100.epil

.lr.ph100.epil:                                   ; preds = %.lr.ph100.epil, %.lr.ph100.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph100.epil.preheader ], [ %i.dn, %.lr.ph100.epil ]
  %.03799.epil = phi i64 [ %.03799.epil.init, %.lr.ph100.epil.preheader ], [ %i.do, %.lr.ph100.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph100.epil.preheader ], [ %epil.iter.next, %.lr.ph100.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.03799.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.03799.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph100.epil, !llvm.loop !2800

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph100:                                        ; preds = %.lr.ph100, %.lr.ph100.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph100.preheader.new ], [ %i.ee, %.lr.ph100 ]
  %.03799 = phi i64 [ 1, %.lr.ph100.preheader.new ], [ %i.ef, %.lr.ph100 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph100.preheader.new ], [ %niter.next.3, %.lr.ph100 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.03799 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_7
begin_hunk_8_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEvRT_bm:bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.5.05.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1961
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 266240
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi10 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load11 = load <2 x i64>, ptr %i.q, align 8, !tbaa !48
  %i.r = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.s = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load11)
  %i.t = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.u = trunc nuw nsw <2 x i64> %i.s to <2 x i32>
  %i.v = add <2 x i32> %vec.phi, %i.t             ; 2 uses
  %i.w = add <2 x i32> %vec.phi10, %i.u           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, 512
  br i1 %i.x, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEvRT_RNSC_9NodeRange8IteratorE.exit.i.i, label %vector.body, !llvm.loop !3004

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEvRT_RNSC_9NodeRange8IteratorE.exit.i.i: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.w, %i.v
  %i.y = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.z = zext i32 %i.y to i64
  %i.aa = add i64 %i.l, %i.z                      ; 2 uses
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !1816
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.5.05.i.i
  store i8 1, ptr %i.ab, align 1, !tbaa !1587
  %i.ac = add nuw i64 %.sroa.5.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit.thread, label %vector.ph, !llvm.loop !3005

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit.thread: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEvRT_RNSC_9NodeRange8IteratorE.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !3006  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1591 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #29
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d
  %i.af = load ptr, ptr %.pre, align 8, !tbaa !2990 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 8) #29
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 32) #29
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit.thread, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.e:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS9_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISD_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.999, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>::ChildIter.718", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.1000, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2494   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not166 = icmp eq i64 %i.a, 0
  br i1 %.not166, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre123.a = load i64, ptr %1, align 8, !tbaa !2494
  %i.q = icmp eq i64 %.pre123.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.038103 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !2989
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.038103
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit90 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit90:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2537
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.038103
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1961
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi196 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load197 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load197)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi196, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 512
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !3007

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp92

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit91 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit91:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp92:                             ; preds = %bb.p
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.038103, 1                 ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2494
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !3008

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not165 = icmp eq i64 %i.a, 0
  br i1 %.not165, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc80 unwind label %bb.f   ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc80
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc80
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2494
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !3006
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2519
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISF_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal17ActiveTileCountOpINS7_4TreeINS7_8RootNodeISJ_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre124.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre125.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.au

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre125.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre124.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph105

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph105.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.037104.epil.init = phi i64 [ 1, %.lr.ph105.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph105.epil.preheader ], [ %i.dn, %.lr.ph105.epil ]
  %.037104.epil = phi i64 [ %.037104.epil.init, %.lr.ph105.epil.preheader ], [ %i.do, %.lr.ph105.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph105.epil.preheader ], [ %epil.iter.next, %.lr.ph105.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.037104.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.037104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph105.epil, !llvm.loop !3009

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph105.preheader.new ], [ %i.ee, %.lr.ph105 ]
  %.037104 = phi i64 [ 1, %.lr.ph105.preheader.new ], [ %i.ef, %.lr.ph105 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.3, %.lr.ph105 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.037104 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_8
begin_hunk_9_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEvRT_bm:bb.a
  store ptr null, ptr %5, align 8, !tbaa !3130
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !3133
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3140)
  %i.b = load i64, ptr %0, align 8, !tbaa !2494, !noalias !3140 ; 4 uses
  store i64 %i.b, ptr %6, align 8, !tbaa !2514, !alias.scope !3140
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !2517, !alias.scope !3140
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !2518, !alias.scope !3140
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !2519, !alias.scope !3140
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSG_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeISE_EEEEEEEENSG_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSH_RSU_RSW_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3115 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3125
  %.promoted.i.i = load i64, ptr %i.g, align 8, !tbaa !3109
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 1, i64 %i.b, i1 false), !tbaa !1587
  %reass.mul.i = mul i64 %i.b, 270348
  %i.j = add i64 %.promoted.i.i, %reass.mul.i
  store i64 %i.j, ptr %i.g, align 8, !tbaa !3109
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit.thread

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit.thread: ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !3143  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1591 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d
  %i.m = load ptr, ptr %.pre, align 8, !tbaa !3129 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #29
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 32) #29
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit.thread, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS9_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISD_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.1038, align 8           ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>::ChildIter.718", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.1039, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2494   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not166 = icmp eq i64 %i.a, 0
  br i1 %.not166, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre123.a = load i64, ptr %1, align 8, !tbaa !2494
  %i.q = icmp eq i64 %.pre123.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.038103 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !3125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.038103
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit90 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit90:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2537
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.038103
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1961
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi196 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load197 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load197)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi196, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 512
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !3144

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp92

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit91 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit91:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp92:                             ; preds = %bb.p
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.038103, 1                 ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2494
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !3145

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not165 = icmp eq i64 %i.a, 0
  br i1 %.not165, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc80 unwind label %bb.f   ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc80
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc80
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2494
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !3143
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2519
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISF_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeISJ_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre124.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre125.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.au

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre125.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre124.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph105

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph105.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.037104.epil.init = phi i64 [ 1, %.lr.ph105.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph105.epil.preheader ], [ %i.dn, %.lr.ph105.epil ]
  %.037104.epil = phi i64 [ %.037104.epil.init, %.lr.ph105.epil.preheader ], [ %i.do, %.lr.ph105.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph105.epil.preheader ], [ %epil.iter.next, %.lr.ph105.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.037104.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.037104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph105.epil, !llvm.loop !3146

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph105.preheader.new ], [ %i.ee, %.lr.ph105 ]
  %.037104 = phi i64 [ 1, %.lr.ph105.preheader.new ], [ %i.ef, %.lr.ph105 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.3, %.lr.ph105 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.037104 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_9
begin_hunk_10_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEEEEvRT_bm:bb.a
  store ptr null, ptr %5, align 8, !tbaa !3130
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !3158
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  %i.b = load i64, ptr %0, align 8, !tbaa !2521, !noalias !3160 ; 4 uses
  store i64 %i.b, ptr %6, align 8, !tbaa !2530, !alias.scope !3160
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !2533, !alias.scope !3160
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !2534, !alias.scope !3160
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !2535, !alias.scope !3160
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSF_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEEEEEENSF_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSG_RSU_RSW_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3115 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3125
  %.promoted.i.i = load i64, ptr %i.g, align 8, !tbaa !3109
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 1, i64 %i.b, i1 false), !tbaa !1587
  %reass.mul.i = mul i64 %i.b, 33804
  %i.j = add i64 %.promoted.i.i, %reass.mul.i
  store i64 %i.j, ptr %i.g, align 8, !tbaa !3109
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit.thread

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit.thread: ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !3143  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1591 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d
  %i.m = load ptr, ptr %.pre, align 8, !tbaa !3129 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #29
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 32) #29
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit.thread, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS7_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINSB_ISC_Lj5EEEEEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.1050, align 8           ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>::ChildIter.722", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.1051, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2521   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not154 = icmp eq i64 %i.a, 0
  br i1 %.not154, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre116.a = load i64, ptr %1, align 8, !tbaa !2521
  %i.q = icmp eq i64 %.pre116.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.03898 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !3125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.03898
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit88 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit88:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2543
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.03898
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2046
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi176 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load177 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load177)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi176, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 64
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !3163

_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp90

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit89 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit89:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp90:                             ; preds = %bb.p
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.03898, 1                  ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2521
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !3164

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not153 = icmp eq i64 %i.a, 0
  br i1 %.not153, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc78 unwind label %bb.f   ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc78
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc78
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2521
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !3143
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2535
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISD_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeINSH_ISI_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre117.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre118.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ap

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre118.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph100.epil.preheader, label %.lr.ph100.preheader.new

.lr.ph100.preheader.new:                          ; preds = %.lr.ph100.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph100

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph100
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph100.epil.preheader

.lr.ph100.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph100.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.03799.epil.init = phi i64 [ 1, %.lr.ph100.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph100.epil

.lr.ph100.epil:                                   ; preds = %.lr.ph100.epil, %.lr.ph100.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph100.epil.preheader ], [ %i.dn, %.lr.ph100.epil ]
  %.03799.epil = phi i64 [ %.03799.epil.init, %.lr.ph100.epil.preheader ], [ %i.do, %.lr.ph100.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph100.epil.preheader ], [ %epil.iter.next, %.lr.ph100.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.03799.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.03799.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph100.epil, !llvm.loop !3165

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph100:                                        ; preds = %.lr.ph100, %.lr.ph100.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph100.preheader.new ], [ %i.ee, %.lr.ph100 ]
  %.03799 = phi i64 [ 1, %.lr.ph100.preheader.new ], [ %i.ef, %.lr.ph100 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph100.preheader.new ], [ %niter.next.3, %.lr.ph100 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.03799 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_10
begin_hunk_11_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEvRT_bm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc5
  %.sroa.5.05.i.i = phi i64 [ %i.r, %.noexc5 ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !3625 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !2537
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.5.05.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1961
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3604
  %i.m = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEclIKSE_EEbRT_m(ptr noundef nonnull align 4 dereferenceable(9) %i.l, ptr noundef nonnull align 8 dereferenceable(270352) %i.j, i64 noundef %.sroa.5.05.i.i)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3614
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.5.05.i.i
  %i.q = zext i1 %i.m to i8
  store i8 %i.q, ptr %i.p, align 1, !tbaa !1587
  %i.r = add nuw i64 %.sroa.5.05.i.i, 1           ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.b
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit, !llvm.loop !3635

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit: ; preds = %.noexc5, %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.t = load ptr, ptr %5, align 8, !tbaa !3636   ; 4 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1591 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.v) #29
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !3618 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 12) #29
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 32) #29
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEE3runERKNSC_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEENSC_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS9_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISD_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.1209, align 8           ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>::ChildIter.718", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.1210, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2494   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not166 = icmp eq i64 %i.a, 0
  br i1 %.not166, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre123.a = load i64, ptr %1, align 8, !tbaa !2494
  %i.q = icmp eq i64 %.pre123.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.038103 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !3614
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.038103
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit90 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit90:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2537
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.038103
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1961
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi196 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load197 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load197)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi196, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 512
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !3637

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp92

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit91 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit91:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp92:                             ; preds = %bb.p
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.038103, 1                 ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2494
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !3638

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not165 = icmp eq i64 %i.a, 0
  br i1 %.not165, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc80 unwind label %bb.f   ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc80
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc80
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2494
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !3636
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2519
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISF_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeISJ_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre124.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre125.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.au

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre125.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre124.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph105

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph105.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.037104.epil.init = phi i64 [ 1, %.lr.ph105.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph105.epil.preheader ], [ %i.dn, %.lr.ph105.epil ]
  %.037104.epil = phi i64 [ %.037104.epil.init, %.lr.ph105.epil.preheader ], [ %i.do, %.lr.ph105.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph105.epil.preheader ], [ %epil.iter.next, %.lr.ph105.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.037104.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.037104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph105.epil, !llvm.loop !3639

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph105.preheader.new ], [ %i.ee, %.lr.ph105 ]
  %.037104 = phi i64 [ 1, %.lr.ph105.preheader.new ], [ %i.ef, %.lr.ph105 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.3, %.lr.ph105 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.037104 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.037104
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_11
begin_hunk_12_@_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEEEEvRT_bm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc5
  %.sroa.5.05.i.i = phi i64 [ %i.r, %.noexc5 ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !3651 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !2543
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.5.05.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2046
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3604
  %i.m = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEclIKSD_EEbRT_m(ptr noundef nonnull align 4 dereferenceable(9) %i.l, ptr noundef nonnull align 8 dereferenceable(33808) %i.j, i64 noundef %.sroa.5.05.i.i)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3614
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.5.05.i.i
  %i.q = zext i1 %i.m to i8
  store i8 %i.q, ptr %i.p, align 1, !tbaa !1587
  %i.r = add nuw i64 %.sroa.5.05.i.i, 1           ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.b
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit, !llvm.loop !3656

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit: ; preds = %.noexc5, %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.t = load ptr, ptr %5, align 8, !tbaa !3636   ; 4 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1591 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.v) #29
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !3618 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 12) #29
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEclEPSI_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 32) #29
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEE3runERKNSB_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEEEEEEEclEPSK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS9_Lj5EEEEEEEEEEENSB_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS7_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINSB_ISC_Lj5EEEEEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.613", align 8   ; 21 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.1221, align 8           ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>::ChildIter.722", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.1222, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !2521   ; 9 uses
  br i1 %3, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not154 = icmp eq i64 %i.a, 0
  br i1 %.not154, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30
          to label %.noexc52 unwind label %bb.f   ; 8 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !1784   ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !1787
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc52
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !1784
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1787
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !1786
  %.pre116.a = load i64, ptr %1, align 8, !tbaa !2521
  %i.q = icmp eq i64 %.pre116.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 10 uses
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.cg, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.03898 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !3614
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.03898
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1587, !range !130, !noundef !131
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc54 unwind label %.loopexit88 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.w, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %.noexc54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.au) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !1784
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !1787
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit88:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

vector.ph:                                        ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !2543
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.03898
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2046
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi176 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48
  %wide.load177 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !48
  %i.bc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load177)
  %i.be = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = add <2 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <2 x i32> %vec.phi176, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 64
  br i1 %i.bi, label %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !3657

_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  store i64 %i.bk, ptr %i.y, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !1787
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE10childCountEv.exit
  %i.bm = ptrtoint ptr %i.v to i64
  %i.bn = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #28
          to label %.noexc63.a unwind label %.loopexit.split-lp90

.noexc63.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57: ; preds = %bb.o
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #30
          to label %.noexc64 unwind label %.loopexit89 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !48
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

bb.q:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.w, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.q, %.noexc64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !1786
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.bw, ptr %6, align 8, !tbaa !1784
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !1787
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !1786
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit89:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i57
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp90:                             ; preds = %bb.p
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.v, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.w, %bb.n ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.w, %bb.i ], [ %i.ao, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.v, %bb.n ], [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.x, %bb.i ], [ %i.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.bl, %bb.n ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i62 ], [ %i.ad, %bb.i ], [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = add nuw i64 %.03898, 1                  ; 2 uses
  %i.cj = load i64, ptr %1, align 8, !tbaa !2521
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit, !llvm.loop !3658

bb.s:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not153 = icmp eq i64 %i.a, 0
  br i1 %.not153, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.cn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.t
  %i.co = phi ptr [ @.str.91, %bb.t ], [ @.str.90, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.co) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.t
  %i.cp = shl nuw nsw i64 %i.a, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #30
          to label %.noexc78 unwind label %bb.f   ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.cq, align 8, !tbaa !48
  %i.cr = add nsw i64 %i.a, -1                    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc78
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !48
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc78
  store ptr %i.cq, ptr %6, align 8, !tbaa !1784
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.a ; 2 uses
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !1787
  store ptr %i.cu, ptr %i.cm, align 8, !tbaa !1786
  %.pre = load i64, ptr %1, align 8, !tbaa !2521
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.s, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.cv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.cv, ptr %7, align 8, !tbaa !1851
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !1853
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.cx, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !3636
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !2304
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.cz, align 8, !tbaa !2535
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS6_6points17PointDataLeafNodeINS6_10PointIndexIjLj1EEELj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISD_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeINSH_ISI_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS12_RS14_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre117.a = load ptr, ptr %i.cl, align 8, !tbaa !1787
  %.pre118.a = load ptr, ptr %6, align 8, !tbaa !1784
  br label %.loopexit

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ap

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.u
  %i.db = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre118.a, %bb.u ], [ %i.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %i.dc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.u ], [ %i.ch, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.loopexit
  %load_initial = load i64, ptr %i.db, align 8    ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dj = add nsw i64 %i.dg, -2
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %.lr.ph100.epil.preheader, label %.lr.ph100.preheader.new

.lr.ph100.preheader.new:                          ; preds = %.lr.ph100.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph100

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph100
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph100.epil.preheader

.lr.ph100.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph100.preheader ], [ %i.ee, %._crit_edge.loopexit.unr-lcssa ]
  %.03799.epil.init = phi i64 [ 1, %.lr.ph100.preheader ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph100.epil

.lr.ph100.epil:                                   ; preds = %.lr.ph100.epil, %.lr.ph100.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph100.epil.preheader ], [ %i.dn, %.lr.ph100.epil ]
  %.03799.epil = phi i64 [ %.03799.epil.init, %.lr.ph100.epil.preheader ], [ %i.do, %.lr.ph100.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph100.epil.preheader ], [ %epil.iter.next, %.lr.ph100.epil ]
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %.03799.epil ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, %store_forwarded.epil    ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !48
  %i.do = add nuw i64 %.03799.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph100.epil, !llvm.loop !3659

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph100.epil, %.loopexit
  %i.dp = icmp eq ptr %i.db, %i.dc
  br i1 %i.dp, label %.thread, label %bb.w

.lr.ph100:                                        ; preds = %.lr.ph100, %.lr.ph100.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph100.preheader.new ], [ %i.ee, %.lr.ph100 ]
  %.03799 = phi i64 [ 1, %.lr.ph100.preheader.new ], [ %i.ef, %.lr.ph100 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph100.preheader.new ], [ %niter.next.3, %.lr.ph100 ]
  %i.dq = getelementptr [8 x i8], ptr %i.db, i64 %.03799 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add i64 %i.dr, %store_forwarded         ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  %i.dx = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.dy = getelementptr i8, ptr %i.dx, i64 16     ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !48
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eb = getelementptr [8 x i8], ptr %i.db, i64 %.03799
  %i.ec = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !48
end_hunk_12
