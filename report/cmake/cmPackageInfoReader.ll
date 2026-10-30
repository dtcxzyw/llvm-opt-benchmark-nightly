Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmPackageInfoReader?download=true
inline.NumInlined: 2615
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK19cmPackageInfoReader7GetNameB5cxx11Ev:bb.a
  br label %_ZN12_GLOBAL__N_18ToStringB5cxx11ERKN4Json5ValueE.exit

_ZN12_GLOBAL__N_18ToStringB5cxx11ERKN4Json5ValueE.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19cmPackageInfoReader10GetVersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.33) ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK4Json5Value8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !14
  %i.e = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.e, ptr %0, align 8, !tbaa !18
  %i.l = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.m = phi i64 [ %i.i, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.o, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.p, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19cmPackageInfoReader16GetCompatVersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.34) ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK4Json5Value8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !14
  %i.e = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.e, ptr %0, align 8, !tbaa !18
  %i.l = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.m = phi i64 [ %i.i, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.o, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.p, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19cmPackageInfoReader12ParseVersionERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.189") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.cmPackageInfoReader::Pep440Version", align 8 ; 26 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !44, !range !45, !noundef !46
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.g, align 8, !tbaa !174
  br label %_ZN12_GLOBAL__N_118ParseSimpleVersionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str.35) ; 3 uses
  %i.j = tail call noundef zeroext i1 @_ZNK4Json5Value6isNullEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  br i1 %i.j, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.k = tail call noundef zeroext i1 @_ZNK4Json5Value8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i), !noalias !175
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  %.pre = load ptr, ptr %5, align 8, !tbaa !18
  %.pre83 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !14, !alias.scope !175
  store i64 0, ptr %.phi.trans.insert, align 8, !tbaa !20, !alias.scope !175
  store i8 0, ptr %i.l, align 8, !tbaa !19, !alias.scope !175
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi i64 [ 0, %bb.f ], [ %.pre83, %bb.e ]
  %i.n = phi ptr [ %i.l, %bb.f ], [ %.pre, %bb.e ]
  %i.o = invoke noundef zeroext i1 @_Z11cmStrCaseEqSt17basic_string_viewIcSt11char_traitsIcEES2_(i64 %i.m, ptr %i.n, i64 6, ptr nonnull @.str.36)
          to label %bb.h unwind label %bb.at

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.o, label %.critedge.thread, label %bb.au

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  %.val = load ptr, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val14 = load i64, ptr %i.u, align 8, !tbaa !20 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.v = icmp eq i64 %.val14, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.w, align 8, !tbaa !174, !alias.scope !176
  br label %_ZN12_GLOBAL__N_118ParseSimpleVersionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.j:                                             ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !176
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !noalias !176
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 9 uses
  store i8 0, ptr %i.y, align 8, !tbaa !44, !noalias !176
  store i8 1, ptr %3, align 8, !tbaa !185, !noalias !176
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i: ; preds = %bb.aq, %bb.j
  %.sroa.05.0.i = phi i64 [ %.val14, %bb.j ], [ %i.dr, %bb.aq ] ; 6 uses
  %.sroa.10.0.i = phi ptr [ %.val, %bb.j ], [ %i.ds, %bb.aq ] ; 5 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i
  %.01116.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i ], [ %i.ai, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 %.01116.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19, !noalias !176 ; 2 uses
  %i.af = zext nneg i8 %i.ae to i64
  %memchr.bounds.i = icmp ugt i8 %i.ae, 63
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ag, 114349209288704
  %memchr.bits.i = icmp eq i64 %i.ah, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.ai = add nuw i64 %.01116.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ai, %.sroa.05.0.i
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !171

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.aj = icmp eq i64 %.01116.i.i.i, 0
  br i1 %i.aj, label %.critedge36.i.loopexit, label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  %.sroa.speculated.i16.i = call i64 @llvm.umin.i64(i64 %.sroa.05.0.i, i64 %.01116.i.i.i)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.thread.i
  %.sroa.speculated.i20.i = phi i64 [ %.sroa.speculated.i16.i, %.thread.i ], [ %.sroa.05.0.i, %bb.k ] ; 5 uses
  %.2.i.i1419.i = phi i64 [ %.01116.i.i.i, %.thread.i ], [ -1, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !176
  store ptr %i.z, ptr %4, align 8, !tbaa !14, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !176
  store i64 %.sroa.speculated.i20.i, ptr %i.c, align 8, !tbaa !16, !noalias !176
  %i.ak = icmp ugt i64 %.sroa.speculated.i20.i, 15
  br i1 %i.ak, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.loopexit
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc39.i unwind label %.loopexit.split-lp.i, !noalias !176 ; 2 uses

.noexc39.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.al, ptr %4, align 8, !tbaa !18, !noalias !176
  %i.am = load i64, ptr %i.c, align 8, !tbaa !16, !noalias !176
  store i64 %i.am, ptr %i.z, align 8, !tbaa !19, !noalias !176
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc39.i, %.loopexit
  %i.an = phi ptr [ %i.al, %.noexc39.i ], [ %i.z, %.loopexit ] ; 2 uses
  switch i64 %.sroa.speculated.i20.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ao = load i8, ptr %.sroa.10.0.i, align 1, !tbaa !19, !noalias !176
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !19, !noalias !176
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %.sroa.10.0.i, i64 %.sroa.speculated.i20.i, i1 false), !noalias !176
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !16, !noalias !176 ; 2 uses
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !20, !noalias !176
  %i.aq = load ptr, ptr %4, align 8, !tbaa !18, !noalias !176
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !19, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !176
  %i.as = load ptr, ptr %4, align 8, !tbaa !18, !noalias !176 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !176
  %i.at = tail call ptr @__errno_location() #27   ; 6 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !49, !noalias !176 ; 2 uses
  store i32 0, ptr %i.at, align 4, !tbaa !49, !noalias !176
  %i.av = call noundef i64 @__isoc23_strtoul(ptr noundef %i.as, ptr noundef nonnull %i.b, i32 noundef 10), !noalias !176 ; 2 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !50, !noalias !176 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.as
  br i1 %i.ax, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.98) #26
          to label %bb.p unwind label %bb.q, !noalias !176

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %.critedge.i.i.i, %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load i32, ptr %i.at, align 4, !tbaa !49, !noalias !176
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %.body.i

bb.r:                                             ; preds = %bb.q
  store i32 %i.au, ptr %i.at, align 4, !tbaa !49, !noalias !176
  br label %.body.i

bb.s:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.at, align 4, !tbaa !49, !noalias !176 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 34
  br i1 %i.bc, label %.critedge.i.i.i, label %bb.u

.critedge.i.i.i:                                  ; preds = %bb.s
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.98) #26
          to label %bb.t unwind label %bb.q, !noalias !176

bb.t:                                             ; preds = %.critedge.i.i.i
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = ptrtoint ptr %i.as to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp eq i32 %i.bb, 0
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.au, ptr %i.at, align 4, !tbaa !49, !noalias !176
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !176
  %i.bh = load ptr, ptr %4, align 8, !tbaa !18, !noalias !176 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.z
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bj = load i64, ptr %i.z, align 8, !tbaa !19, !noalias !176
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #24, !noalias !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !176
  %.not.i = icmp ne i64 %i.bf, %.sroa.speculated.i20.i
  %i.bl = icmp ugt i64 %i.av, 4294967295
  %or.cond.i = or i1 %i.bl, %.not.i
  br i1 %or.cond.i, label %.critedge36.i.loopexit, label %bb.x

.loopexit.split-lp.i:                             ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

.body.i:                                          ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !176
  %i.bm = load ptr, ptr %4, align 8, !tbaa !18, !noalias !176 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.z
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %.body.i
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !19, !noalias !176
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #24, !noalias !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i, %.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.split-lp.i ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i ], [ %i.ay, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !176
  br label %.loopexit.split-lp26.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bq = trunc nuw i64 %i.av to i32              ; 2 uses
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !186, !noalias !176 ; 4 uses
  %i.bs = load ptr, ptr %i.ac, align 8, !tbaa !51, !noalias !176 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i44.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !49, !noalias !176
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store ptr %i.bt, ptr %i.ab, align 8, !tbaa !186, !noalias !176
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !52, !noalias !176 ; 4 uses
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775804
  br i1 %i.by, label %bb.aa, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #26
          to label %.noexc45.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !176

.noexc45.i:                                       ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.z
  %i.bz = ashr exact i64 %i.bx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 2305843009213693951)
  %i.cd = select i1 %i.cb, i64 2305843009213693951, i64 %i.cc ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #25
          to label %.noexc46.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !176 ; 4 uses

.noexc46.i:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  store i32 %i.bq, ptr %i.cg, align 4, !tbaa !49, !noalias !176
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.ab, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

bb.ab:                                            ; preds = %.noexc46.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr align 4 %i.bu, i64 %i.bx, i1 false), !noalias !176
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ab, %.noexc46.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  %i.cj = load ptr, ptr %i.ac, align 8, !tbaa !51, !noalias !176
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.cl) #24, !noalias !176
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.cf, ptr %i.x, align 8, !tbaa !52, !noalias !176
  store ptr %i.ci, ptr %i.ab, align 8, !tbaa !186, !noalias !176
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.cm, ptr %i.ac, align 8, !tbaa !51, !noalias !176
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i:         ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, %bb.y
  %i.cn = phi ptr [ %i.cm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %i.bs, %bb.y ]
  %i.co = phi ptr [ %i.ci, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %i.bt, %bb.y ]
  %i.cp = icmp eq i64 %.2.i.i1419.i, -1
  br i1 %i.cp, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i
  %i.cq = load i8, ptr %3, align 8, !tbaa !185, !range !45, !noalias !176, !noundef !46
  store i8 %i.cq, ptr %0, align 8, !tbaa !185, !alias.scope !176
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.x, align 8, !tbaa !52, !noalias !176
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !52, !alias.scope !176
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.co, ptr %i.ct, align 8, !tbaa !186, !alias.scope !176
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cn, ptr %i.cu, align 8, !tbaa !51, !alias.scope !176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !noalias !176
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 0, ptr %i.cx, align 8, !tbaa !44, !alias.scope !176
  %i.cy = load i8, ptr %i.y, align 8, !tbaa !44, !range !45, !noalias !176, !noundef !46
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ae, label %.critedge36.i.thread112

.critedge36.i.thread112:                          ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.da, align 8, !tbaa !174, !alias.scope !176
  store i8 0, ptr %i.y, align 8, !tbaa !44, !noalias !176
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.db, ptr %i.cv, align 8, !tbaa !14, !alias.scope !176
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !18, !noalias !176 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !20, !noalias !176 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nuw nsw i64 %i.dg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.dd, i64 %i.di, i1 false)
  br label %.critedge36.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  store ptr %i.dc, ptr %i.cv, align 8, !tbaa !18, !alias.scope !176
  %i.dj = load i64, ptr %i.dd, align 8, !tbaa !19, !noalias !176
  store i64 %i.dj, ptr %i.db, align 8, !tbaa !19, !alias.scope !176
  %.phi.trans.insert135.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre136.i = load i64, ptr %.phi.trans.insert135.i, align 8, !tbaa !20, !noalias !176
  br label %.critedge36.i.thread

.critedge36.i.thread:                             ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = phi i64 [ %.pre136.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dg, %bb.af ]
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.dk, ptr %i.dm, align 8, !tbaa !20, !alias.scope !176
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !18, !noalias !176
  store i64 0, ptr %i.dl, align 8, !tbaa !20, !noalias !176
  store i8 0, ptr %i.dd, align 8, !tbaa !19, !noalias !176
  store i8 1, ptr %i.cx, align 8, !tbaa !44, !alias.scope !176
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.dn, align 8, !tbaa !174, !alias.scope !176
  store i8 0, ptr %i.y, align 8, !tbaa !44, !noalias !176
  br label %bb.ar

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i
  %i.do = add nuw i64 %.2.i.i1419.i, 1            ; 3 uses
  %.not24.i = icmp ult i64 %.2.i.i1419.i, %.sroa.05.0.i
  br i1 %.not24.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.96, i64 noundef %i.do, i64 noundef %.sroa.05.0.i) #26
          to label %.noexc50.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !176

.noexc50.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 %.2.i.i1419.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !19, !noalias !176
  %i.dr = sub nuw i64 %.sroa.05.0.i, %i.do        ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 %i.do ; 4 uses
  switch i8 %i.dq, label %bb.aq [
    i8 45, label %bb.aj
    i8 43, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.du = load i8, ptr %i.y, align 8, !tbaa !44, !range !45, !noalias !176, !noundef !46
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !20, !noalias !176
  %i.dy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, i64 noundef 0, i64 noundef %i.dx, ptr noundef nonnull %i.ds, i64 noundef %i.dr)
          to label %._ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit_crit_edge.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !176 ; 0 uses

._ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit_crit_edge.i: ; preds = %bb.ak
  %.pre.i = load i8, ptr %i.y, align 8, !tbaa !44, !range !45, !noalias !176 ; 2 uses
  %i.dz = trunc nuw i8 %.pre.i to i1
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store ptr %i.ea, ptr %i.dt, align 8, !tbaa !14, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !176
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !16, !noalias !176
  %i.eb = icmp ugt i64 %i.dr, 15
  br i1 %i.eb, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.al
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc53.i unwind label %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !176 ; 2 uses

.noexc53.i:                                       ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.ec, ptr %i.dt, align 8, !tbaa !18, !noalias !176
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !176
  store i64 %i.ed, ptr %i.ea, align 8, !tbaa !19, !noalias !176
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc53.i, %bb.al
  %i.ee = phi ptr [ %i.ec, %.noexc53.i ], [ %i.ea, %bb.al ] ; 2 uses
  switch i64 %i.dr, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRSt17basic_string_viewIcS3_EEEEvDpOT_.exit.i.i
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ef = load i8, ptr %i.ds, align 1, !tbaa !19, !noalias !176
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !19, !noalias !176
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRSt17basic_string_viewIcS3_EEEEvDpOT_.exit.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr nonnull align 1 %i.ds, i64 %i.dr, i1 false), !noalias !176
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRSt17basic_string_viewIcS3_EEEEvDpOT_.exit.i.i

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRSt17basic_string_viewIcS3_EEEEvDpOT_.exit.i.i: ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !176 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !20, !noalias !176
  %i.ei = load ptr, ptr %i.dt, align 8, !tbaa !18, !noalias !176
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !19, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !176
  store i8 1, ptr %i.y, align 8, !tbaa !44, !noalias !176
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit.i: ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRSt17basic_string_viewIcS3_EEEEvDpOT_.exit.i.i, %._ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit_crit_edge.i
  %i.ek = phi i8 [ %.pre.i, %._ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit_crit_edge.i ], [ 1, %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRSt17basic_string_viewIcS3_EEEEvDpOT_.exit.i.i ] ; 2 uses
  %i.el = phi i1 [ %i.dz, %._ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit_crit_edge.i ], [ true, %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRSt17basic_string_viewIcS3_EEEEvDpOT_.exit.i.i ]
  %i.em = load i8, ptr %3, align 8, !tbaa !185, !range !45, !noalias !176, !noundef !46
  store i8 %i.em, ptr %0, align 8, !tbaa !185, !alias.scope !176
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load <2 x ptr>, ptr %i.x, align 8, !tbaa !187, !noalias !176
  store <2 x ptr> %i.eo, ptr %i.en, align 8, !tbaa !187, !alias.scope !176
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eq = load ptr, ptr %i.ac, align 8, !tbaa !51, !noalias !176
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !51, !alias.scope !176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !noalias !176
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 0, ptr %i.es, align 8, !tbaa !44, !alias.scope !176
  br i1 %i.el, label %bb.ao, label %.critedge36.i

bb.ao:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.et, ptr %i.er, align 8, !tbaa !14, !alias.scope !176
  %i.eu = load ptr, ptr %i.dt, align 8, !tbaa !18, !noalias !176 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i54.i

bb.ap:                                            ; preds = %bb.ao
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !20, !noalias !176 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nuw nsw i64 %i.ey, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.et, ptr noundef nonnull align 8 dereferenceable(1) %i.ev, i64 %i.fa, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i54.i: ; preds = %bb.ao
  store ptr %i.eu, ptr %i.er, align 8, !tbaa !18, !alias.scope !176
  %i.fb = load i64, ptr %i.ev, align 8, !tbaa !19, !noalias !176
  store i64 %i.fb, ptr %i.et, align 8, !tbaa !19, !alias.scope !176
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre134.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !20, !noalias !176
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i55.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i55.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i54.i, %bb.ap
  %i.fc = phi i64 [ %.pre134.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i54.i ], [ %i.ey, %bb.ap ]
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.fc, ptr %i.fe, align 8, !tbaa !20, !alias.scope !176
  store ptr %i.ev, ptr %i.dt, align 8, !tbaa !18, !noalias !176
  store i64 0, ptr %i.fd, align 8, !tbaa !20, !noalias !176
  store i8 0, ptr %i.ev, align 8, !tbaa !19, !noalias !176
  store i8 1, ptr %i.es, align 8, !tbaa !44, !alias.scope !176
  br label %.critedge36.i

.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i, %bb.ak, %bb.ah, %bb.aa
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp26.i

bb.aq:                                            ; preds = %bb.ai
  %i.ff = icmp eq i64 %i.dr, 0
  br i1 %i.ff, label %.critedge36.i.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.lr.ph.i.i.i, !llvm.loop !172

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %.loopexit.split-lp26.i
  %common.resume.op = phi { ptr, i32 } [ %.pn30.pn.pn.pn.i, %.loopexit.split-lp26.i ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp26.i:                           ; preds = %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  %.pn30.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp26.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN19cmPackageInfoReader13Pep440VersionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #23, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !176
  br label %common.resume

.critedge36.i.loopexit:                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.aq
  %.pre84 = load i8, ptr %i.y, align 8, !tbaa !44, !range !45, !noalias !176
  br label %.critedge36.i

.critedge36.i:                                    ; preds = %.critedge36.i.loopexit, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i55.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit.i
  %i.fg = phi i8 [ %i.ek, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i55.i ], [ %i.ek, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit.i ], [ %.pre84, %.critedge36.i.loopexit ]
  %.sink.i = phi i8 [ 1, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i55.i ], [ 1, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRSt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_.exit.i ], [ 0, %.critedge36.i.loopexit ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sink.i, ptr %i.fh, align 8, !tbaa !174, !alias.scope !176
  %i.fi = trunc nuw i8 %i.fg to i1
  store i8 0, ptr %i.y, align 8, !tbaa !44, !noalias !176
  br i1 %i.fi, label %bb.ar, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

bb.ar:                                            ; preds = %.critedge36.i.thread, %.critedge36.i
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !18, !noalias !176 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !19, !noalias !176
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.ar, %.critedge36.i.thread112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %.critedge36.i
  %i.fp = load ptr, ptr %i.x, align 8, !tbaa !52, !noalias !176 ; 3 uses
  %.not.i.i.i.i57.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i57.i, label %_ZN19cmPackageInfoReader13Pep440VersionD2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  %i.fq = load ptr, ptr %i.ac, align 8, !tbaa !51, !noalias !176
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ft) #24
  br label %_ZN19cmPackageInfoReader13Pep440VersionD2Ev.exit.i

_ZN19cmPackageInfoReader13Pep440VersionD2Ev.exit.i: ; preds = %bb.as, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !176
  br label %_ZN12_GLOBAL__N_118ParseSimpleVersionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.at:                                            ; preds = %bb.g
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.at
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

bb.au:                                            ; preds = %.critedge
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ga, align 8, !tbaa !174
  br label %_ZN12_GLOBAL__N_118ParseSimpleVersionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12_GLOBAL__N_118ParseSimpleVersionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN19cmPackageInfoReader13Pep440VersionD2Ev.exit.i, %bb.i, %bb.au, %bb.b
  ret void
}

declare noundef zeroext i1 @_Z11cmStrCaseEqSt17basic_string_viewIcSt11char_traitsIcEES2_(i64, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19cmPackageInfoReader15GetRequirementsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.204") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.204", align 16  ; 12 uses
  %3 = alloca %"class.Json::ValueConstIterator", align 8 ; 11 uses
  %4 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %5 = alloca %struct.cmPackageRequirement, align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.37)
          to label %bb.b unwind label %bb.d       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.e, label %bb.w

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.e = invoke { ptr, i8 } @_ZNK4Json5Value5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.fca.0.extract1 = extractvalue { ptr, i8 } %i.e, 0
  %.fca.1.extract2 = extractvalue { ptr, i8 } %i.e, 1
  store ptr %.fca.0.extract1, ptr %3, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.f = invoke { ptr, i8 } @_ZNK4Json5Value3endEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract = extractvalue { ptr, i8 } %i.f, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.f, 1
  store ptr %.fca.0.extract, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 88
  br label %_ZN4Json18ValueConstIteratorppEv.exit

_ZN4Json18ValueConstIteratorppEv.exit:            ; preds = %bb.o, %bb.g
  %i.l = invoke noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZN4Json18ValueConstIteratorppEv.exit
  br i1 %i.l, label %_ZSt8_DestroyIP20cmPackageRequirementS0_EvT_S2_RSaIT0_E.exit.i.thread, label %bb.j

_ZSt8_DestroyIP20cmPackageRequirementS0_EvT_S2_RSaIT0_E.exit.i.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.m = load <2 x ptr>, ptr %2, align 16, !tbaa !54
  store <2 x ptr> %i.m, ptr %0, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !56
  store ptr %i.p, ptr %i.n, align 8, !tbaa !56
  br label %_ZNSt6vectorI20cmPackageRequirementSaIS0_EED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %_ZN4Json18ValueConstIteratorppEv.exit, %bb.f
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNK4Json17ValueIteratorBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %_ZNK4Json18ValueConstIteratordeEv.exit unwind label %bb.q

_ZNK4Json18ValueConstIteratordeEv.exit:           ; preds = %bb.k
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull @.str.33)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.l:                                             ; preds = %_ZNK4Json18ValueConstIteratordeEv.exit
  %i.t = invoke noundef zeroext i1 @_ZNK4Json5Value8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.l
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc
  invoke void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_ZN12_GLOBAL__N_18ToStringB5cxx11ERKN4Json5ValueE.exit unwind label %bb.q

bb.n:                                             ; preds = %.noexc
  store ptr %i.h, ptr %i.g, align 8, !tbaa !14, !alias.scope !190
  store i64 0, ptr %i.i, align 8, !tbaa !20, !alias.scope !190
  store i8 0, ptr %i.h, align 8, !tbaa !19, !alias.scope !190
  br label %_ZN12_GLOBAL__N_18ToStringB5cxx11ERKN4Json5ValueE.exit

_ZN12_GLOBAL__N_18ToStringB5cxx11ERKN4Json5ValueE.exit: ; preds = %bb.n, %bb.m
  %i.u = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %_ZNK4Json18ValueConstIteratordeEv.exit25 unwind label %bb.r

_ZNK4Json18ValueConstIteratordeEv.exit25:         ; preds = %_ZN12_GLOBAL__N_18ToStringB5cxx11ERKN4Json5ValueE.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull @.str.27)
          to label %.noexc26 unwind label %bb.r

.noexc26:                                         ; preds = %_ZNK4Json18ValueConstIteratordeEv.exit25
  invoke fastcc void @_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueE(ptr dead_on_unwind noalias nonnull writable align 8 %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit unwind label %bb.r

_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit: ; preds = %.noexc26
  %i.w = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %_ZNK4Json18ValueConstIteratordeEv.exit29 unwind label %bb.s

_ZNK4Json18ValueConstIteratordeEv.exit29:         ; preds = %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull @.str.38)
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %_ZNK4Json18ValueConstIteratordeEv.exit29
  invoke fastcc void @_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueE(ptr dead_on_unwind noalias nonnull writable align 8 %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit32 unwind label %bb.s

_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit32: ; preds = %.noexc30
  %i.y = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNSt6vectorI20cmPackageRequirementSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.o unwind label %bb.u       ; 0 uses

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit32
end_hunk_0
begin_hunk_1_@_ZNK19cmPackageInfoReader19SetTargetPropertiesEP10cmMakefileP8cmTargetRKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcSB_E:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607: ; preds = %bb.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605, %bb.gx
  %.pn220 = phi { ptr, i32 } [ %i.ani, %bb.gx ], [ %i.anj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605 ], [ %i.anj, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #23
  br label %bb.ha

bb.gz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i600
  %i.ano = landingpad { ptr, i32 }
          cleanup
  %i.anp = load ptr, ptr %97, align 8, !tbaa !18  ; 2 uses
  %i.anq = icmp eq ptr %i.anp, %i.aml
  br i1 %i.anq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608: ; preds = %bb.gz
  %i.anr = load i64, ptr %i.aml, align 8, !tbaa !19
  %i.ans = add i64 %i.anr, 1
  call void @_ZdlPvm(ptr noundef %i.anp, i64 noundef %i.ans) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #23
  br label %bb.ha

bb.ha:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610
  %.pn223 = phi { ptr, i32 } [ %i.ano, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610 ], [ %.pn220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %96) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #23
  br label %.body301

_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit586: ; preds = %.noexc584
  %i.ant = load ptr, ptr %99, align 8, !tbaa !36  ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %99, i64 8 ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !36 ; 2 uses
  %.not770872 = icmp eq ptr %i.ant, %i.anv
  br i1 %.not770872, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i619, label %.lr.ph874

.lr.ph874:                                        ; preds = %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit586
  %i.anw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0..sroa_idx.i.i.i626 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.anx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.any = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.4.0..sroa_idx.i13.i.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.anz = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aoa = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.aob = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aoc = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.4.0..sroa_idx.i22.i.i627 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.aod = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aoe = getelementptr inbounds nuw i8, ptr %10, i64 72
  %.sroa.gep31.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.4.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.aof = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.aog = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aoi = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aol = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aom = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.4.0..sroa_idx.i11.i.i638 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aon = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.aoo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aop = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 4 uses
  br label %bb.hc

._crit_edge875:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
  %.pre938 = load ptr, ptr %99, align 8, !tbaa !40 ; 3 uses
  %.pre939 = load ptr, ptr %i.anu, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i611 = icmp eq ptr %.pre938, %.pre939
  br i1 %.not4.i.i.i611, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i619, label %.lr.ph.i.i.i612

.lr.ph.i.i.i612:                                  ; preds = %._crit_edge875, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i615
  %.05.i.i.i613 = phi ptr [ %i.aoy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i615 ], [ %.pre938, %._crit_edge875 ] ; 3 uses
  %i.aot = load ptr, ptr %.05.i.i.i613, align 8, !tbaa !18 ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.05.i.i.i613, i64 16 ; 2 uses
  %i.aov = icmp eq ptr %i.aot, %i.aou
  br i1 %i.aov, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i615, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i614

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i614: ; preds = %.lr.ph.i.i.i612
  %i.aow = load i64, ptr %i.aou, align 8, !tbaa !19
  %i.aox = add i64 %i.aow, 1
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aox) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i615

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i615: ; preds = %.lr.ph.i.i.i612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i614
  %i.aoy = getelementptr inbounds nuw i8, ptr %.05.i.i.i613, i64 32 ; 2 uses
  %.not.i.i.i616 = icmp eq ptr %i.aoy, %.pre939
  br i1 %.not.i.i.i616, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i617, label %.lr.ph.i.i.i612, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i617: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i615
  %.pr.i618 = load ptr, ptr %99, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i619

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i619: ; preds = %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit586, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i617, %._crit_edge875
  %i.aoz = phi ptr [ %.pr.i618, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i617 ], [ %.pre938, %._crit_edge875 ], [ %i.ant, %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit586 ] ; 3 uses
  %.not.i.i1.i620 = icmp eq ptr %i.aoz, null
  br i1 %.not.i.i1.i620, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit622, label %bb.hb

bb.hb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i619
  %i.apa = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !39
  %i.apc = ptrtoint ptr %i.apb to i64
  %i.apd = ptrtoint ptr %i.aoz to i64
  %i.ape = sub i64 %i.apc, %i.apd
  call void @_ZdlPvm(ptr noundef nonnull %i.aoz, i64 noundef %i.ape) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit622

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit622: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i619, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #23
  %i.apf = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.69)
          to label %.noexc623 unwind label %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc623:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit622
  invoke fastcc void @_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueE(ptr dead_on_unwind noalias nonnull writable align 8 %101, ptr noundef nonnull align 8 dereferenceable(40) %i.apf)
          to label %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit625 unwind label %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hc:                                            ; preds = %.lr.ph874, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
  %.sroa.0701.0873 = phi ptr [ %i.ant, %.lr.ph874 ], [ %i.atg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645 ] ; 2 uses
  %.sroa.08.0.copyload = load i64, ptr %5, align 8, !tbaa !16 ; 2 uses
  %.sroa.29.0.copyload = load ptr, ptr %.sroa.277.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #23
  %.val258 = load ptr, ptr %4, align 8
  %.val259 = load i64, ptr %i.anw, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_119NormalizeTargetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias writable align 8 %100, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0701.0873, ptr %.val258, i64 %.val259)
          to label %bb.hd unwind label %bb.is

bb.hd:                                            ; preds = %bb.hc
  %i.apg = icmp eq i64 %.sroa.08.0.copyload, 0
  br i1 %i.apg, label %bb.hz, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN13cmSystemTools9UpperCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %.sroa.08.0.copyload, ptr %.sroa.29.0.copyload)
          to label %.noexc639 unwind label %bb.it

.noexc639:                                        ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !532
  store i64 9, ptr %10, align 8, !tbaa !16, !alias.scope !533, !noalias !532
  store ptr @.str.42, ptr %.sroa.4.0..sroa_idx.i.i.i626, align 8, !tbaa !50, !alias.scope !533, !noalias !532
  store ptr null, ptr %i.anx, align 8, !tbaa !61, !alias.scope !533, !noalias !532
  store i64 24, ptr %i.any, align 8, !tbaa !16, !alias.scope !534, !noalias !532
  store ptr @.str.68, ptr %.sroa.4.0..sroa_idx.i13.i.i, align 8, !tbaa !50, !alias.scope !534, !noalias !532
  store ptr null, ptr %i.anz, align 8, !tbaa !61, !alias.scope !534, !noalias !532
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !532
  store i64 0, ptr %11, align 8, !noalias !532
  store i8 95, ptr %i.aoc, align 8, !tbaa !19, !noalias !532
  store i64 1, ptr %i.aob, align 8, !tbaa !16, !noalias !532
  store ptr %i.aoc, ptr %.sroa.4.0..sroa_idx.i14.i.i, align 8, !tbaa !50, !noalias !532
  store i64 1, ptr %i.aoa, align 8, !tbaa !16, !alias.scope !535, !noalias !532
  store ptr %i.aoc, ptr %.sroa.4.0..sroa_idx.i22.i.i627, align 8, !tbaa !50, !alias.scope !535, !noalias !532
  store ptr null, ptr %i.aod, align 8, !tbaa !61, !alias.scope !535, !noalias !532
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %.pn.i.i27.else.val.i.i = load ptr, ptr %13, align 8, !tbaa !50, !noalias !537
  %.pn2.i.i29.else.val.i.i = load i64, ptr %.sroa.gep31.i.i, align 8, !tbaa !16, !noalias !537
  store i64 %.pn2.i.i29.else.val.i.i, ptr %i.aoe, align 8, !tbaa !16, !alias.scope !536, !noalias !532
  store ptr %.pn.i.i27.else.val.i.i, ptr %.sroa.4.0..sroa_idx.i30.i.i, align 8, !tbaa !50, !alias.scope !536, !noalias !532
  store ptr %13, ptr %i.aof, align 8, !tbaa !61, !alias.scope !536, !noalias !532
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull %10, i64 4)
          to label %bb.hf unwind label %bb.hv

bb.hf:                                            ; preds = %.noexc639
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !532
  %i.aph = load ptr, ptr %13, align 8, !tbaa !18  ; 2 uses
  %i.api = icmp eq ptr %i.aph, %i.aog
  br i1 %i.api, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i629

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i629: ; preds = %bb.hf
  %i.apj = load i64, ptr %i.aog, align 8, !tbaa !19
  %i.apk = add i64 %i.apj, 1
  call void @_ZdlPvm(ptr noundef %i.aph, i64 noundef %i.apk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i630: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i629
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %15, ptr noundef nonnull align 8 dereferenceable(2952) %1)
          to label %bb.hg unwind label %bb.hw

bb.hg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i630
  %i.apl = load <2 x ptr>, ptr %15, align 16, !tbaa !71
  store ptr null, ptr %i.aoi, align 8, !tbaa !74
  store <2 x ptr> %i.apl, ptr %14, align 16, !tbaa !71
  store ptr null, ptr %15, align 16, !tbaa !77
  store i8 1, ptr %i.aoj, align 16, !tbaa !79
  invoke void @_ZN8cmTarget14AppendPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt8optionalI19cmListFileBacktraceEb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.hh unwind label %bb.hx

bb.hh:                                            ; preds = %bb.hg
  %i.apm = load i8, ptr %i.aoj, align 16, !tbaa !79, !range !45, !noundef !46
  %i.apn = trunc nuw i8 %i.apm to i1
  store i8 0, ptr %i.aoj, align 16, !tbaa !79
  br i1 %i.apn, label %bb.hi, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i

bb.hi:                                            ; preds = %bb.hh
  %i.apo = load ptr, ptr %i.aoh, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.apo, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8 ; 4 uses
  %i.apq = load atomic i64, ptr %i.app acquire, align 8 ; 2 uses
  %i.apr = icmp eq i64 %i.apq, 4294967297
  %i.aps = trunc i64 %i.apq to i32                ; 2 uses
  br i1 %i.apr, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  store i32 0, ptr %i.app, align 8, !tbaa !81
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apo, i64 12
  store i32 0, ptr %i.apt, align 4, !tbaa !82
  %i.apu = load ptr, ptr %i.apo, align 8, !tbaa !22
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.apw = load ptr, ptr %i.apv, align 8
  call void %i.apw(ptr noundef nonnull align 8 dereferenceable(16) %i.apo) #23, !inline_history !442
  %i.apx = load ptr, ptr %i.apo, align 8, !tbaa !22
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  %i.apz = load ptr, ptr %i.apy, align 8
  call void %i.apz(ptr noundef nonnull align 8 dereferenceable(16) %i.apo) #23, !inline_history !442
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i

bb.hl:                                            ; preds = %bb.hj
  %i.aqa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aqa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.aqb = add nsw i32 %i.aps, -1
  store i32 %i.aqb, ptr %i.app, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hl
  %i.aqc = atomicrmw volatile add ptr %i.app, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.hn, %bb.hm
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aps, %bb.hm ], [ %i.aqc, %bb.hn ]
  %i.aqd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aqd, label %bb.ho, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i, !prof !83

bb.ho:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.apo) #23
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i: ; preds = %bb.ho, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.hk, %bb.hi, %bb.hh
  %i.aqe = load ptr, ptr %i.aoi, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i632 = icmp eq ptr %i.aqe, null
  br i1 %.not.i.i.i.i632, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, label %bb.hp

bb.hp:                                            ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8 ; 4 uses
  %i.aqg = load atomic i64, ptr %i.aqf acquire, align 8 ; 2 uses
  %i.aqh = icmp eq i64 %i.aqg, 4294967297
  %i.aqi = trunc i64 %i.aqg to i32                ; 2 uses
  br i1 %i.aqh, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  store i32 0, ptr %i.aqf, align 8, !tbaa !81
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqe, i64 12
  store i32 0, ptr %i.aqj, align 4, !tbaa !82
  %i.aqk = load ptr, ptr %i.aqe, align 8, !tbaa !22
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16
  %i.aqm = load ptr, ptr %i.aql, align 8
  call void %i.aqm(ptr noundef nonnull align 8 dereferenceable(16) %i.aqe) #23, !inline_history !443
  %i.aqn = load ptr, ptr %i.aqe, align 8, !tbaa !22
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 24
  %i.aqp = load ptr, ptr %i.aqo, align 8
  call void %i.aqp(ptr noundef nonnull align 8 dereferenceable(16) %i.aqe) #23, !inline_history !443
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

bb.hr:                                            ; preds = %bb.hp
  %i.aqq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.aqq, 0
  br i1 %.not.i.i.i.i.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aqr = add nsw i32 %i.aqi, -1
  store i32 %i.aqr, ptr %i.aqf, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hr
  %i.aqs = atomicrmw volatile add ptr %i.aqf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ht, %bb.hs
  %.0.i.i.i.i.i.i633 = phi i32 [ %i.aqi, %bb.hs ], [ %i.aqs, %bb.ht ]
  %i.aqt = icmp eq i32 %.0.i.i.i.i.i.i633, 1
  br i1 %i.aqt, label %bb.hu, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, !prof !83

bb.hu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aqe) #23
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i: ; preds = %bb.hu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.hq, %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.aqu = load ptr, ptr %12, align 8, !tbaa !18  ; 2 uses
  %i.aqv = icmp eq ptr %i.aqu, %i.aok
  br i1 %i.aqv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i635, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i634: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i
  %i.aqw = load i64, ptr %i.aok, align 8, !tbaa !19
  %i.aqx = add i64 %i.aqw, 1
  call void @_ZdlPvm(ptr noundef %i.aqu, i64 noundef %i.aqx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i635

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i635: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN12_GLOBAL__N_120AppendImportPropertyEP10cmMakefileP8cmTargetSt17basic_string_viewIcSt11char_traitsIcEES7_RKNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit

bb.hv:                                            ; preds = %.noexc639
  %i.aqy = landingpad { ptr, i32 }
          cleanup
  %i.aqz = load ptr, ptr %13, align 8, !tbaa !18  ; 2 uses
  %i.ara = icmp eq ptr %i.aqz, %i.aog
  br i1 %i.ara, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %bb.hv
  %i.arb = load i64, ptr %i.aog, align 8, !tbaa !19
  %i.arc = add i64 %i.arb, 1
  call void @_ZdlPvm(ptr noundef %i.aqz, i64 noundef %i.arc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %bb.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

bb.hw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i630
  %i.ard = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hg
  %i.are = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #23
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.pn.i631 = phi { ptr, i32 } [ %i.are, %bb.hx ], [ %i.ard, %bb.hw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.arf = load ptr, ptr %12, align 8, !tbaa !18  ; 2 uses
  %i.arg = icmp eq ptr %i.arf, %i.aok
  br i1 %i.arg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %bb.hy
  %i.arh = load i64, ptr %i.aok, align 8, !tbaa !19
  %i.ari = add i64 %i.arh, 1
  call void @_ZdlPvm(ptr noundef %i.arf, i64 noundef %i.ari) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %bb.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i
  %.pn.pn.i628 = phi { ptr, i32 } [ %i.aqy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i ], [ %.pn.i631, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i ], [ %.pn.i631, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body641

bb.hz:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !538
  store i64 9, ptr %9, align 8, !tbaa !16, !alias.scope !539, !noalias !538
  store ptr @.str.42, ptr %.sroa.4.0..sroa_idx.i.i25.i, align 8, !tbaa !50, !alias.scope !539, !noalias !538
  store ptr null, ptr %i.aol, align 8, !tbaa !61, !alias.scope !539, !noalias !538
  store i64 24, ptr %i.aom, align 8, !tbaa !16, !alias.scope !540, !noalias !538
  store ptr @.str.68, ptr %.sroa.4.0..sroa_idx.i11.i.i638, align 8, !tbaa !50, !alias.scope !540, !noalias !538
  store ptr null, ptr %i.aon, align 8, !tbaa !61, !alias.scope !540, !noalias !538
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %9, i64 2)
          to label %.noexc640 unwind label %bb.it

.noexc640:                                        ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %18, ptr noundef nonnull align 8 dereferenceable(2952) %1)
          to label %bb.ia unwind label %bb.ip

bb.ia:                                            ; preds = %.noexc640
  %i.arj = load <2 x ptr>, ptr %18, align 16, !tbaa !71
  store ptr null, ptr %i.aop, align 8, !tbaa !74
  store <2 x ptr> %i.arj, ptr %17, align 16, !tbaa !71
  store ptr null, ptr %18, align 16, !tbaa !77
  store i8 1, ptr %i.aoq, align 16, !tbaa !79
  invoke void @_ZN8cmTarget14AppendPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt8optionalI19cmListFileBacktraceEb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(24) %17, i1 noundef zeroext false)
          to label %bb.ib unwind label %bb.iq

bb.ib:                                            ; preds = %bb.ia
  %i.ark = load i8, ptr %i.aoq, align 16, !tbaa !79, !range !45, !noundef !46
  %i.arl = trunc nuw i8 %i.ark to i1
  store i8 0, ptr %i.aoq, align 16, !tbaa !79
  br i1 %i.arl, label %bb.ic, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i

bb.ic:                                            ; preds = %bb.ib
  %i.arm = load ptr, ptr %i.aoo, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i.i.i.i29.i = icmp eq ptr %i.arm, null
  br i1 %.not.i.i.i.i.i.i.i29.i, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 8 ; 4 uses
  %i.aro = load atomic i64, ptr %i.arn acquire, align 8 ; 2 uses
  %i.arp = icmp eq i64 %i.aro, 4294967297
  %i.arq = trunc i64 %i.aro to i32                ; 2 uses
  br i1 %i.arp, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  store i32 0, ptr %i.arn, align 8, !tbaa !81
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arm, i64 12
  store i32 0, ptr %i.arr, align 4, !tbaa !82
  %i.ars = load ptr, ptr %i.arm, align 8, !tbaa !22
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %i.aru = load ptr, ptr %i.art, align 8
  call void %i.aru(ptr noundef nonnull align 8 dereferenceable(16) %i.arm) #23, !inline_history !442
  %i.arv = load ptr, ptr %i.arm, align 8, !tbaa !22
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 24
  %i.arx = load ptr, ptr %i.arw, align 8
  call void %i.arx(ptr noundef nonnull align 8 dereferenceable(16) %i.arm) #23, !inline_history !442
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i

bb.if:                                            ; preds = %bb.id
  %i.ary = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i30.i = icmp eq i8 %i.ary, 0
  br i1 %.not.i.i.i.i.i.i.i.i30.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.arz = add nsw i32 %i.arq, -1
  store i32 %i.arz, ptr %i.arn, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i31.i

bb.ih:                                            ; preds = %bb.if
  %i.asa = atomicrmw volatile add ptr %i.arn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i31.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i31.i: ; preds = %bb.ih, %bb.ig
  %.0.i.i.i.i.i.i.i.i.i32.i = phi i32 [ %i.arq, %bb.ig ], [ %i.asa, %bb.ih ]
  %i.asb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i32.i, 1
  br i1 %i.asb, label %bb.ii, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i, !prof !83

bb.ii:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i31.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.arm) #23
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i

_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i: ; preds = %bb.ii, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i31.i, %bb.ie, %bb.ic, %bb.ib
  %i.asc = load ptr, ptr %i.aop, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i34.i = icmp eq ptr %i.asc, null
  br i1 %.not.i.i.i34.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit38.i, label %bb.ij

bb.ij:                                            ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 8 ; 4 uses
  %i.ase = load atomic i64, ptr %i.asd acquire, align 8 ; 2 uses
  %i.asf = icmp eq i64 %i.ase, 4294967297
  %i.asg = trunc i64 %i.ase to i32                ; 2 uses
  br i1 %i.asf, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  store i32 0, ptr %i.asd, align 8, !tbaa !81
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asc, i64 12
  store i32 0, ptr %i.ash, align 4, !tbaa !82
  %i.asi = load ptr, ptr %i.asc, align 8, !tbaa !22
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  %i.ask = load ptr, ptr %i.asj, align 8
  call void %i.ask(ptr noundef nonnull align 8 dereferenceable(16) %i.asc) #23, !inline_history !443
  %i.asl = load ptr, ptr %i.asc, align 8, !tbaa !22
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 24
  %i.asn = load ptr, ptr %i.asm, align 8
  call void %i.asn(ptr noundef nonnull align 8 dereferenceable(16) %i.asc) #23, !inline_history !443
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit38.i

bb.il:                                            ; preds = %bb.ij
  %i.aso = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i35.i = icmp eq i8 %i.aso, 0
  br i1 %.not.i.i.i.i35.i, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.asp = add nsw i32 %i.asg, -1
  store i32 %i.asp, ptr %i.asd, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36.i

bb.in:                                            ; preds = %bb.il
  %i.asq = atomicrmw volatile add ptr %i.asd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36.i: ; preds = %bb.in, %bb.im
  %.0.i.i.i.i.i37.i = phi i32 [ %i.asg, %bb.im ], [ %i.asq, %bb.in ]
  %i.asr = icmp eq i32 %.0.i.i.i.i.i37.i, 1
  br i1 %i.asr, label %bb.io, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit38.i, !prof !83

bb.io:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.asc) #23
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit38.i

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit38.i: ; preds = %bb.io, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36.i, %bb.ik, %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ass = load ptr, ptr %16, align 8, !tbaa !18  ; 2 uses
  %i.ast = icmp eq ptr %i.ass, %i.aor
  br i1 %i.ast, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit38.i
  %i.asu = load i64, ptr %i.aor, align 8, !tbaa !19
  %i.asv = add i64 %i.asu, 1
  call void @_ZdlPvm(ptr noundef %i.ass, i64 noundef %i.asv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit38.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZN12_GLOBAL__N_120AppendImportPropertyEP10cmMakefileP8cmTargetSt17basic_string_viewIcSt11char_traitsIcEES7_RKNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit

bb.ip:                                            ; preds = %.noexc640
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

bb.iq:                                            ; preds = %bb.ia
  %i.asx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #23
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #23
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.pn13.i = phi { ptr, i32 } [ %i.asx, %bb.iq ], [ %i.asw, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.asy = load ptr, ptr %16, align 8, !tbaa !18  ; 2 uses
  %i.asz = icmp eq ptr %i.asy, %i.aor
  br i1 %i.asz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %bb.ir
  %i.ata = load i64, ptr %i.aor, align 8, !tbaa !19
  %i.atb = add i64 %i.ata, 1
  call void @_ZdlPvm(ptr noundef %i.asy, i64 noundef %i.atb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %bb.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body641

_ZN12_GLOBAL__N_120AppendImportPropertyEP10cmMakefileP8cmTargetSt17basic_string_viewIcSt11char_traitsIcEES7_RKNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i635
  %i.atc = load ptr, ptr %100, align 8, !tbaa !18 ; 2 uses
  %i.atd = icmp eq ptr %i.atc, %i.aos
  br i1 %i.atd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643: ; preds = %_ZN12_GLOBAL__N_120AppendImportPropertyEP10cmMakefileP8cmTargetSt17basic_string_viewIcSt11char_traitsIcEES7_RKNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit
  %i.ate = load i64, ptr %i.aos, align 8, !tbaa !19
  %i.atf = add i64 %i.ate, 1
  call void @_ZdlPvm(ptr noundef %i.atc, i64 noundef %i.atf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645: ; preds = %_ZN12_GLOBAL__N_120AppendImportPropertyEP10cmMakefileP8cmTargetSt17basic_string_viewIcSt11char_traitsIcEES7_RKNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #23
  %i.atg = getelementptr inbounds nuw i8, ptr %.sroa.0701.0873, i64 32 ; 2 uses
  %.not770 = icmp eq ptr %i.atg, %i.anv
  br i1 %.not770, label %._crit_edge875, label %bb.hc

bb.is:                                            ; preds = %bb.hc
  %i.ath = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648

bb.it:                                            ; preds = %bb.hz, %bb.he
  %i.ati = landingpad { ptr, i32 }
          cleanup
  br label %.body641

.body641:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, %bb.it
  %eh.lpad-body642 = phi { ptr, i32 } [ %i.ati, %bb.it ], [ %.pn13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ], [ %.pn.pn.i628, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i ] ; 2 uses
  %i.atj = load ptr, ptr %100, align 8, !tbaa !18 ; 2 uses
  %i.atk = icmp eq ptr %i.atj, %i.aos
  br i1 %i.atk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646: ; preds = %.body641
  %i.atl = load i64, ptr %i.aos, align 8, !tbaa !19
  %i.atm = add i64 %i.atl, 1
  call void @_ZdlPvm(ptr noundef %i.atj, i64 noundef %i.atm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648: ; preds = %.body641, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646, %bb.is
  %.pn216 = phi { ptr, i32 } [ %i.ath, %bb.is ], [ %eh.lpad-body642, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646 ], [ %eh.lpad-body642, %.body641 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %99) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #23
  br label %.body301

_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit625: ; preds = %.noexc623
  %i.atn = load ptr, ptr %101, align 8, !tbaa !36 ; 3 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 2 uses
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !36 ; 2 uses
  %.not771876 = icmp eq ptr %i.atn, %i.atp
  br i1 %.not771876, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i657, label %.lr.ph878

.lr.ph878:                                        ; preds = %_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueEPKc.exit625
  %.sroa.01.0.copyload = load i64, ptr %5, align 8, !tbaa !16
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.277.0..sroa_idx, align 8, !tbaa !50
end_hunk_1
begin_hunk_2_@_ZNK19cmPackageInfoReader19SetTargetPropertiesEP10cmMakefileP8cmTargetRKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcSB_E:bb.a
  store ptr %i.aug, ptr %102, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aug, ptr noundef nonnull align 1 dereferenceable(12) @.str.70, i64 12, i1 false)
  %i.auh = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i64 12, ptr %i.auh, align 8, !tbaa !20
  %i.aui = getelementptr inbounds nuw i8, ptr %102, i64 28
  store i8 0, ptr %i.aui, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #23
  %i.auj = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 6 uses
  store ptr %i.auj, ptr %103, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.auj, ptr noundef nonnull align 1 dereferenceable(7) @.str.31, i64 7, i1 false)
  %i.auk = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i64 7, ptr %i.auk, align 8, !tbaa !20
  %i.aul = getelementptr inbounds nuw i8, ptr %103, i64 23
  store i8 0, ptr %i.aul, align 1, !tbaa !19
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_ZNK19cmPackageInfoReader15SetMetaPropertyEP10cmMakefileP8cmTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4Json5ValueESB_SB_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull align 8 dereferenceable(32) %i.aum)
          to label %bb.iz unwind label %bb.ja

bb.iz:                                            ; preds = %._crit_edge.i.i661
  %i.aun = load ptr, ptr %103, align 8, !tbaa !18 ; 2 uses
  %i.auo = icmp eq ptr %i.aun, %i.auj
  br i1 %i.auo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669: ; preds = %bb.iz
  %i.aup = load i64, ptr %i.auj, align 8, !tbaa !19
  %i.auq = add i64 %i.aup, 1
  call void @_ZdlPvm(ptr noundef %i.aun, i64 noundef %i.auq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671: ; preds = %bb.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #23
  %i.aur = load ptr, ptr %102, align 8, !tbaa !18 ; 2 uses
  %i.aus = icmp eq ptr %i.aur, %i.aug
  br i1 %i.aus, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671
  %i.aut = load i64, ptr %i.aug, align 8, !tbaa !19
  %i.auu = add i64 %i.aut, 1
  call void @_ZdlPvm(ptr noundef %i.aur, i64 noundef %i.auu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #23
  br label %bb.jb

bb.ja:                                            ; preds = %._crit_edge.i.i661
  %i.auv = landingpad { ptr, i32 }
          cleanup
  %i.auw = load ptr, ptr %103, align 8, !tbaa !18 ; 2 uses
  %i.aux = icmp eq ptr %i.auw, %i.auj
  br i1 %i.aux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675: ; preds = %bb.ja
  %i.auy = load i64, ptr %i.auj, align 8, !tbaa !19
  %i.auz = add i64 %i.auy, 1
  call void @_ZdlPvm(ptr noundef %i.auw, i64 noundef %i.auz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677: ; preds = %bb.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #23
  %i.ava = load ptr, ptr %102, align 8, !tbaa !18 ; 2 uses
  %i.avb = icmp eq ptr %i.ava, %i.aug
  br i1 %i.avb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677
  %i.avc = load i64, ptr %i.aug, align 8, !tbaa !19
  %i.avd = add i64 %i.avc, 1
  call void @_ZdlPvm(ptr noundef %i.ava, i64 noundef %i.avd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #23
  br label %.body301

bb.jb:                                            ; preds = %bb.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674
  %i.ave = load ptr, ptr %i.gd, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %78, ptr noundef %i.ave)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ISt17basic_string_viewIcS3_EN4Json5ValueESt4lessIS7_ESaISt4pairIKS7_S9_EEESA_IS5_ESaISC_IKS5_SG_EEED2Ev.exit unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.avf = landingpad { ptr, i32 }
          catch ptr null
  %i.avg = extractvalue { ptr, i32 } %i.avf, 0
  call void @__clang_call_terminate(ptr %i.avg) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ISt17basic_string_viewIcS3_EN4Json5ValueESt4lessIS7_ESaISt4pairIKS7_S9_EEESA_IS5_ESaISC_IKS5_SG_EEED2Ev.exit: ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  ret void

.body301:                                         ; preds = %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, %bb.fj, %bb.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, %bb.ha, %bb.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %.body503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, %bb.dn
  %.pn251.pn.pn = phi { ptr, i32 } [ %.pn251.pn, %bb.dn ], [ %.pn223, %bb.ha ], [ %.pn229, %bb.gr ], [ %.pn232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %.pn236.pn.pn, %.body503 ], [ %i.ahl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483 ], [ %i.ahg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480 ], [ %i.auv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680 ], [ %i.ahb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477 ], [ %.pn216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648 ], [ %i.auf, %bb.ix ], [ %.pn73.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i ], [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn75.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i ], [ %.pn74.i, %bb.fj ], [ %i.yl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i ], [ %.pn76.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i ], [ %i.kg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %lpad.loopexit.split-lp1392, %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ISt17basic_string_viewIcS3_EN4Json5ValueESt4lessIS7_ESaISt4pairIKS7_S9_EEESA_IS5_ESaISC_IKS5_SG_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %78) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  br label %bb.jd

bb.jd:                                            ; preds = %.body301, %.body285, %.body
  %.pn255 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body286, %.body285 ], [ %.pn251.pn.pn, %.body301 ]
  resume { ptr, i32 } %.pn255
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114AppendPropertyEP10cmMakefileP8cmTargetSt17basic_string_viewIcSt11char_traitsIcEES7_RKNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef %0, ptr noundef %1, i64 %2, ptr %3, i64 %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [5 x %"struct.std::pair.273"], align 8 ; 18 uses
  %8 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %9 = alloca [2 x %"struct.std::pair.273"], align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::optional.304", align 16 ; 8 uses
  %13 = alloca %class.cmListFileBacktrace, align 16 ; 8 uses
  %14 = alloca %"class.std::optional.304", align 16 ; 8 uses
  %15 = alloca %class.cmListFileBacktrace, align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !561
  store i64 10, ptr %9, align 8, !tbaa !16, !alias.scope !562, !noalias !561
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.118, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50, !alias.scope !562, !noalias !561
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !61, !alias.scope !562, !noalias !561
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %2, ptr %i.b, align 8, !tbaa !16, !alias.scope !563, !noalias !561
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !50, !alias.scope !563, !noalias !561
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr null, ptr %i.c, align 8, !tbaa !61, !alias.scope !563, !noalias !561
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull %9, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !561
  %i.d = icmp eq i64 %4, 0
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !564
  store i64 11, ptr %7, align 8, !tbaa !16, !alias.scope !565, !noalias !564
  %.sroa.4.0..sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.103, ptr %.sroa.4.0..sroa_idx.i.i16, align 8, !tbaa !50, !alias.scope !565, !noalias !564
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !61, !alias.scope !565, !noalias !564
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %4, ptr %i.f, align 8, !tbaa !16, !alias.scope !566, !noalias !564
  %.sroa.4.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %5, ptr %.sroa.4.0..sroa_idx.i14.i, align 8, !tbaa !50, !alias.scope !566, !noalias !564
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !61, !alias.scope !566, !noalias !564
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 2, ptr %i.h, align 8, !tbaa !16, !alias.scope !567, !noalias !564
  %.sroa.4.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr @.str.104, ptr %.sroa.4.0..sroa_idx.i22.i, align 8, !tbaa !50, !alias.scope !567, !noalias !564
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr null, ptr %i.i, align 8, !tbaa !61, !alias.scope !567, !noalias !564
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.k = load ptr, ptr %6, align 8, !tbaa !18, !noalias !564
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !564
  store i64 %i.m, ptr %i.j, align 8, !tbaa !16, !alias.scope !568, !noalias !564
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i30.i, align 8, !tbaa !50, !alias.scope !568, !noalias !564
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr null, ptr %i.n, align 8, !tbaa !61, !alias.scope !568, !noalias !564
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !564
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i64 0, ptr %8, align 8, !noalias !564
  store i8 62, ptr %i.q, align 8, !tbaa !19, !noalias !564
  store i64 1, ptr %i.p, align 8, !tbaa !16, !noalias !564
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i31.i, align 8, !tbaa !50, !noalias !564
  store i64 1, ptr %i.o, align 8, !tbaa !16, !alias.scope !569, !noalias !564
  %.sroa.4.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i39.i, align 8, !tbaa !50, !alias.scope !569, !noalias !564
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr null, ptr %i.r, align 8, !tbaa !61, !alias.scope !569, !noalias !564
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull %7, i64 5)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %13, ptr noundef nonnull align 8 dereferenceable(2952) %0)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %13, align 16, !tbaa !71
  store ptr null, ptr %i.t, align 8, !tbaa !74
  store <2 x ptr> %i.u, ptr %12, align 16, !tbaa !71
  store ptr null, ptr %13, align 16, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i8 1, ptr %i.v, align 16, !tbaa !79
  invoke void @_ZN8cmTarget14AppendPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt8optionalI19cmListFileBacktraceEb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.w = load i8, ptr %i.v, align 16, !tbaa !79, !range !45, !noundef !46
  %i.x = trunc nuw i8 %i.w to i1
  store i8 0, ptr %i.v, align 16, !tbaa !79
  br i1 %i.x, label %bb.f, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !82
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !559
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !559
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.j ], [ %i.am, %bb.k ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.l, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit, !prof !83

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit: ; preds = %bb.e, %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.l
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !74  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ap, align 8, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !82
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #23, !inline_history !560
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #23, !inline_history !560
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.as, %bb.p ], [ %i.bc, %bb.q ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.r, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, !prof !83

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #23
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.be = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !19
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ap

bb.s:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.t:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %i.bk, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.bm = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.v
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !19
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %15, ptr noundef nonnull align 8 dereferenceable(2952) %0)
          to label %bb.x unwind label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bt = load <2 x ptr>, ptr %15, align 16, !tbaa !71
  store ptr null, ptr %i.bs, align 8, !tbaa !74
  store <2 x ptr> %i.bt, ptr %14, align 16, !tbaa !71
  store ptr null, ptr %15, align 16, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store i8 1, ptr %i.bu, align 16, !tbaa !79
  invoke void @_ZN8cmTarget14AppendPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt8optionalI19cmListFileBacktraceEb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.an

bb.y:                                             ; preds = %bb.x
  %i.bv = load i8, ptr %i.bu, align 16, !tbaa !79, !range !45, !noundef !46
  %i.bw = trunc nuw i8 %i.bv to i1
  store i8 0, ptr %i.bu, align 16, !tbaa !79
  br i1 %i.bw, label %bb.z, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i.i.i.i23 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i23, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.by, align 8, !tbaa !81
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !82
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !559
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !559
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27

bb.ac:                                            ; preds = %bb.aa
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i24 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i.i.i24, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i25

bb.ae:                                            ; preds = %bb.ac
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i25: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i26 = phi i32 [ %i.cb, %bb.ad ], [ %i.cl, %bb.ae ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i26, 1
  br i1 %i.cm, label %bb.af, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27, !prof !83

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27

_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27: ; preds = %bb.y, %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i25, %bb.af
  %i.cn = load ptr, ptr %i.bs, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i28, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit32, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.co, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !82
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #23, !inline_history !560
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #23, !inline_history !560
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit32

bb.ai:                                            ; preds = %bb.ag
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i29 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i29, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30

bb.ak:                                            ; preds = %bb.ai
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i31 = phi i32 [ %i.cr, %bb.aj ], [ %i.db, %bb.ak ]
  %i.dc = icmp eq i32 %.0.i.i.i.i.i31, 1
  br i1 %i.dc, label %bb.al, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit32, !prof !83

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #23
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit32

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit32: ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit27, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i30, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ap

bb.am:                                            ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.x
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn13 = phi { ptr, i32 } [ %i.de, %bb.an ], [ %i.dd, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.ap
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret void

bb.aq:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.ao ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  %i.dk = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.aq
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119NormalizeTargetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.0.val, i64 %.8.val) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca [3 x %"struct.std::pair.273"], align 8 ; 12 uses
  %3 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %4 = alloca [3 x %"struct.std::pair.273"], align 8 ; 12 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread, label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit

_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !19
  %i.g = icmp eq i8 %i.f, 58
  br i1 %i.g, label %bb.b, label %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

bb.b:                                             ; preds = %_Z11cmHasPrefixSt17basic_string_viewIcSt11char_traitsIcEEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !586
  store i64 %.8.val, ptr %4, align 8, !tbaa !16, !alias.scope !587, !noalias !586
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.val, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50, !alias.scope !587, !noalias !586
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !61, !alias.scope !587, !noalias !586
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !586
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 0, ptr %5, align 8, !noalias !586
  store i8 58, ptr %i.k, align 8, !tbaa !19, !noalias !586
  store i64 1, ptr %i.j, align 8, !tbaa !16, !noalias !586
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !tbaa !50, !noalias !586
  store i64 1, ptr %i.i, align 8, !tbaa !16, !alias.scope !588, !noalias !586
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !50, !alias.scope !588, !noalias !586
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.l, align 8, !tbaa !61, !alias.scope !588, !noalias !586
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.d, ptr %i.m, align 8, !tbaa !16, !alias.scope !589, !noalias !586
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !50, !alias.scope !589, !noalias !586
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.n, align 8, !tbaa !61, !alias.scope !589, !noalias !586
end_hunk_2
begin_hunk_3_@_ZSt28__throw_bad_array_new_lengthv
; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18ReadListB5cxx11ERKN4Json5ValueE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Json::ValueConstIterator", align 8 ; 8 uses
  %3 = alloca %"class.Json::ValueConstIterator", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = invoke noundef zeroext i1 @_ZNK4Json5Value7isArrayEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = invoke { ptr, i8 } @_ZNK4Json5Value5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.fca.0.extract2 = extractvalue { ptr, i8 } %i.b, 0
  %.fca.1.extract3 = extractvalue { ptr, i8 } %i.b, 1
  store ptr %.fca.0.extract2, ptr %2, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.fca.1.extract3, ptr %.sroa.25.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = invoke { ptr, i8 } @_ZNK4Json5Value3endEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.fca.0.extract = extractvalue { ptr, i8 } %i.c, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.c, 1
  store ptr %.fca.0.extract, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %_ZN4Json18ValueConstIteratorppEv.exit

_ZN4Json18ValueConstIteratorppEv.exit:            ; preds = %bb.s, %bb.e
  %i.h = invoke noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZN4Json18ValueConstIteratorppEv.exit
  br i1 %i.h, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.k = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %_ZNK4Json18ValueConstIteratordeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK4Json18ValueConstIteratordeEv.exit:           ; preds = %bb.j
  %i.l = invoke noundef zeroext i1 @_ZNK4Json5Value8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_ZNK4Json18ValueConstIteratordeEv.exit
  br i1 %i.l, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !38   ; 6 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !14
  %i.p = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.r = load i64, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.t, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  store ptr %i.p, ptr %i.m, align 8, !tbaa !18
  %i.u = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.u, ptr %i.o, align 8, !tbaa !19
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.r, %bb.o ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !20
  store ptr %i.f, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %i.g, align 8, !tbaa !20
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.y, ptr %i.d, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.r

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.p
  %.pre28 = load ptr, ptr %4, align 8, !tbaa !18  ; 2 uses
  %i.z = icmp eq ptr %.pre28, %i.f
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %.pre28, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.j, %_ZN4Json18ValueConstIteratorppEv.exit, %_ZNK4Json18ValueConstIteratordeEv.exit, %bb.d
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.r:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.f
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.r
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !19
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ad, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  invoke void @_ZN4Json17ValueIteratorBase9incrementEv(ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %_ZN4Json18ValueConstIteratorppEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn19 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %lpad.loopexit.split-lp34, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %bb.i
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.loopexit.split-lp ], [ %i.j, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.v

bb.u:                                             ; preds = %bb.b, %bb.g
  ret void

bb.v:                                             ; preds = %bb.t, %bb.h
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.t ], [ %i.i, %bb.h ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn19.pn.pn
}

declare noundef zeroext i1 @_ZNK4Json5Value7isArrayEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2952), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmPackageInfoReader13Pep440VersionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !44
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #1

declare void @_ZN4Json17ValueIteratorBase9incrementEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @_ZN8cmTarget11SetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7cmValue(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !14
  %i.c = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.e, ptr %i.a, align 8, !tbaa !16
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.h, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %5, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %3, i32 noundef %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !19
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %i.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.t
}

declare ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 4 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 10 uses
  %i.i = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !18 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !18
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !98 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !114 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !702

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z6cmJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_S4_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !707
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !707
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 8, !tbaa !19
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.g = load ptr, ptr %1, align 8, !tbaa !707    ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !707
  %.sroa.03.0.copyload = load i64, ptr %i.g, align 8, !tbaa !16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !50
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.sroa.24.0.copyload, i64 noundef %.sroa.03.0.copyload)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.c, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit10
  %.sroa.012.0 = phi ptr [ %i.j, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit10 ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 16 ; 3 uses
  %.not = icmp eq ptr %i.j, %i.h
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %3, i64 noundef %2)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit10: ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !tbaa !16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 24
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !50
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit10, %bb.d, %bb.c
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp21, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.g ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %eh.lpad-body

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !14, !alias.scope !710
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !20, !alias.scope !710
  store i8 0, ptr %i.m, align 8, !tbaa !19, !alias.scope !710
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !712, !noalias !710 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !710 ; 2 uses
  %i.s = icmp ugt ptr %i.p, %i.r
  %.08.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.r ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !713, !noalias !710 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !710 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.m
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !19, !alias.scope !710
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %.body

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !22
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %4, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ak, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #23
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK4Json5Value15isConvertibleToENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #8 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN8cmTarget14AppendPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt8optionalI19cmListFileBacktraceEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind writable sret(%class.cmListFileBacktrace) align 8, ptr noundef nonnull align 8 dereferenceable(2952)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !79, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !79
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadI19cmListFileBacktraceLb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt17_Optional_payloadI19cmListFileBacktraceLb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !82
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !714
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !714
  br label %_ZNSt17_Optional_payloadI19cmListFileBacktraceLb0ELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt17_Optional_payloadI19cmListFileBacktraceLb0ELb0ELb0EED2Ev.exit, !prof !83

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZNSt17_Optional_payloadI19cmListFileBacktraceLb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadI19cmListFileBacktraceLb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN12cmConstStackI17cmListFileContext19cmListFileBacktraceE5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !82
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !715
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !715
  br label %_ZNSt12__shared_ptrIKN12cmConstStackI17cmListFileContext19cmListFileBacktraceE5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN12cmConstStackI17cmListFileContext19cmListFileBacktraceE5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIKN12cmConstStackI17cmListFileContext19cmListFileBacktraceE5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN12cmConstStackI17cmListFileContext19cmListFileBacktraceE5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !716
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !716
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_N4Json5ValueEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEN4Json5ValueESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEN4Json5ValueESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev.exit.i.i.i: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEN4Json5ValueESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit: ; preds = %_ZNSt3mapISt17basic_string_viewIcSt11char_traitsIcEEN4Json5ValueESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 112) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !717

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapISt17basic_string_viewIcS3_EN4Json5ValueESt4lessISA_ESaIS6_IKSA_SC_EEEESt10_Select1stISJ_ESD_IS5_ESaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_N4Json5ValueEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  tail call void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_N4Json5ValueEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48
  tail call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.e) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !718

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN19cmCxxModuleMetadata14PopulateTargetER8cmTargetRKS_RKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !14
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.e, ptr %i.a, align 8, !tbaa !16
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.h, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %.016, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !719

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseI19cmCxxModuleMetadataE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(65) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !723  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 192 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !726, !range !45, !noundef !46
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !726
  br i1 %i.n, label %bb.b, label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72
  tail call void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(128) %i.o) #23
  br label %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i

_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCxxModuleMetadata18LocalArgumentsDataELb0ELb0EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.v = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 200 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !720

_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmCxxModuleMetadata10ModuleDataEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !723
  br label %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ab = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmCxxModuleMetadataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !727
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #24
  br label %_ZN19cmCxxModuleMetadataD2Ev.exit

_ZN19cmCxxModuleMetadataD2Ev.exit:                ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata10ModuleDataES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmCxxModuleMetadata18LocalArgumentsDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !18 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.x = load i64, ptr %i.v, align 8, !tbaa !19
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.q, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !731 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !732 ; 2 uses
  %.not4.i.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i13, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i
  %.05.i.i.i15 = phi ptr [ %i.ay, %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 64 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !44, !range !45, !noundef !46
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !44
  br i1 %i.am, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i14
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 48 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i14
  %i.at = load ptr, ptr %.05.i.i.i15, align 8, !tbaa !18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !19
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i

_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 80 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !728

_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN19cmCxxModuleMetadata22PreprocessorDefineDataEEvPT_.exit.i.i.i
  %.pr.i17 = load ptr, ptr %i.ag, align 8, !tbaa !731
  br label %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.az = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.az, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !733
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #24
  br label %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmCxxModuleMetadata22PreprocessorDefineDataES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i19 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i19, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23
  %.05.i.i.i21 = phi ptr [ %i.bo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23 ], [ %i.bg, %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i21, align 8, !tbaa !18 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i20
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !19
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23: ; preds = %.lr.ph.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25, label %.lr.ph.i.i.i20, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23
  %.pr.i26 = load ptr, ptr %i.bf, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25, %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit
  %i.bp = phi ptr [ %.pr.i26, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25 ], [ %i.bg, %_ZNSt6vectorIN19cmCxxModuleMetadata22PreprocessorDefineDataESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !39
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27, %bb.f
  %i.bv = load ptr, ptr %0, align 8, !tbaa !40    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i31 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not4.i.i.i31, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35
  %.05.i.i.i33 = phi ptr [ %i.cd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35 ], [ %i.bv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30 ] ; 3 uses
  %i.by = load ptr, ptr %.05.i.i.i33, align 8, !tbaa !18 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i32
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.cc = add i64 %i.cb, 1
  tail call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35: ; preds = %.lr.ph.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.cd, %i.bx
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i32, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %0, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30
  %i.ce = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.bv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30 ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit42, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !39
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit42

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit42: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !735
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !100
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSF_RKSD_RKS9_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !83

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !115
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !83

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25
          to label %.noexc10.i unwind label %bb.g ; 2 uses
end_hunk_4
