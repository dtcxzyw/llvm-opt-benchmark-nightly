Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/path?download=true
inline.NumInlined: 451
inline.NumDeleted: 171
begin_hunk_0_@_ZN4lean7resolveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.i = icmp ugt i64 %i.c, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.c, 0
  br i1 %i.j, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %i.c, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i, label %._crit_edge.i.i.thread, !prof !22

.noexc6.i:                                        ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

._crit_edge.i.i.thread:                           ; preds = %bb.e
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !16
  store i64 %i.c, ptr %i.h, align 8, !tbaa !20
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.c
  %cond = icmp eq i64 %i.c, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !20
  store i8 %i.n, ptr %i.h, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.o = phi ptr [ %i.m, %._crit_edge.i.i.thread ], [ %i.h, %._crit_edge.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.e, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.h, %bb.f ], [ %i.o, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.c
  store i8 0, ptr %i.r, align 1, !tbaa !20
  br label %bb.q

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 47, ptr %i.a, align 1, !tbaa !20, !noalias !49
  %i.s = load ptr, ptr %2, align 8, !tbaa !16, !noalias !49
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !49
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.s, i64 noundef %i.u, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.v = load ptr, ptr %1, align 8, !tbaa !16, !noalias !50 ; 3 uses
  %i.w = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !50 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17, !noalias !50 ; 5 uses
  %i.z = sub i64 9223372036854775807, %i.y
  %i.aa = icmp ult i64 %i.z, %i.w
  br i1 %i.aa, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ab = add i64 %i.y, %i.w                      ; 3 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !16, !noalias !50 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.af = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !20, !noalias !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ah = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ab, %i.ah
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.w, 1
  br i1 %cond.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %i.v, align 1, !tbaa !20, !noalias !50
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !20, !noalias !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.v, i64 %i.w, i1 false), !noalias !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.y, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.w)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !17, !noalias !50
  %i.ak = load ptr, ptr %4, align 8, !tbaa !16, !noalias !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab
  store i8 0, ptr %i.al, align 1, !tbaa !20, !noalias !50
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !21, !alias.scope !50
  %i.an = load ptr, ptr %4, align 8, !tbaa !16, !noalias !50 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ad
  br i1 %i.ao, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !17, !noalias !50 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.an, ptr %0, align 8, !tbaa !16, !alias.scope !50
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !20, !noalias !50
  store i64 %i.as, ptr %i.am, align 8, !tbaa !20, !alias.scope !50
  %.pre.i = load i64, ptr %i.x, align 8, !tbaa !17, !noalias !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %i.at = phi i64 [ %i.ap, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !17, !alias.scope !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.p
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.av

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN4lean14normalize_pathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16     ; 45 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.c, 24
  %n.vec = and i64 %i.c, -32                      ; 4 uses
  %i.g = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue105
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue105 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %index ; 3 uses
  %i.h = getelementptr i8, ptr %i.a, i64 %index
  %next.gep12 = getelementptr i8, ptr %i.h, i64 1
  %i.i = getelementptr i8, ptr %i.a, i64 %index
  %next.gep13 = getelementptr i8, ptr %i.i, i64 2
  %i.j = getelementptr i8, ptr %i.a, i64 %index
  %next.gep14 = getelementptr i8, ptr %i.j, i64 3
  %i.k = getelementptr i8, ptr %i.a, i64 %index
  %next.gep15 = getelementptr i8, ptr %i.k, i64 4
  %i.l = getelementptr i8, ptr %i.a, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.l, i64 5
  %i.m = getelementptr i8, ptr %i.a, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.m, i64 6
  %i.n = getelementptr i8, ptr %i.a, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.n, i64 7
  %i.o = getelementptr i8, ptr %i.a, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %i.a, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.p, i64 9
  %i.q = getelementptr i8, ptr %i.a, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.q, i64 10
  %i.r = getelementptr i8, ptr %i.a, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.r, i64 11
  %i.s = getelementptr i8, ptr %i.a, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.s, i64 12
  %i.t = getelementptr i8, ptr %i.a, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.t, i64 13
  %i.u = getelementptr i8, ptr %i.a, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.u, i64 14
  %i.v = getelementptr i8, ptr %i.a, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.v, i64 15
  %i.w = getelementptr i8, ptr %i.a, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.w, i64 16
  %i.x = getelementptr i8, ptr %i.a, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.x, i64 17
  %i.y = getelementptr i8, ptr %i.a, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.y, i64 18
  %i.z = getelementptr i8, ptr %i.a, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.z, i64 19
  %i.aa = getelementptr i8, ptr %i.a, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.aa, i64 20
  %i.ab = getelementptr i8, ptr %i.a, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.ab, i64 21
  %i.ac = getelementptr i8, ptr %i.a, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.ac, i64 22
  %i.ad = getelementptr i8, ptr %i.a, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.ad, i64 23
  %i.ae = getelementptr i8, ptr %i.a, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.ae, i64 24
  %i.af = getelementptr i8, ptr %i.a, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.af, i64 25
  %i.ag = getelementptr i8, ptr %i.a, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.ag, i64 26
  %i.ah = getelementptr i8, ptr %i.a, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.ah, i64 27
  %i.ai = getelementptr i8, ptr %i.a, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.ai, i64 28
  %i.aj = getelementptr i8, ptr %i.a, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.aj, i64 29
  %i.ak = getelementptr i8, ptr %i.a, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.ak, i64 30
  %i.al = getelementptr i8, ptr %i.a, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.al, i64 31
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load43 = load <16 x i8>, ptr %i.am, align 1, !tbaa !20
  %i.an = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.ao = icmp eq <16 x i8> %wide.load43, splat (i8 92) ; 16 uses
  %i.ap = extractelement <16 x i1> %i.an, i64 0
  br i1 %i.ap, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !20
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.aq = extractelement <16 x i1> %i.an, i64 1
  br i1 %i.aq, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep12, align 1, !tbaa !20
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue
  %i.ar = extractelement <16 x i1> %i.an, i64 2
  br i1 %i.ar, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  store i8 47, ptr %next.gep13, align 1, !tbaa !20
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.as = extractelement <16 x i1> %i.an, i64 3
  br i1 %i.as, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  store i8 47, ptr %next.gep14, align 1, !tbaa !20
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.at = extractelement <16 x i1> %i.an, i64 4
  br i1 %i.at, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  store i8 47, ptr %next.gep15, align 1, !tbaa !20
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.au = extractelement <16 x i1> %i.an, i64 5
  br i1 %i.au, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i8 47, ptr %next.gep16, align 1, !tbaa !20
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.av = extractelement <16 x i1> %i.an, i64 6
  br i1 %i.av, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i8 47, ptr %next.gep17, align 1, !tbaa !20
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.aw = extractelement <16 x i1> %i.an, i64 7
  br i1 %i.aw, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i8 47, ptr %next.gep18, align 1, !tbaa !20
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.ax = extractelement <16 x i1> %i.an, i64 8
  br i1 %i.ax, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i8 47, ptr %next.gep19, align 1, !tbaa !20
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.ay = extractelement <16 x i1> %i.an, i64 9
  br i1 %i.ay, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i8 47, ptr %next.gep20, align 1, !tbaa !20
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.az = extractelement <16 x i1> %i.an, i64 10
  br i1 %i.az, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i8 47, ptr %next.gep21, align 1, !tbaa !20
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.ba = extractelement <16 x i1> %i.an, i64 11
  br i1 %i.ba, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i8 47, ptr %next.gep22, align 1, !tbaa !20
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.bb = extractelement <16 x i1> %i.an, i64 12
  br i1 %i.bb, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i8 47, ptr %next.gep23, align 1, !tbaa !20
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.bc = extractelement <16 x i1> %i.an, i64 13
  br i1 %i.bc, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  store i8 47, ptr %next.gep24, align 1, !tbaa !20
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.bd = extractelement <16 x i1> %i.an, i64 14
  br i1 %i.bd, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i8 47, ptr %next.gep25, align 1, !tbaa !20
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.be = extractelement <16 x i1> %i.an, i64 15
  br i1 %i.be, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i8 47, ptr %next.gep26, align 1, !tbaa !20
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.bf = extractelement <16 x i1> %i.ao, i64 0
  br i1 %i.bf, label %pred.store.if74, label %pred.store.continue75

end_hunk_0
begin_hunk_1_@_ZN4lean8read_dirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.ac, %.loopexit74, %.loopexit.split-lp75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %.pn30 = phi { ptr, i32 } [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ], [ %lpad.loopexit76, %.loopexit74 ], [ %i.cp, %bb.ac ] ; 2 uses
  %i.cu = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.h
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.cw = load i64, ptr %i.h, align 8, !tbaa !20
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %i.co, %bb.ab ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cy = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.d
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.da = load i64, ptr %i.d, align 8, !tbaa !20
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ae

bb.ad:                                            ; preds = %bb.h
  %i.dc = call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  ret void

bb.ae:                                            ; preds = %bb.e, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.f
  %.pn30.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.e ], [ %.pn.pn63, %bb.f ], [ %.pn30.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.aa, %bb.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn.pn

bb.af:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN4lean6is_dirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::optional") align 1 captures(none) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = call i32 @stat(ptr noundef %i.a, ptr noundef nonnull %2) #25
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 16384
  %i.h = zext i1 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  store i8 %.sink, ptr %0, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !21
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !22

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.n = load ptr, ptr %3, align 8, !tbaa !16, !noalias !81 ; 45 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !81 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = icmp samesign eq i64 %i.o, 0
  br i1 %i.q, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 4 uses
  %i.s = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue131
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue131 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 3 uses
  %i.t = getelementptr i8, ptr %i.n, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.t, i64 1
  %i.u = getelementptr i8, ptr %i.n, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.u, i64 2
  %i.v = getelementptr i8, ptr %i.n, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.v, i64 3
  %i.w = getelementptr i8, ptr %i.n, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.w, i64 4
  %i.x = getelementptr i8, ptr %i.n, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.x, i64 5
  %i.y = getelementptr i8, ptr %i.n, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.y, i64 6
  %i.z = getelementptr i8, ptr %i.n, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.z, i64 7
  %i.aa = getelementptr i8, ptr %i.n, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = getelementptr i8, ptr %i.n, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.ab, i64 9
  %i.ac = getelementptr i8, ptr %i.n, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.ac, i64 10
  %i.ad = getelementptr i8, ptr %i.n, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.ad, i64 11
  %i.ae = getelementptr i8, ptr %i.n, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.ae, i64 12
  %i.af = getelementptr i8, ptr %i.n, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.af, i64 13
  %i.ag = getelementptr i8, ptr %i.n, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.ag, i64 14
  %i.ah = getelementptr i8, ptr %i.n, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.ah, i64 15
  %i.ai = getelementptr i8, ptr %i.n, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.ai, i64 16
  %i.aj = getelementptr i8, ptr %i.n, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.aj, i64 17
  %i.ak = getelementptr i8, ptr %i.n, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.ak, i64 18
  %i.al = getelementptr i8, ptr %i.n, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.al, i64 19
  %i.am = getelementptr i8, ptr %i.n, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.am, i64 20
  %i.an = getelementptr i8, ptr %i.n, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.an, i64 21
  %i.ao = getelementptr i8, ptr %i.n, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.ao, i64 22
  %i.ap = getelementptr i8, ptr %i.n, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.ap, i64 23
  %i.aq = getelementptr i8, ptr %i.n, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.aq, i64 24
  %i.ar = getelementptr i8, ptr %i.n, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.ar, i64 25
  %i.as = getelementptr i8, ptr %i.n, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.as, i64 26
  %i.at = getelementptr i8, ptr %i.n, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.at, i64 27
  %i.au = getelementptr i8, ptr %i.n, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.au, i64 28
  %i.av = getelementptr i8, ptr %i.n, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.av, i64 29
  %i.aw = getelementptr i8, ptr %i.n, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.aw, i64 30
  %i.ax = getelementptr i8, ptr %i.n, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.ax, i64 31
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20, !noalias !81
  %wide.load69 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !20, !noalias !81
  %i.az = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.ba = icmp eq <16 x i8> %wide.load69, splat (i8 92) ; 16 uses
  %i.bb = extractelement <16 x i1> %i.az, i64 0
  br i1 %i.bb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bc = extractelement <16 x i1> %i.az, i64 1
  br i1 %i.bc, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep38, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue
  %i.bd = extractelement <16 x i1> %i.az, i64 2
  br i1 %i.bd, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i8 47, ptr %next.gep39, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.be = extractelement <16 x i1> %i.az, i64 3
  br i1 %i.be, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i8 47, ptr %next.gep40, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.bf = extractelement <16 x i1> %i.az, i64 4
  br i1 %i.bf, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store i8 47, ptr %next.gep41, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.bg = extractelement <16 x i1> %i.az, i64 5
  br i1 %i.bg, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store i8 47, ptr %next.gep42, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bh = extractelement <16 x i1> %i.az, i64 6
  br i1 %i.bh, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i8 47, ptr %next.gep43, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bi = extractelement <16 x i1> %i.az, i64 7
  br i1 %i.bi, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 47, ptr %next.gep44, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.bj = extractelement <16 x i1> %i.az, i64 8
  br i1 %i.bj, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 47, ptr %next.gep45, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.bk = extractelement <16 x i1> %i.az, i64 9
  br i1 %i.bk, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 47, ptr %next.gep46, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.bl = extractelement <16 x i1> %i.az, i64 10
  br i1 %i.bl, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 47, ptr %next.gep47, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.bm = extractelement <16 x i1> %i.az, i64 11
  br i1 %i.bm, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 47, ptr %next.gep48, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.bn = extractelement <16 x i1> %i.az, i64 12
  br i1 %i.bn, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 47, ptr %next.gep49, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.bo = extractelement <16 x i1> %i.az, i64 13
  br i1 %i.bo, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 47, ptr %next.gep50, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.bp = extractelement <16 x i1> %i.az, i64 14
  br i1 %i.bp, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 47, ptr %next.gep51, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.bq = extractelement <16 x i1> %i.az, i64 15
  br i1 %i.bq, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 47, ptr %next.gep52, align 1, !tbaa !20, !noalias !81
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.br = extractelement <16 x i1> %i.ba, i64 0
  br i1 %i.br, label %pred.store.if100, label %pred.store.continue101

end_hunk_1
begin_hunk_2_@_ZN4lean7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 0, ptr %i.l, align 8, !tbaa !17, !noalias !81
  store i8 0, ptr %i.a, align 8, !tbaa !20, !noalias !81
  %.not.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i, label %._crit_edge.i.i8, label %.preheader

bb.i:                                             ; preds = %.preheader
  %.not13.i = icmp eq i64 %i.do, 0
  br i1 %.not13.i, label %._crit_edge.i.i8, label %.preheader, !llvm.loop !1

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.1.i36 = phi i64 [ %i.do, %bb.i ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.do = add i64 %.1.i36, -1                     ; 10 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = icmp eq i8 %i.dq, 47
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit, label %bb.i, !llvm.loop !1

._crit_edge.i.i8:                                 ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ds, ptr %0, align 8, !tbaa !21
  store i8 46, ptr %i.ds, align 8, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.dt, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.du, align 1, !tbaa !20
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit: ; preds = %.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !21, !alias.scope !82
  %i.dw = icmp ugt i64 %i.do, 15
  br i1 %i.dw, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit
  %i.dx = icmp slt i64 %i.do, 0
  br i1 %i.dx, label %.noexc10.i.i, label %bb.k

.noexc10.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %.noexc10.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.dy = icmp slt i64 %.1.i36, 0
  br i1 %i.dy, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !22

.noexc11.i.i:                                     ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.k
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i36) #28
          to label %.noexc15 unwind label %bb.n   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.dz, ptr %0, align 8, !tbaa !16, !alias.scope !82
  store i64 %i.do, ptr %i.dv, align 8, !tbaa !20, !alias.scope !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit
  %i.ea = phi ptr [ %i.dz, %.noexc15 ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit ] ; 3 uses
  switch i64 %i.do, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !20
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %i.dl, i64 %i.do, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.do, ptr %i.ec, align 8, !tbaa !17, !alias.scope !82
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.do
  store i8 0, ptr %i.ed, align 1, !tbaa !20
  %.pre = load ptr, ptr %2, align 8, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc10.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.db
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %._crit_edge.i.i8
  %i.eh = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %i.dl, %._crit_edge.i.i8 ] ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.db
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.o
  %i.ej = load i64, ptr %i.db, align 8, !tbaa !20
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.n
  %i.el = load i64, ptr %i.db, align 8, !tbaa !20
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.em) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ee
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean4stemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !21
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !22

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.n = load ptr, ptr %3, align 8, !tbaa !16, !noalias !91 ; 45 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !91 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = icmp samesign eq i64 %i.o, 0
  br i1 %i.q, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 4 uses
  %i.s = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue137
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue137 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 3 uses
  %i.t = getelementptr i8, ptr %i.n, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.t, i64 1
  %i.u = getelementptr i8, ptr %i.n, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.u, i64 2
  %i.v = getelementptr i8, ptr %i.n, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.v, i64 3
  %i.w = getelementptr i8, ptr %i.n, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.w, i64 4
  %i.x = getelementptr i8, ptr %i.n, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.x, i64 5
  %i.y = getelementptr i8, ptr %i.n, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.y, i64 6
  %i.z = getelementptr i8, ptr %i.n, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.z, i64 7
  %i.aa = getelementptr i8, ptr %i.n, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = getelementptr i8, ptr %i.n, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.ab, i64 9
  %i.ac = getelementptr i8, ptr %i.n, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.ac, i64 10
  %i.ad = getelementptr i8, ptr %i.n, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.ad, i64 11
  %i.ae = getelementptr i8, ptr %i.n, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.ae, i64 12
  %i.af = getelementptr i8, ptr %i.n, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.af, i64 13
  %i.ag = getelementptr i8, ptr %i.n, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.ag, i64 14
  %i.ah = getelementptr i8, ptr %i.n, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.ah, i64 15
  %i.ai = getelementptr i8, ptr %i.n, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.ai, i64 16
  %i.aj = getelementptr i8, ptr %i.n, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.aj, i64 17
  %i.ak = getelementptr i8, ptr %i.n, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.ak, i64 18
  %i.al = getelementptr i8, ptr %i.n, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.al, i64 19
  %i.am = getelementptr i8, ptr %i.n, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.am, i64 20
  %i.an = getelementptr i8, ptr %i.n, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.an, i64 21
  %i.ao = getelementptr i8, ptr %i.n, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.ao, i64 22
  %i.ap = getelementptr i8, ptr %i.n, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.ap, i64 23
  %i.aq = getelementptr i8, ptr %i.n, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.aq, i64 24
  %i.ar = getelementptr i8, ptr %i.n, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.ar, i64 25
  %i.as = getelementptr i8, ptr %i.n, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.as, i64 26
  %i.at = getelementptr i8, ptr %i.n, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.at, i64 27
  %i.au = getelementptr i8, ptr %i.n, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.au, i64 28
  %i.av = getelementptr i8, ptr %i.n, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.av, i64 29
  %i.aw = getelementptr i8, ptr %i.n, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.aw, i64 30
  %i.ax = getelementptr i8, ptr %i.n, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.ax, i64 31
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20, !noalias !91
  %wide.load75 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !20, !noalias !91
  %i.az = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.ba = icmp eq <16 x i8> %wide.load75, splat (i8 92) ; 16 uses
  %i.bb = extractelement <16 x i1> %i.az, i64 0
  br i1 %i.bb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bc = extractelement <16 x i1> %i.az, i64 1
  br i1 %i.bc, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep44, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue
  %i.bd = extractelement <16 x i1> %i.az, i64 2
  br i1 %i.bd, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store i8 47, ptr %next.gep45, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.be = extractelement <16 x i1> %i.az, i64 3
  br i1 %i.be, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i8 47, ptr %next.gep46, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bf = extractelement <16 x i1> %i.az, i64 4
  br i1 %i.bf, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 47, ptr %next.gep47, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.bg = extractelement <16 x i1> %i.az, i64 5
  br i1 %i.bg, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 47, ptr %next.gep48, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.bh = extractelement <16 x i1> %i.az, i64 6
  br i1 %i.bh, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 47, ptr %next.gep49, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.bi = extractelement <16 x i1> %i.az, i64 7
  br i1 %i.bi, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 47, ptr %next.gep50, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.bj = extractelement <16 x i1> %i.az, i64 8
  br i1 %i.bj, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 47, ptr %next.gep51, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.bk = extractelement <16 x i1> %i.az, i64 9
  br i1 %i.bk, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 47, ptr %next.gep52, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.bl = extractelement <16 x i1> %i.az, i64 10
  br i1 %i.bl, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 47, ptr %next.gep53, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.bm = extractelement <16 x i1> %i.az, i64 11
  br i1 %i.bm, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 47, ptr %next.gep54, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.bn = extractelement <16 x i1> %i.az, i64 12
  br i1 %i.bn, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 47, ptr %next.gep55, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.bo = extractelement <16 x i1> %i.az, i64 13
  br i1 %i.bo, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 47, ptr %next.gep56, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.bp = extractelement <16 x i1> %i.az, i64 14
  br i1 %i.bp, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 47, ptr %next.gep57, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.bq = extractelement <16 x i1> %i.az, i64 15
  br i1 %i.bq, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 47, ptr %next.gep58, align 1, !tbaa !20, !noalias !91
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.br = extractelement <16 x i1> %i.ba, i64 0
  br i1 %i.br, label %pred.store.if106, label %pred.store.continue107

end_hunk_2
