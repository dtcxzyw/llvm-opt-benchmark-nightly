Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/json_writer?download=true
inline.NumInlined: 1079
inline.NumDeleted: 271
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Json12StyledWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  store i8 10, ptr %i.bd, align 1, !tbaa !13
  store i64 %i.au, ptr %i.as, align 8, !tbaa !23
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.au
  store i8 0, ptr %i.bf, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK4Json5Value10getCommentB5cxx11ENS_16CommentPlacementE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 2)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23 ; 2 uses
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !23
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bh
  br i1 %i.bk, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.bl = load ptr, ptr %4, align 8, !tbaa !22
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef %i.bl, i64 noundef %i.bh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26 unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23
  %i.bn = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !13
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bs = load i64, ptr %i.as, align 8, !tbaa !23 ; 4 uses
  %i.bt = add i64 %i.bs, 1                        ; 3 uses
  %i.bu = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.aw
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.bw = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.bx = load i64, ptr %i.aw, align 8, !tbaa !13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33
  %i.by = phi i64 [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33 ]
  %i.bz = icmp ugt i64 %i.bt, %i.by
  br i1 %i.bz, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit34

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.bs, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i32 = load ptr, ptr %i.ar, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31, %bb.l
  %i.ca = phi ptr [ %.pre.i.i32, %bb.l ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i31 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  store i8 10, ptr %i.cb, align 1, !tbaa !13
  store i64 %i.bt, ptr %i.as, align 8, !tbaa !23
  %i.cc = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bt
  store i8 0, ptr %i.cd, align 1, !tbaa !13
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23, %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !13
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit34, %bb.h
  ret void

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn9 = phi { ptr, i32 } [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12StyledWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i8, ptr %i.b, align 8, !tbaa !48, !range !33, !noundef !34
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !18
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.l, ptr %i.a, align 8, !tbaa !20
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !22
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.o, ptr %i.i, align 8, !tbaa !13
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc.i.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !13
  store i8 %i.q, ptr %i.p, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.e, align 8, !tbaa !40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = sub i64 4611686018427387903, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.z
  br i1 %i.ad, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %1, align 8, !tbaa !22
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef %i.af, i64 noundef %i.z) ; 0 uses
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12StyledWriter15writeArrayValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 6 uses
  %i.b = zext i32 %i.a to i64
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !18
  store i16 23899, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.f, align 2, !tbaa !13
  invoke void @_ZN4Json12StyledWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !13
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.w

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.c
  %i.n = load i64, ptr %i.d, align 8, !tbaa !13
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4Json12StyledWriter16isMultilineArrayERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.p, label %._crit_edge.i.i41, label %bb.r

._crit_edge.i.i41:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !18
  store i8 91, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.s, align 1, !tbaa !13
  invoke void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %._crit_edge.i.i41
  %i.t = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.e
  %i.v = load i64, ptr %i.q, align 8, !tbaa !13
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN4Json12StyledWriter6indentEv(ptr noundef nonnull align 8 dereferenceable(105) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ab = icmp eq ptr %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.fr = freeze i1 %i.ab
  br i1 %.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.l
  %.023.us = phi i32 [ %i.be, %bb.l ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.023.us) ; 4 uses
  call void @_ZN4Json12StyledWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ah)
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !23 ; 7 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ai
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13  ; 2 uses
  %.not.i.us = icmp eq i8 %i.an, 32
  switch i8 %i.an, label %bb.g [
    i8 32, label %_ZN4Json12StyledWriter11writeIndentEv.exit.us
    i8 10, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 3 uses
  %i.ap = icmp eq ptr %i.ak, %i.ae
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us: ; preds = %bb.g
  %i.ar = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us
  %i.as = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us ]
  %i.at = icmp ugt i64 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i.us = load ptr, ptr %i.ac, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us
  %i.au = phi ptr [ %.pre.i.i.i.us, %bb.h ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ai
  store i8 10, ptr %i.av, align 1, !tbaa !13
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !23
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  store i8 0, ptr %i.ax, align 1, !tbaa !13
  br i1 %.not.i.us, label %_ZN4Json12StyledWriter11writeIndentEv.exit.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us
  %.pre.i.us = load i64, ptr %i.ad, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us
  %i.ay = phi i64 [ %.pre.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i.us ], [ %i.ai, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us ]
  %i.az = load i64, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %i.ba = sub i64 4611686018427387903, %i.ay
  %i.bb = icmp ult i64 %i.ba, %i.az
  br i1 %i.bb, label %.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.us: ; preds = %bb.i
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef %i.bc, i64 noundef %i.az) ; 0 uses
  br label %_ZN4Json12StyledWriter11writeIndentEv.exit.us

_ZN4Json12StyledWriter11writeIndentEv.exit.us:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us, %bb.f
  call void @_ZN4Json12StyledWriter10writeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ah)
  %i.be = add i32 %.023.us, 1                     ; 2 uses
  %i.bf = icmp eq i32 %i.be, %i.a
  br i1 %i.bf, label %._crit_edge.i.i51, label %bb.j

bb.j:                                             ; preds = %_ZN4Json12StyledWriter11writeIndentEv.exit.us
  %i.bg = load i64, ptr %i.ad, align 8, !tbaa !23 ; 4 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ae
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us: ; preds = %bb.j
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us: ; preds = %bb.j
  %i.bl = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us
  %i.bm = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us ]
  %i.bn = icmp ugt i64 %i.bh, %i.bm
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.bg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.us = load ptr, ptr %i.ac, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us
  %i.bo = phi ptr [ %.pre.i.i.us, %bb.k ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  store i8 44, ptr %i.bp, align 1, !tbaa !13
  store i64 %i.bh, ptr %i.ad, align 8, !tbaa !23
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  store i8 0, ptr %i.br, align 1, !tbaa !13
  call void @_ZN4Json12StyledWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ah)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bs = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 0) ; 3 uses
  call void @_ZN4Json12StyledWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bs)
  %i.bt = load ptr, ptr %i.x, align 8, !tbaa !39
  call void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
  %i.bu = icmp eq i32 %i.a, 1
  br i1 %i.bu, label %._crit_edge.i.i51, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge.i.i41
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.q
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.m
  %i.by = load i64, ptr %i.q, align 8, !tbaa !13
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.x

.split.us:                                        ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split ] ; 3 uses
  %i.ca = phi ptr [ %i.co, %bb.o ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split ]
  %i.cb = load i64, ptr %i.ad, align 8, !tbaa !23 ; 4 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ae
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.lr.ph
  %i.cf = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.cg = load i64, ptr %i.ae, align 8, !tbaa !13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ch = phi i64 [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.cb, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.ac, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cj = phi ptr [ %.pre.i.i, %bb.n ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store i8 44, ptr %i.ck, align 1, !tbaa !13
  store i64 %i.cc, ptr %i.ad, align 8, !tbaa !23
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cc
  store i8 0, ptr %i.cm, align 1, !tbaa !13
  call void @_ZN4Json12StyledWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ca)
  %i.cn = trunc nuw i64 %indvars.iv to i32
  %i.co = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.cn) ; 3 uses
  call void @_ZN4Json12StyledWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.co)
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %indvars.iv
  call void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond74 = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond74, label %._crit_edge.i.i51, label %.lr.ph

._crit_edge.i.i51:                                ; preds = %bb.o, %_ZN4Json12StyledWriter11writeIndentEv.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split
  %.us-phi = phi ptr [ %i.ah, %_ZN4Json12StyledWriter11writeIndentEv.exit.us ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.split ], [ %i.co, %bb.o ]
  call void @_ZN4Json12StyledWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %.us-phi)
  %i.cr = load i64, ptr %i.af, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !47
  %i.cu = zext i32 %i.ct to i64
  %i.cv = sub i64 %i.cr, %i.cu
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %i.cv, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cw, ptr %4, align 8, !tbaa !18
  store i8 93, ptr %i.cw, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.cx, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.cy, align 1, !tbaa !13
  invoke void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i51
  %i.cz = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cw
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.p
  %i.db = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.w

bb.q:                                             ; preds = %._crit_edge.i.i51
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cw
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.q
  %i.dg = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.x

bb.r:                                             ; preds = %bb.d
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !23
  %i.dl = and i64 %i.dk, -2
  %i.dm = icmp eq i64 %i.dl, 4611686018427387902
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dn = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull @.str.13, i64 noundef 2) ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.do, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre75.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 2 uses
  %.pre76 = load i64, ptr %i.dj, align 8, !tbaa !23
  %i.dp = sub i64 4611686018427387903, %.pre76
  %i.dq = icmp ult i64 %i.dp, %.pre75.a
  br i1 %i.dq, label %.loopexit71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %bb.t
  %i.dr = load ptr, ptr %.pre, align 8, !tbaa !22
  %i.ds = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef %i.dr, i64 noundef %.pre75.a) ; 0 uses
  %exitcond.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond.peel.not, label %.loopexit72, label %.peel.next

.loopexit72:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.dt = load i64, ptr %i.dj, align 8, !tbaa !23
  %i.du = and i64 %i.dt, -2
  %i.dv = icmp eq i64 %i.du, 4611686018427387902
  br i1 %i.dv, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit61

bb.u:                                             ; preds = %.loopexit72
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit61: ; preds = %.loopexit72
  %i.dw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %bb.w

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.067 = phi i64 [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ] ; 2 uses
  %i.dx = load i64, ptr %i.dj, align 8, !tbaa !23
  %i.dy = and i64 %i.dx, -2
  %i.dz = icmp eq i64 %i.dy, 4611686018427387902
  br i1 %i.dz, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %.peel.next
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

bb.v:                                             ; preds = %.peel.next
  %i.ea = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  %i.eb = load ptr, ptr %i.do, align 8, !tbaa !39
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %.067 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !23 ; 2 uses
  %i.ef = load i64, ptr %i.dj, align 8, !tbaa !23
  %i.eg = sub i64 4611686018427387903, %i.ef
  %i.eh = icmp ult i64 %i.eg, %i.ee
  br i1 %i.eh, label %.loopexit71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

.loopexit71:                                      ; preds = %bb.v, %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.v
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !22
  %i.ej = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef %i.ei, i64 noundef %i.ee) ; 0 uses
  %i.ek = add nuw nsw i64 %.067, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.b
  br i1 %exitcond.not, label %.loopexit72, label %.peel.next, !llvm.loop !118

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn35.pn = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12StyledWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 8 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  %.not.i = icmp eq i8 %i.h, 32
  switch i8 %i.h, label %bb.c [
    i8 32, label %_ZN4Json12StyledWriter11writeIndentEv.exit
    i8 10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.c, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c
  %i.l = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.j, align 8, !tbaa !13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.p = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.c
  store i8 10, ptr %i.q, align 1, !tbaa !13
  store i64 %i.i, ptr %i.b, align 8, !tbaa !23
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !13
  %.pre2 = load i64, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  br i1 %.not.i, label %_ZN4Json12StyledWriter11writeIndentEv.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit._crit_edge.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %bb.b, %bb.a
  %i.t = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ], [ %.pre2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = sub i64 4611686018427387903, %i.t
  %i.x = icmp ult i64 %i.w, %i.v
end_hunk_0
begin_hunk_1_@_ZN4Json18StyledStreamWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i8 %i.q, ptr %i.p, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.e, align 8, !tbaa !40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.z = load ptr, ptr %1, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.z, i64 noundef %i.ab) ; 0 uses
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json18StyledStreamWriter15writeArrayValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = tail call noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 5 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !18
  store i16 23899, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.i, align 2, !tbaa !13
  invoke void @_ZN4Json18StyledStreamWriter9pushValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !13
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.z

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.c
  %i.q = load i64, ptr %i.g, align 8, !tbaa !13
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4Json18StyledStreamWriter16isMultilineArrayERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.s, label %._crit_edge.i.i42, label %bb.y

._crit_edge.i.i42:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !18
  store i8 91, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 14 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 2
  %.not.i = icmp eq i8 %i.y, 0
  br i1 %.not.i, label %bb.e, label %.noexc48

bb.e:                                             ; preds = %._crit_edge.i.i42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !13
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i8 noundef signext 10)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i unwind label %bb.r ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge unwind label %bb.r ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge: ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i
  %.pre96.a = load ptr, ptr %3, align 8, !tbaa !22
  %.pre97.a = load i64, ptr %i.u, align 8, !tbaa !23
  br label %.noexc48

.noexc48:                                         ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge, %._crit_edge.i.i42
  %i.ao = phi i64 [ %.pre97.a, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge ], [ 1, %._crit_edge.i.i42 ]
  %i.ap = phi ptr [ %.pre96.a, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i..noexc48_crit_edge ], [ %i.t, %._crit_edge.i.i42 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.ap, i64 noundef %i.ao)
          to label %bb.h unwind label %bb.r       ; 0 uses

bb.h:                                             ; preds = %.noexc48
  %i.at = load i8, ptr %i.w, align 8
  %i.au = and i8 %i.at, -3
  store i8 %i.au, ptr %i.w, align 8
  %i.av = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.t
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.h
  %i.ax = load i64, ptr %i.t, align 8, !tbaa !13
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.bd = sub i64 4611686018427387903, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.ba
  br i1 %i.be, label %bb.i, label %_ZN4Json18StyledStreamWriter6indentEv.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

_ZN4Json18StyledStreamWriter6indentEv.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef %i.bh, i64 noundef %i.ba) ; 0 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37
  %i.bm = icmp eq ptr %i.bj, %i.bl
  %.fr = freeze i1 %i.bm
  br i1 %.fr, label %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us, label %_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader

_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit
  %5 = add i32 %i.e, -1
  %wide.trip.count91 = zext i32 %5 to i64
  br label %_ZN4Json18StyledStreamWriter6indentEv.exit.split

_ZN4Json18StyledStreamWriter6indentEv.exit.split.us: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit, %bb.n
  %.023.us = phi i32 [ %i.ce, %bb.n ], [ 0, %_ZN4Json18StyledStreamWriter6indentEv.exit ] ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.023.us) ; 4 uses
  call void @_ZN4Json18StyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bn)
  %i.bo = load i8, ptr %i.w, align 8              ; 2 uses
  %i.bp = and i8 %i.bo, 2
  %.not32.us = icmp eq i8 %i.bp, 0
  br i1 %.not32.us, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !13
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !26
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !61
  %.not.i.i.us = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us

bb.l:                                             ; preds = %bb.j
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i8 noundef signext 10) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us: ; preds = %bb.l, %bb.k
  %.0.i.i.us = phi ptr [ %i.bx, %bb.k ], [ %i.bq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.ca = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.us, ptr noundef %i.bz, i64 noundef %i.ca) ; 0 uses
  %.pre98.a = load i8, ptr %i.w, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us, %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us
  %i.cc = phi i8 [ %.pre98.a, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.us ], [ %i.bo, %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us ]
  %i.cd = or i8 %i.cc, 2
  store i8 %i.cd, ptr %i.w, align 8
  call void @_ZN4Json18StyledStreamWriter10writeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bn)
  %storemerge.in.us = load i8, ptr %i.w, align 8
  %storemerge.us = and i8 %storemerge.in.us, -3
  store i8 %storemerge.us, ptr %i.w, align 8
  %i.ce = add i32 %.023.us, 1                     ; 2 uses
  %i.cf = icmp eq i32 %i.ce, %i.e
  br i1 %i.cf, label %._crit_edge.i.i61, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.18, i64 noundef 1) ; 0 uses
  call void @_ZN4Json18StyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bn)
  br label %_ZN4Json18StyledStreamWriter6indentEv.exit.split.us

_ZN4Json18StyledStreamWriter6indentEv.exit.split: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader, %bb.s
  %indvars.iv88 = phi i64 [ 0, %_ZN4Json18StyledStreamWriter6indentEv.exit.split.preheader ], [ %indvars.iv.next89, %bb.s ] ; 4 uses
  %i.ci = trunc nuw i64 %indvars.iv88 to i32
  %i.cj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.ci) ; 3 uses
  call void @_ZN4Json18StyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cj)
  %i.ck = load ptr, ptr %0, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv88 ; 2 uses
  %i.cm = load i8, ptr %i.w, align 8
  %i.cn = and i8 %i.cm, 2
  %.not.i53 = icmp eq i8 %i.cn, 0
  br i1 %.not.i53, label %bb.o, label %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57

bb.o:                                             ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split
  %i.co = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !13
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !61
  %.not.i.i.i54 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i54, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55

bb.q:                                             ; preds = %bb.o
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i8 noundef signext 10) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55: ; preds = %bb.q, %bb.p
  %.0.i.i.i56 = phi ptr [ %i.cv, %bb.p ], [ %i.co, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.cy = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i56, ptr noundef %i.cx, i64 noundef %i.cy) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57

_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57: ; preds = %_ZN4Json18StyledStreamWriter6indentEv.exit.split, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i55
  %i.da = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.db = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !23
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef %i.db, i64 noundef %i.dd) ; 0 uses
  %storemerge.in = load i8, ptr %i.w, align 8
  %storemerge = and i8 %storemerge.in, -3
  store i8 %storemerge, ptr %i.w, align 8
  %exitcond92 = icmp eq i64 %indvars.iv88, %wide.trip.count91
  br i1 %exitcond92, label %._crit_edge.i.i61, label %bb.s

bb.r:                                             ; preds = %.noexc48, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i, %bb.g, %bb.f
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.t
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.r
  %i.di = load i64, ptr %i.t, align 8, !tbaa !13
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aa

bb.s:                                             ; preds = %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %i.dk = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.18, i64 noundef 1) ; 0 uses
  call void @_ZN4Json18StyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cj)
  br label %_ZN4Json18StyledStreamWriter6indentEv.exit.split

._crit_edge.i.i61:                                ; preds = %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57, %bb.m
  %.us-phi = phi ptr [ %i.bn, %bb.m ], [ %i.cj, %_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit57 ]
  call void @_ZN4Json18StyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(40) %.us-phi)
  %i.dm = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.dn = load i64, ptr %i.az, align 8, !tbaa !23
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.do, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.dp, ptr %4, align 8, !tbaa !18
  store i8 93, ptr %i.dp, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.dq, align 8, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.dr, align 1, !tbaa !13
  %i.ds = load i8, ptr %i.w, align 8
  %i.dt = and i8 %i.ds, 2
  %.not.i65 = icmp eq i8 %i.dt, 0
  br i1 %.not.i65, label %bb.t, label %.noexc71

bb.t:                                             ; preds = %._crit_edge.i.i61
  %i.du = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !13
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !26
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !61
  %.not.i.i.i66 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i66, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67 unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.du, i8 noundef signext 10)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67 unwind label %bb.x ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67: ; preds = %bb.v, %bb.u
  %.0.i.i.i68 = phi ptr [ %i.eb, %bb.u ], [ %i.du, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ed = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.ee = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i68, ptr noundef %i.ed, i64 noundef %i.ee)
          to label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge unwind label %bb.x ; 0 uses

_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge: ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67
  %.pre99 = load ptr, ptr %4, align 8, !tbaa !22
  %.pre100 = load i64, ptr %i.dq, align 8, !tbaa !23
  br label %.noexc71

.noexc71:                                         ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge, %._crit_edge.i.i61
  %i.eg = phi i64 [ %.pre100, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge ], [ 1, %._crit_edge.i.i61 ]
  %i.eh = phi ptr [ %.pre99, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67..noexc71_crit_edge ], [ %i.dp, %._crit_edge.i.i61 ]
  %i.ei = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.eh, i64 noundef %i.eg)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %.noexc71
  %i.ek = load i8, ptr %i.w, align 8
  %i.el = and i8 %i.ek, -3
  store i8 %i.el, ptr %i.w, align 8
  %i.em = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dp
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.w
  %i.eo = load i64, ptr %i.dp, align 8, !tbaa !13
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.z

bb.x:                                             ; preds = %.noexc71, %_ZN4Json18StyledStreamWriter11writeIndentEv.exit.i67, %bb.v, %bb.u
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dp
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.x
  %i.et = load i64, ptr %i.dp, align 8, !tbaa !13
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.d
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.13, i64 noundef 2) ; 0 uses
  %wide.trip.count = zext i32 %i.e to i64
  %.pre = load ptr, ptr %i.ev, align 8, !tbaa !52
  %.pre93.a = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre93.a, i64 8
  %.pre95 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  %.pre94 = load ptr, ptr %.pre93.a, align 8, !tbaa !22
  %i.ey = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre, ptr noundef %.pre94, i64 noundef %.pre95) ; 0 uses
  %exitcond.peel.not = icmp eq i32 %i.e, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.loopexit:                                        ; preds = %.peel.next, %bb.y
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.fa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %bb.z

.peel.next:                                       ; preds = %bb.y, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.y ] ; 2 uses
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  %i.fd = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.fe = load ptr, ptr %0, align 8, !tbaa !39
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %indvars.iv ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !23
  %i.fj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef %i.fg, i64 noundef %i.fi) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !134

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn36.pn = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json18StyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !13
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext 10) ; 0 uses
  br label %_ZN4Json18StyledStreamWriter11writeIndentEv.exit

_ZN4Json18StyledStreamWriter11writeIndentEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef %i.p, i64 noundef %i.r) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Json18StyledStreamWriter11writeIndentEv.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = load ptr, ptr %1, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.v, i64 noundef %i.x) ; 0 uses
  %i.z = load i8, ptr %i.b, align 8
  %i.aa = and i8 %i.z, -3
  store i8 %i.aa, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json18StyledStreamWriter6indentEv(ptr noundef nonnull align 8 dereferenceable(105) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
begin_hunk_2_@_ZN4Json23BuiltStyledStreamWriter15writeArrayValueERKNS_5ValueE:bb.a
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.f, align 8, !tbaa !13
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.aa

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i32, ptr %i.r, align 8, !tbaa !68
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_ZN4Json23BuiltStyledStreamWriter16isMultilineArrayERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.u, label %.critedge, label %bb.v

.critedge:                                        ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !18
  store i8 91, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.x, align 1, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 11 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 2
  %.not.i = icmp ne i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !13
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i
  %.pre93.a = load ptr, ptr %3, align 8, !tbaa !22
  %.pre94.a = load i64, ptr %i.w, align 8, !tbaa !23
  br label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i

_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge, %.critedge
  %i.at = phi i64 [ %.pre94.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge ], [ 1, %.critedge ]
  %i.au = phi ptr [ %.pre93.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i_crit_edge ], [ %i.v, %.critedge ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.au, i64 noundef %i.at)
          to label %bb.i unwind label %bb.p       ; 0 uses

bb.i:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i
  %i.ay = load i8, ptr %i.y, align 8
  %i.az = and i8 %i.ay, -3
  store i8 %i.az, ptr %i.y, align 8
  %i.ba = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.v
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.i
  %i.bc = load i64, ptr %i.v, align 8, !tbaa !13
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.be = load i64, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bh = sub i64 4611686018427387903, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.be
  br i1 %i.bi, label %bb.j, label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

_ZN4Json23BuiltStyledStreamWriter6indentEv.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef %i.bl, i64 noundef %i.be) ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37
  %i.br = icmp eq ptr %i.bo, %i.bq
  %.fr = freeze i1 %i.br
  br i1 %.fr, label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us, label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split

_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us: ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit, %bb.o
  %.023.us = phi i32 [ %i.cn, %bb.o ], [ 0, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit ] ; 2 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.023.us) ; 4 uses
  call void @_ZN4Json23BuiltStyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bs)
  %i.bt = load i8, ptr %i.y, align 8              ; 3 uses
  %i.bu = and i8 %i.bt, 2
  %.not32.us = icmp eq i8 %i.bu, 0
  br i1 %.not32.us, label %bb.k, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us

bb.k:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us
  %i.bv = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.av, align 8, !tbaa !63 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !13
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !61
  %.not.i.i.us = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us

bb.n:                                             ; preds = %bb.l
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us: ; preds = %bb.n, %bb.m
  %.0.i.i.us = phi ptr [ %i.ce, %bb.m ], [ %i.bx, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cg = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.ch = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.us, ptr noundef %i.cg, i64 noundef %i.ch) ; 0 uses
  %.pre95.a = load i8, ptr %i.y, align 8
  br label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us

_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us, %bb.k, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us
  %i.cj = phi i8 [ %.pre95.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.us ], [ %i.bt, %bb.k ], [ %i.bt, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us ]
  %i.ck = or i8 %i.cj, 2
  store i8 %i.ck, ptr %i.y, align 8
  call void @_ZN4Json23BuiltStyledStreamWriter10writeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bs)
  %i.cl = load i8, ptr %i.y, align 8
  %i.cm = and i8 %i.cl, -3
  store i8 %i.cm, ptr %i.y, align 8
  %i.cn = add i32 %.023.us, 1                     ; 2 uses
  %i.co = icmp eq i32 %i.cn, %i.d
  br i1 %i.co, label %._crit_edge.i.i56, label %bb.o

bb.o:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !63
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.18, i64 noundef 1) ; 0 uses
  call void @_ZN4Json23BuiltStyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bs)
  br label %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split.us

_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split: ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit
  %i.cr = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 0) ; 3 uses
  call void @_ZN4Json23BuiltStyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cr)
  %i.cs = load ptr, ptr %i.bn, align 8, !tbaa !39
  call void @_ZN4Json23BuiltStyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
  %i.ct = icmp eq i32 %i.d, 1
  br i1 %i.ct, label %._crit_edge.i.i56, label %.lr.ph

bb.p:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i, %bb.h, %bb.g
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.v
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.cx = load i64, ptr %i.v, align 8, !tbaa !13
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ab

.lr.ph:                                           ; preds = %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split, %.lr.ph
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph ], [ 1, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split ] ; 3 uses
  %i.cz = phi ptr [ %i.dd, %.lr.ph ], [ %i.cr, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split ]
  %i.da = load ptr, ptr %i.av, align 8, !tbaa !63
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.18, i64 noundef 1) ; 0 uses
  call void @_ZN4Json23BuiltStyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cz)
  %i.dc = trunc nuw i64 %indvars.iv86 to i32
  %i.dd = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.dc) ; 3 uses
  call void @_ZN4Json23BuiltStyledStreamWriter23writeCommentBeforeValueERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.dd)
  %i.de = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %indvars.iv86
  call void @_ZN4Json23BuiltStyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next87 to i32
  %exitcond89 = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond89, label %._crit_edge.i.i56, label %.lr.ph

._crit_edge.i.i56:                                ; preds = %.lr.ph, %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split
  %.us-phi = phi ptr [ %i.bs, %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.us ], [ %i.cr, %_ZN4Json23BuiltStyledStreamWriter6indentEv.exit.split ], [ %i.dd, %.lr.ph ]
  call void @_ZN4Json23BuiltStyledStreamWriter32writeCommentAfterValueOnSameLineERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(40) %.us-phi)
  %i.dg = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.dh = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.di, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.dj, ptr %4, align 8, !tbaa !18
  store i8 93, ptr %i.dj, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.dk, align 8, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.dl, align 1, !tbaa !13
  %i.dm = load i8, ptr %i.y, align 8
  %i.dn = and i8 %i.dm, 2
  %.not.i60 = icmp ne i8 %i.dn, 0
  %i.do = load i64, ptr %i.ab, align 8
  %i.dp = icmp eq i64 %i.do, 0
  %or.cond.i61 = select i1 %.not.i60, i1 true, i1 %i.dp
  br i1 %or.cond.i61, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i56
  %i.dq = load ptr, ptr %i.av, align 8, !tbaa !63 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !13
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !26
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !61
  %.not.i.i.i62 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i62, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63 unwind label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63: ; preds = %bb.s, %bb.r
  %.0.i.i.i64 = phi ptr [ %i.dx, %bb.r ], [ %i.dq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dz = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.ea = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i64, ptr noundef %i.dz, i64 noundef %i.ea)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63
  %.pre96.a = load ptr, ptr %4, align 8, !tbaa !22
  %.pre97 = load i64, ptr %i.dk, align 8, !tbaa !23
  br label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65

_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge, %._crit_edge.i.i56
  %i.ec = phi i64 [ %.pre97, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge ], [ 1, %._crit_edge.i.i56 ]
  %i.ed = phi ptr [ %.pre96.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63._ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65_crit_edge ], [ %i.dj, %._crit_edge.i.i56 ]
  %i.ee = load ptr, ptr %i.av, align 8, !tbaa !63
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ed, i64 noundef %i.ec)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65
  %i.eg = load i8, ptr %i.y, align 8
  %i.eh = and i8 %i.eg, -3
  store i8 %i.eh, ptr %i.y, align 8
  %i.ei = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.dj
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.t
  %i.ek = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.aa

bb.u:                                             ; preds = %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit.i65, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i63, %bb.s, %bb.r
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dj
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.u
  %i.ep = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ab

bb.v:                                             ; preds = %bb.e
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !23
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.ey = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = zext i32 %i.d to i64
  %.pre = load ptr, ptr %i.er, align 8, !tbaa !63
  %.pre90.a = load ptr, ptr %i.ez, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre90.a, i64 8
  %.pre92 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  %.pre91 = load ptr, ptr %.pre90.a, align 8, !tbaa !22
  %i.fa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre, ptr noundef %.pre91, i64 noundef %.pre92) ; 0 uses
  %exitcond.peel.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.loopexit:                                        ; preds = %.peel.next, %bb.x
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !23
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.z, label %bb.y

.peel.next:                                       ; preds = %bb.x, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.x ] ; 2 uses
  %i.fd = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.fe = load i64, ptr %i.eu, align 8, !tbaa !23
  %i.ff = icmp eq i64 %i.fe, 0                    ; 2 uses
  %i.fg = select i1 %i.ff, ptr @.str.18, ptr @.str.14
  %i.fh = select i1 %i.ff, i64 1, i64 2
  %i.fi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull %i.fg, i64 noundef %i.fh) ; 0 uses
  %i.fj = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.fk = load ptr, ptr %i.ez, align 8, !tbaa !39
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %indvars.iv ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !23
  %i.fp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef %i.fm, i64 noundef %i.fo) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !147

bb.y:                                             ; preds = %.loopexit
  %i.fq = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.fr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit
  %i.fs = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.ft = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn36.pn = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json23BuiltStyledStreamWriter15writeWithIndentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(228) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp ne i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZN4Json23BuiltStyledStreamWriter11writeIndentEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !13
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
end_hunk_2
