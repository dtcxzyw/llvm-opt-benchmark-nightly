Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Archive?download=true
inline.NumInlined: 9836
inline.NumDeleted: 4264
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !692
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39, !alias.scope !702
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !702
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !702
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114, !noalias !702 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !702 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116, !noalias !702 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !702 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !702
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !692
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !703

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !694
  br label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !692   ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #44 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !14
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
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !692
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !695
  br label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

declare void @_ZN7openvdb5v13_02io19DelayedLoadMetadata10resizeMaskEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

declare void @_ZN7openvdb5v13_02io19DelayedLoadMetadata20resizeCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #46
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !704  ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #45
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !379 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIiLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIiLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEESt14default_deleteIS5_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #45
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIiLj3EEESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIiLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !704    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.g)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.h seq_cst, align 8
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.q = icmp eq ptr %i.g, %i.a
  br i1 %i.q, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIiLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EED2Ev.exit.i, %bb.b
  %i.r = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #45
  br label %bb.i
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !725

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !726

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EE9push_backEOS8_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #48 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit, label %bb.b, !llvm.loop !727

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !728 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !728
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !729 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !730
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !731
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !729 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #44
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !732   ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !734
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
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #45
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !732
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !734
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !735
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !729, !noalias !736
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !729, !noalias !739
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !728, !noalias !736
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !731, !noalias !736
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

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !716
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !9
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !742

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !734
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #44
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !9
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
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #45
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !732
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !734
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !745 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
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

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.42, %bb.z ], [ @.str.41, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #47
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #44
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !9
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !732
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !734
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !728 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !728
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !729
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !730
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !731
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !729
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !746
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !748
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %5, ptr %7, align 8, !tbaa !750
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !752
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !734
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !732
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
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
end_hunk_1
begin_hunk_2_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !692
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39, !alias.scope !952
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !952
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !952
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114, !noalias !952 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !952 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116, !noalias !952 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !952 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !952
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !692
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !953

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !694
  br label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !692   ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #44 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !14
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
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !692
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !695
  br label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeIlLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #46
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !954  ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIlLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #45
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !458 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIlLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIlLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEESt14default_deleteIS5_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #45
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIlLj3EEESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIlLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !954    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIlLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.g)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.h seq_cst, align 8
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.q = icmp eq ptr %i.g, %i.a
  br i1 %i.q, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIlLj3EED2Ev.exit.i, %bb.b
  %i.r = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #45
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIlLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, %bb.a
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !725

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !971

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEESaIS8_EE9push_backEOS8_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #48 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit, label %bb.b, !llvm.loop !972

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !973 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !973
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !974 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !975
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !976
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !974 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #44
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !732   ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !734
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
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #45
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !732
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !734
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !735
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !974, !noalias !977
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !974, !noalias !980
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !973, !noalias !977
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !976, !noalias !977
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

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !963
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !9
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !983

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !734
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #44
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !9
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
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #45
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !732
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !734
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !984 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
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

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.42, %bb.z ], [ @.str.41, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #47
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #44
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !9
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !732
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !734
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !973 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !973
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !974
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !975
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !976
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !974
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !746
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !748
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %5, ptr %7, align 8, !tbaa !750
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !985
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !734
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !732
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
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
begin_hunk_4_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !692
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39, !alias.scope !1142
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !1142
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !1142
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114, !noalias !1142 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1142 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116, !noalias !1142 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !1142 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !1142
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !692
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1143

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !694
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !692   ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #44 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !14
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
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !692
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !695
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #46
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1144 ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #45
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !491 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #45
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1144   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.g)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.h seq_cst, align 8
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.q = icmp eq ptr %i.g, %i.a
  br i1 %i.q, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i, %bb.b
  %i.r = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #45
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, %bb.a
  ret void
}
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !725

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1161

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEESaIS8_EE9push_backEOS8_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #48 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit, label %bb.b, !llvm.loop !1162

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1163 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1163
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !1164 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1165
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1166
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !1164 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #44
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !732   ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !734
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
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #45
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !732
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !734
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !735
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !1164, !noalias !1167
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !1164, !noalias !1170
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !1163, !noalias !1167
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !1166, !noalias !1167
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

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !1153
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !9
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !1173

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !734
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #44
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !9
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
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #45
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !732
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !734
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1174 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
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

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.42, %bb.z ], [ @.str.41, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #47
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #44
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !9
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !732
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !734
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !1163 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !1163
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !1164
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !1165
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !1166
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !1164
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !746
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !748
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %5, ptr %7, align 8, !tbaa !750
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !1175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !734
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !732
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
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
end_hunk_5
begin_hunk_6_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !692
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39, !alias.scope !1336
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !1336
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !1336
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114, !noalias !1336 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1336 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116, !noalias !1336 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !1336 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !1336
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !692
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1337

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !694
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !692   ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #44 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !14
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
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !692
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !695
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #46
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1338 ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #45
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !525 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #45
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1338   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.g)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.h seq_cst, align 8
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.q = icmp eq ptr %i.g, %i.a
  br i1 %i.q, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i, %bb.b
  %i.r = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #45
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit, %bb.a
  ret void
}
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !725

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1355

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEESaIS8_EE9push_backEOS8_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #48 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit, label %bb.b, !llvm.loop !1356

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE8getNodesISt5dequeIPKS5_SaISA_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1357 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1357
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !1358 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1359
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1360
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !1358 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #44
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !732   ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !734
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
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #45
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !732
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !734
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !735
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !1358, !noalias !1361
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !1358, !noalias !1364
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !1357, !noalias !1361
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !1360, !noalias !1361
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

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !1347
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !9
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !1367

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !734
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #44
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !9
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
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #45
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !732
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !734
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1368 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
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

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKS7_SaISE_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.42, %bb.z ], [ @.str.41, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #47
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #44
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !9
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !732
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !734
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !1357 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !1357
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !1358
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !1359
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !1360
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !1358
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !746
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !748
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %5, ptr %7, align 8, !tbaa !750
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !734
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !732
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS8_PS8_EppEv.exit ] ; 3 uses
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
end_hunk_7
begin_hunk_8_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !692
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39, !alias.scope !1528
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !1528
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !1528
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114, !noalias !1528 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1528 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116, !noalias !1528 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !1528 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !1528
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !692
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1529

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !694
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !692   ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #44 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !14
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
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !692
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !695
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #46
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1530 ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEESt14default_deleteIS8_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #45
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !559 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IiEELj3EEESt14default_deleteISA_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IiEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IiEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEESt14default_deleteIS8_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #45
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IiEELj3EEESt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IiEELj3EEESt14default_deleteISA_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEESt14default_deleteIS8_EED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IiEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEESt14default_deleteIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1530   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.g)
          to label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.h seq_cst, align 8
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.q = icmp eq ptr %i.g, %i.a
  br i1 %i.q, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EED2Ev.exit.i, %bb.b
  %i.r = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #45
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, %bb.a
  ret void
}
end_hunk_8
begin_hunk_9_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !725

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1549

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEESaISB_EE9push_backEOSB_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #48 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit, label %bb.b, !llvm.loop !1550

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1551 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1551
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !1552 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1553
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1554
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !1552 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #44
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !732   ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !734
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
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #45
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !732
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !734
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !735
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !1552, !noalias !1555
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !1552, !noalias !1558
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !1551, !noalias !1555
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !1554, !noalias !1555
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

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !1541
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 65536
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !9
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !1561

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !734
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #44
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !9
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
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #45
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !732
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !734
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1562 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
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

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.42, %bb.z ], [ @.str.41, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #47
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #44
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !9
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !732
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !734
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !1551 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !1551
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !1552
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !1553
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !1554
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !1552
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !746
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !748
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %5, ptr %7, align 8, !tbaa !750
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !1563
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !734
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !732
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
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
end_hunk_9
begin_hunk_10_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !692
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39, !alias.scope !1717
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !1717
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !1717
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114, !noalias !1717 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1717 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116, !noalias !1717 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !1717 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !1717
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !692
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1718

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !694
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !692   ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #44 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !14
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
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !692
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !695
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #46
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1719 ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEESt14default_deleteIS8_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #45
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !593 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteISA_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEESt14default_deleteIS8_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #45
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteISA_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEESt14default_deleteIS8_EED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEESt14default_deleteIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1719   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.g)
          to label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.h seq_cst, align 8
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.q = icmp eq ptr %i.g, %i.a
  br i1 %i.q, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EED2Ev.exit.i, %bb.b
  %i.r = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #45
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, %bb.a
  ret void
}
end_hunk_10
begin_hunk_11_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !725

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1738

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEESaISB_EE9push_backEOSB_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #48 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit, label %bb.b, !llvm.loop !1739

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1740 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1740
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !1741 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1742
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1743
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !1741 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #44
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !732   ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !734
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
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #45
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !732
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !734
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !735
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !1741, !noalias !1744
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !1741, !noalias !1747
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !1740, !noalias !1744
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !1743, !noalias !1744
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

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !1730
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 65536
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !9
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !1750

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !734
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #44
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !9
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
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #45
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !732
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !734
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1751 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
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

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.42, %bb.z ], [ @.str.41, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #47
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #44
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !9
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !732
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !734
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !1740 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !1740
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !1741
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !1742
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !1743
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !1741
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !746
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !748
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %5, ptr %7, align 8, !tbaa !750
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !1752
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !734
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !732
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
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
end_hunk_11
begin_hunk_12_@_ZZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE8treeTypeB5cxx11EvENKUlvE_clB5cxx11Ev:_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !692
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39, !alias.scope !1909
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !1909
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !1909
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114, !noalias !1909 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1909 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116, !noalias !1909 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !1909 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !47, !alias.scope !1909
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #45
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.noexc12, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit
  %.023 = phi i64 [ %i.ap, %_ZNSolsEj.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %2, align 8, !tbaa !692
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.023
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = zext i32 %i.am to i64
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.an)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.ap = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1910

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.body:                                            ; preds = %bb.c, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #32
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ag, %bb.e ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !692   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !695
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #45
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit22

_ZNSt6vectorIjSaIjEED2Ev.exit22:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 5, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !695  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !694
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #44 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store i32 4, ptr %i.r, align 4, !tbaa !14
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
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !692
  store ptr %i.t, ptr %i.a, align 8, !tbaa !694
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !695
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.d, %bb.b ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 3, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !694
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !692   ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #44 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 3, ptr %i.an, align 4, !tbaa !14
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
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !695
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #45
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !692
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !695
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit

_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #46
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1911 ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEESt14default_deleteIS8_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #45
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !627 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IdEELj3EEESt14default_deleteISA_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IdEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IdEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEESt14default_deleteIS8_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #45
  br label %_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IdEELj3EEESt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IdEELj3EEESt14default_deleteISA_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEESt14default_deleteIS8_EED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IdEELj3EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEESt14default_deleteIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1911   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.g)
          to label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %.preheader.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.h seq_cst, align 8
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #45
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.q = icmp eq ptr %i.g, %i.a
  br i1 %i.q, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EED2Ev.exit.i, %bb.b
  %i.r = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #45
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit, %bb.a
  ret void
}
end_hunk_12
begin_hunk_13_@_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb:bb.a
  %indvars.iv.i.i.i.i.i.i.i222 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i222, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !725

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.az, %.critedge.i.i.i.i.i.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1930

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEESaISB_EE9push_backEOSB_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13cbeginChildOnEv.exit.i.i.i, %bb.b
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.014.i.i) #48 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not7.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit, label %bb.b, !llvm.loop !1931

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE8getNodesISt5dequeIPKS8_SaISD_EEEEvRT_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1932 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1932
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null
  %.neg.i.i = sext i1 %i.bl to i64
  %i.bm = add nsw i64 %i.bk, %.neg.i.i
  %i.bn = shl nsw i64 %i.bm, 6
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !1933 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1934
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bn, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1935
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !1933 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = add nsw i64 %i.bv, %i.cc                ; 9 uses
  br i1 %1, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.ce = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ce, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not192 = icmp eq i64 %i.cd, 0
  br i1 %.not192, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #44
          to label %.noexc32 unwind label %bb.r   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !732   ; 4 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !734
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
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cr) #45
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !732
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !734
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cd ; 2 uses
  store ptr %i.cs, ptr %i.cf, align 8, !tbaa !735
  %.pre122.a = load ptr, ptr %i.bc, align 8, !tbaa !1933, !noalias !1936
  %.pre123.a = load ptr, ptr %i.bb, align 8, !tbaa !1933, !noalias !1939
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.n
  %i.ct = phi ptr [ %i.cs, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ]
  %i.cu = phi ptr [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.n ] ; 4 uses
  %i.cv = phi ptr [ %.pre123.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cw = phi ptr [ %.pre122.a, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %.not7589 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not7589, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !1932, !noalias !1936
  %i.cy = load ptr, ptr %i.bw, align 8, !tbaa !1935, !noalias !1936
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

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit
  %i.dc = phi ptr [ %i.cu, %.lr.ph ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 5 uses
  %i.dd = phi ptr [ %i.ct, %.lr.ph ], [ %i.em, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cu, %.lr.ph ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
  %.sroa.065.092 = phi ptr [ %i.cw, %.lr.ph ], [ %.sroa.065.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1169.091 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.1169.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %.sroa.1470.090 = phi ptr [ %i.cx, %.lr.ph ], [ %.sroa.1470.1, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.065.092, align 8, !tbaa !1922
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 98304
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi228 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9
  %wide.load229 = load <2 x i64>, ptr %i.di, align 8, !tbaa !9
  %i.dj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load229)
  %i.dl = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dm = trunc nuw nsw <2 x i64> %i.dk to <2 x i32>
  %i.dn = add <2 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i32> %vec.phi228, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, 64
  br i1 %i.dp, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10childCountEv.exit, label %vector.body, !llvm.loop !1942

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10childCountEv.exit
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !734
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10childCountEv.exit
  %i.dt = ptrtoint ptr %i.dd to i64
  %i.du = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #47
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #44
          to label %.noexc36 unwind label %.loopexit78 ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !9
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
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !735
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ej) #45
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ed, ptr %5, align 8, !tbaa !732
  store ptr %i.eg, ptr %i.cz, align 8, !tbaa !734
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  store ptr %i.ek, ptr %i.cf, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.s
  %i.el = phi ptr [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.dd, %bb.s ]
  %i.en = phi ptr [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ds, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.1169.091
  br i1 %i.ep, label %bb.x, label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.1470.090, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1943 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit

_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.x
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

bb.y:                                             ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPKSA_SaISH_EEEEvRT_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not191 = icmp eq i64 %i.cd, 0
  br i1 %.not191, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = icmp ugt i64 %i.cd, 1152921504606846975
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.m, %bb.z
  %i.ew = phi ptr [ @.str.42, %bb.z ], [ @.str.41, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ew) #47
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %i.ex = shl nuw nsw i64 %i.cd, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #44
          to label %.noexc56 unwind label %bb.r   ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ey, align 8, !tbaa !9
  %i.ez = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc56
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc56
  store ptr %i.ey, ptr %5, align 8, !tbaa !732
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !734
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !735
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !1932 ; 2 uses
  %.pre117.a = load ptr, ptr %i.bf, align 8, !tbaa !1932
  %.pre118.a = load ptr, ptr %i.bb, align 8, !tbaa !1933
  %.pre119.a = load ptr, ptr %i.bp, align 8, !tbaa !1934
  %.pre120.a = load ptr, ptr %i.bw, align 8, !tbaa !1935
  %.pre121 = load ptr, ptr %i.bc, align 8, !tbaa !1933
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fe = icmp ne ptr %i.fd, null
  %.neg.i.i40 = sext i1 %i.fe to i64
  %i.ff = add nsw i64 %.pre-phi133, %.neg.i.i40
  %i.fg = shl nsw i64 %i.ff, 6
  %i.fh = add nsw i64 %i.fg, %.pre-phi141
  %i.fi = add nsw i64 %i.fh, %.pre-phi149
  store i64 %i.fi, ptr %6, align 8, !tbaa !746
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !748
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.fk, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %5, ptr %7, align 8, !tbaa !750
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.fl, align 8, !tbaa !1944
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre124.a = load ptr, ptr %i.et, align 8, !tbaa !734
  %.pre125.a = load ptr, ptr %5, align 8, !tbaa !732
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.aa
  %i.fn = phi ptr [ %.pre125.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.el, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 8 uses
  %i.fo = phi ptr [ %.pre124.a, %bb.aa ], [ %i.cu, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.en, %_ZNSt15_Deque_iteratorIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEERSB_PSB_EppEv.exit ] ; 3 uses
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
end_hunk_13
