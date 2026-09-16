Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/string_util?download=true
inline.NumInlined: 530
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb18EscapeOptionStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ao = icmp ugt i64 %i.j, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit19

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc18 unwind label %bb.g

.noexc18:                                         ; preds = %bb.i
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i15, %.noexc18
  %i.ap = phi ptr [ %.pre.i.i16, %.noexc18 ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i15 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.i
  store i8 %i.h, ptr %i.aq, align 1, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit13
  %.sink = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit19 ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit13 ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !16
  %i.ar = load ptr, ptr %0, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink
  store i8 0, ptr %i.as, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.020.023, i64 1 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.f
  br i1 %i.au, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb20UnescapeOptionStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = icmp samesign eq i64 %i.e, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.019 = phi i1 [ %.2, %bb.i ], [ false, %bb.a ]
  %.sroa.015.018 = phi ptr [ %i.am, %bb.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = load i8, ptr %.sroa.015.018, align 1, !tbaa !17 ; 4 uses
  br i1 %.019, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.h, label %_ZN7rocksdb12UnescapeCharEc.exit [
    i8 114, label %bb.c
    i8 110, label %.fold.split.i
  ]

.fold.split.i:                                    ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.fold.split.i, %bb.b
  %.028.i.i.i.ph.i = phi ptr [ @_ZZN7rocksdb12UnescapeCharEcE11convert_map, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb12UnescapeCharEcE11convert_map, i64 2), %.fold.split.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.ph.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !45
  br label %_ZN7rocksdb12UnescapeCharEc.exit

_ZN7rocksdb12UnescapeCharEc.exit:                 ; preds = %bb.c, %bb.b
  %.0.i = phi i8 [ %i.j, %bb.c ], [ %i.h, %bb.b ]
  %i.k = load i64, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN7rocksdb12UnescapeCharEc.exit
  %i.o = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb12UnescapeCharEc.exit
  %i.p = load i64, ptr %i.a, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.s = phi ptr [ %.pre.i.i, %.noexc ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i8 %.0.i, ptr %i.t, align 1, !tbaa !17
  br label %.sink.split

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %.lr.ph
  %i.z = icmp eq i8 %i.h, 92
  br i1 %i.z, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12: ; preds = %bb.g
  %i.ae = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.g
  %i.af = load i64, ptr %i.a, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i10: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12 ]
  %i.ah = icmp ugt i64 %i.ab, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc13 unwind label %bb.e

.noexc13:                                         ; preds = %bb.h
  %.pre.i.i11 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i10, %.noexc13
  %i.ai = phi ptr [ %.pre.i.i11, %.noexc13 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i10 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store i8 %i.h, ptr %i.aj, align 1, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14
  %.sink = phi i64 [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit14 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !16
  %i.ak = load ptr, ptr %0, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink
  store i8 0, ptr %i.al, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f
  %.2 = phi i1 [ true, %bb.f ], [ false, %.sink.split ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.018, i64 1 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.f
  br i1 %i.an, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb4trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %.not19.not = icmp eq i64 %i.b, 0
  br i1 %.not19.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !16
  store i8 0, ptr %i.d, align 8, !tbaa !17
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01220 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.c ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01220
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = sext i8 %i.g to i32
  %i.i = tail call i32 @isspace(i32 noundef %i.h) #31
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01220 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.01220, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !52

bb.d:                                             ; preds = %.preheader, %bb.d
  %.0 = phi i64 [ %i.k, %bb.d ], [ %i.b, %.preheader ] ; 2 uses
  %i.k = add i64 %.0, -1                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = sext i8 %i.m to i32
  %i.o = tail call i32 @isspace(i32 noundef %i.n) #31
  %.not15 = icmp eq i32 %i.o, 0
  br i1 %.not15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.d, !llvm.loop !53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = sub i64 %.0, %.01220
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !13, !alias.scope !56
  %i.r = sub nuw i64 %i.b, %.01220
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.r) ; 8 uses
  %i.s = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.t = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.t, label %.noexc10.i.i, label %bb.f

.noexc10.i.i:                                     ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !34

.noexc11.i.i:                                     ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #29 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !33, !alias.scope !56
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !17, !alias.scope !56
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.y, ptr %i.x, align 1, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %2, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i.i, ptr %i.z, align 8, !tbaa !16, !alias.scope !56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.i.i.i
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !33
  %i.h = load ptr, ptr %0, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr %i.g, i64 %i.b)
  %.not.i = icmp eq i32 %bcmp, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.e = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !33
  %i.g = load ptr, ptr %0, align 8, !tbaa !33
  %bcmp = tail call i32 @bcmp(ptr %i.g, ptr %i.f, i64 %spec.select.i.i)
  %.not.i = icmp eq i32 %bcmp, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.a
  %i.h = icmp ule i64 %i.b, %i.d
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i
  %.0.i = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb12ParseBooleanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread16 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !33
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1702195828
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %bcmp.i7 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.24, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i7, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10: ; preds = %bb.a
  %.pre17 = load ptr, ptr %1, align 8, !tbaa !33
  %bcmp.i9 = tail call i32 @bcmp(ptr %.pre17, ptr nonnull @.str.25, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i9, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  %bcmp.i11 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.26, i64 %i.b)
  %i.j = icmp eq i32 %bcmp.i11, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread16: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread16
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #28
  unreachable

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread16
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #27
  resume { ptr, i32 } %i.l

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  %.0 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10 ]
  ret i1 %.0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZN7rocksdb10ParseUint8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN7rocksdb11ParseUint64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.b = icmp ult i64 %i.a, 256
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i64 %i.a to i8
  ret i8 %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
end_hunk_0
