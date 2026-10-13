Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Json6Reader10addCommentEPKcS2_NS_16CommentPlacementE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !50
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.w
  br i1 %i.aa, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load ptr, ptr %4, align 8, !tbaa !78
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef %i.ac, i64 noundef %i.w)
          to label %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit unwind label %bb.f ; 0 uses

_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i
  %i.ae = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !50
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4JsonL12normalizeEOLB5cxx11EPKcS1_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !50
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %.preheader unwind label %bb.d

.preheader:                                       ; preds = %bb.a
  %.not27 = icmp eq ptr %1, %2
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.028 = phi ptr [ %.2, %bb.j ], [ %1, %.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 5 uses
  %i.g = load i8, ptr %.028, align 1, !tbaa !50   ; 2 uses
  %i.h = icmp eq i8 %i.g, 13
  br i1 %i.h, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %.not19 = icmp eq ptr %i.f, %2
  br i1 %.not19, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.f, align 1, !tbaa !50
  %i.j = icmp eq i8 %i.i, 10
  %i.k = getelementptr inbounds nuw i8, ptr %.028, i64 2
  %spec.select = select i1 %i.j, ptr %i.k, ptr %i.f
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.f, %bb.b ], [ %spec.select, %bb.c ]
  %i.m = load i64, ptr %i.b, align 8, !tbaa !49   ; 4 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e
  %i.q = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.u = phi ptr [ %.pre.i.i, %.noexc ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 10, ptr %i.v, align 1, !tbaa !50
  br label %bb.j

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.x = load i64, ptr %i.b, align 8, !tbaa !49   ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24: ; preds = %bb.h
  %i.ab = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.h
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i24 ]
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit26

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc25 unwind label %bb.g

.noexc25:                                         ; preds = %bb.i
  %.pre.i.i23 = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, %.noexc25
  %i.af = phi ptr [ %.pre.i.i23, %.noexc25 ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 %i.g, ptr %i.ag, align 1, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.sink = phi i64 [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit26 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  %.2 = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit26 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !49
  %i.ah = load ptr, ptr %0, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink
  store i8 0, ptr %i.ai, align 1, !tbaa !50
  %.not = icmp eq ptr %.2, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !334

._crit_edge:                                      ; preds = %bb.j, %.preheader
  ret void

bb.k:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.l, %bb.d ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.al = load i64, ptr %i.a, align 8, !tbaa !50
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader12decodeStringERNS0_5TokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = add i64 %i.i, -2
  %i.l = sub i64 %i.k, %i.j
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -1 ; 4 uses
  %.not130 = icmp eq ptr %i.n, %i.p
  br i1 %.not130, label %.critedge53.thread117, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 18 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge53
  %i.u = phi ptr [ %i.n, %.lr.ph ], [ %i.gc, %.critedge53 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 4 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.w, label %bb.ae [
    i8 34, label %.critedge53.thread117
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq ptr %i.v, %i.p
  br i1 %i.x, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 31, ptr %i.b, align 8, !tbaa !113
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %3, align 8, !tbaa !78
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !113 ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.z, ptr noundef nonnull align 1 dereferenceable(31) @.str.13, i64 31, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = load ptr, ptr %3, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.ae = invoke noundef zeroext i1 @_ZN4Json6Reader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.v)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.y
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !50
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %.critedge53.thread117

bb.e:                                             ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.f:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.f
  %i.an = load i64, ptr %i.y, align 8, !tbaa !50
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.e
  %.pn49 = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.ak, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ag

bb.g:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 10 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !117
  %i.aq = load i8, ptr %i.v, align 1, !tbaa !50
  switch i8 %i.aq, label %.noexc.i101 [
    i8 34, label %bb.h
    i8 47, label %bb.j
    i8 92, label %bb.l
    i8 98, label %bb.n
    i8 102, label %bb.p
    i8 110, label %bb.r
    i8 114, label %bb.t
    i8 116, label %bb.v
    i8 117, label %bb.x
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.t
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.h
  %i.av = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.i
  %i.az = phi ptr [ %.pre.i.i, %bb.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 34, ptr %i.ba, align 1, !tbaa !50
  store i64 %i.as, ptr %i.r, align 8, !tbaa !49
  %i.bb = load ptr, ptr %2, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !50
  br label %.critedge53

bb.j:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.t
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60: ; preds = %bb.j
  %i.bh = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.j
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60 ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit61

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i59 = load ptr, ptr %2, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58, %bb.k
  %i.bl = phi ptr [ %.pre.i.i59, %bb.k ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 47, ptr %i.bm, align 1, !tbaa !50
  store i64 %i.be, ptr %i.r, align 8, !tbaa !49
  %i.bn = load ptr, ptr %2, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !50
  br label %.critedge53

bb.l:                                             ; preds = %bb.g
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.t
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65: ; preds = %bb.l
  %i.bt = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.l
  %i.bu = load i64, ptr %i.t, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65
  %i.bv = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65 ]
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit66

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bp, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i64 = load ptr, ptr %2, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63, %bb.m
  %i.bx = phi ptr [ %.pre.i.i64, %bb.m ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i8 92, ptr %i.by, align 1, !tbaa !50
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !49
  %i.bz = load ptr, ptr %2, align 8, !tbaa !78
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  store i8 0, ptr %i.ca, align 1, !tbaa !50
  br label %.critedge53

bb.n:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.t
end_hunk_0
begin_hunk_1_@_ZN4Json9OurReader17readCStyleCommentEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 4 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !159 ; 3 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %bb.a, %_ZN4Json9OurReader11getNextCharEv.exit.backedge
  %i.d = phi ptr [ %i.e, %_ZN4Json9OurReader11getNextCharEv.exit.backedge ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !159
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50
  %i.g = icmp eq i8 %i.f, 42
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.h = load i8, ptr %i.e, align 1, !tbaa !50
  %i.i = icmp eq i8 %i.h, 47
  %.not = icmp eq ptr %i.e, %i.c
  %or.cond = select i1 %i.i, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit.backedge

bb.c:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.not.old = icmp eq ptr %i.e, %i.c
  br i1 %.not.old, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit.backedge

_ZN4Json9OurReader11getNextCharEv.exit.backedge:  ; preds = %bb.c, %bb.b
  br label %_ZN4Json9OurReader11getNextCharEv.exit

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi ptr [ %.promoted, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZN4Json9OurReader11getNextCharEv.exit3, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.l, ptr %i.a, align 8, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !50
  %i.n = icmp eq i8 %i.m, 47
  br label %_ZN4Json9OurReader11getNextCharEv.exit3

_ZN4Json9OurReader11getNextCharEv.exit3:          ; preds = %.thread, %bb.d
  %.0.i2 = phi i1 [ %i.n, %bb.d ], [ false, %.thread ]
  ret i1 %.0.i2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader19readCppStyleCommentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %.not18 = icmp eq ptr %.promoted, %i.c
  br i1 %.not18, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit

bb.b:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.not = icmp eq ptr %i.e, %i.c
  br i1 %.not, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !159
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50
  switch i8 %i.f, label %bb.b [
    i8 10, label %.thread
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.not5 = icmp eq ptr %i.e, %i.c
  br i1 %.not5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.e, align 1, !tbaa !50
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %_ZN4Json9OurReader11getNextCharEv.exit7, label %.thread

_ZN4Json9OurReader11getNextCharEv.exit7:          ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.i, ptr %i.a, align 8, !tbaa !159
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZN4Json9OurReader11getNextCharEv.exit, %bb.a, %bb.c, %bb.d, %_ZN4Json9OurReader11getNextCharEv.exit7
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json9OurReader10addCommentEPKcS2_NS_16CommentPlacementE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call fastcc void @_ZN4JsonL12normalizeEOLB5cxx11EPKcS1_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %1, ptr noundef %2)
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.d = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #43
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store i64 3, ptr %i.i, align 8
  %.ptr13.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr13.i.i, i8 0, i64 24, i1 false), !tbaa !110
  store ptr %.ptr13.i.i, ptr %i.g, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.j = phi ptr [ %.ptr13.i.i, %.noexc ], [ %i.h, %bb.b ]
  %.not14.i.i = icmp eq i64 %i.f, 0
  br i1 %.not14.i.i, label %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.f, -1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !50
  %i.n = icmp eq i8 %i.m, 10
  %spec.select.i.i = select i1 %i.n, i64 %i.k, i64 %i.f
  br label %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i

_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN4Json5Value11CommentInfo10setCommentEPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef readonly %i.d, i64 noundef %.0.i.i)
          to label %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h, %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !50
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.w
  br i1 %i.aa, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load ptr, ptr %4, align 8, !tbaa !78
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef %i.ac, i64 noundef %i.w)
          to label %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit unwind label %bb.f ; 0 uses

_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i
  %i.ae = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !50
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader12decodeStringERNS0_5TokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = add i64 %i.i, -2
  %i.l = sub i64 %i.k, %i.j
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !172
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -1 ; 4 uses
  %.not130 = icmp eq ptr %i.n, %i.p
  br i1 %.not130, label %.critedge53.thread117, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 18 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge53
  %i.u = phi ptr [ %i.n, %.lr.ph ], [ %i.gc, %.critedge53 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 4 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.w, label %bb.ae [
    i8 34, label %.critedge53.thread117
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq ptr %i.v, %i.p
  br i1 %i.x, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 31, ptr %i.b, align 8, !tbaa !113
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %3, align 8, !tbaa !78
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !113 ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.z, ptr noundef nonnull align 1 dereferenceable(31) @.str.13, i64 31, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = load ptr, ptr %3, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.ae = invoke noundef zeroext i1 @_ZN4Json9OurReader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.v)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.y
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !50
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %.critedge53.thread117

bb.e:                                             ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.f:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.f
  %i.an = load i64, ptr %i.y, align 8, !tbaa !50
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.e
  %.pn49 = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.ak, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ag

bb.g:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 10 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !117
  %i.aq = load i8, ptr %i.v, align 1, !tbaa !50
  switch i8 %i.aq, label %.noexc.i101 [
    i8 34, label %bb.h
    i8 47, label %bb.j
    i8 92, label %bb.l
    i8 98, label %bb.n
    i8 102, label %bb.p
    i8 110, label %bb.r
    i8 114, label %bb.t
    i8 116, label %bb.v
    i8 117, label %bb.x
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.t
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.h
  %i.av = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.i
  %i.az = phi ptr [ %.pre.i.i, %bb.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 34, ptr %i.ba, align 1, !tbaa !50
  store i64 %i.as, ptr %i.r, align 8, !tbaa !49
  %i.bb = load ptr, ptr %2, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !50
  br label %.critedge53

bb.j:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.t
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60: ; preds = %bb.j
  %i.bh = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.j
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60 ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit61

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i59 = load ptr, ptr %2, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58, %bb.k
  %i.bl = phi ptr [ %.pre.i.i59, %bb.k ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 47, ptr %i.bm, align 1, !tbaa !50
  store i64 %i.be, ptr %i.r, align 8, !tbaa !49
  %i.bn = load ptr, ptr %2, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !50
  br label %.critedge53

bb.l:                                             ; preds = %bb.g
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.t
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65: ; preds = %bb.l
  %i.bt = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.l
  %i.bu = load i64, ptr %i.t, align 8, !tbaa !50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65
  %i.bv = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65 ]
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit66

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bp, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i64 = load ptr, ptr %2, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63, %bb.m
  %i.bx = phi ptr [ %.pre.i.i64, %bb.m ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i8 92, ptr %i.by, align 1, !tbaa !50
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !49
  %i.bz = load ptr, ptr %2, align 8, !tbaa !78
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  store i8 0, ptr %i.ca, align 1, !tbaa !50
  br label %.critedge53

bb.n:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !49  ; 4 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.t
end_hunk_1
