inline.NumInlined: 794
inline.NumDeleted: 326
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10duckdb_re23RE29QuoteMetaB5cxx11ERKNS_11StringPieceE:bb.a
  %i.f = load i64, ptr %i.c, align 8, !tbaa !28
  %.not54 = icmp eq i64 %i.f, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.053 = phi i64 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 0, %.preheader ] ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.053
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23    ; 13 uses
  %i.k = icmp slt i8 %i.j, 97
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp samesign ugt i8 %i.j, 122
  br i1 %i.l, label %.thread52, label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %i.m = icmp slt i8 %i.j, 65
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i8 %i.j, 91
  %.not = icmp eq i8 %i.j, 95
  %or.cond = or i1 %i.n, %.not
  br i1 %or.cond, label %bb.m, label %.thread52

bb.f:                                             ; preds = %bb.d
  %i.o = icmp slt i8 %i.j, 48
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp samesign ugt i8 %i.j, 57
  br i1 %i.p, label %.thread52, label %bb.m

bb.h:                                             ; preds = %bb.f
  %.not28 = icmp sgt i8 %i.j, -1
  br i1 %.not28, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i8 %i.j, 0
  br i1 %i.q, label %bb.j, label %.thread52

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !21
  %i.s = and i64 %i.r, -4
  %i.t = icmp eq i64 %i.s, 4611686018427387900
  br i1 %i.t, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.j
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

.thread52:                                        ; preds = %bb.e, %bb.c, %bb.g, %bb.i
  %i.v = load i64, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.thread52
  %i.z = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.thread52
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc31
  %i.ad = phi ptr [ %.pre.i.i, %.noexc31 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i8 92, ptr %i.ae, align 1, !tbaa !23
  store i64 %i.w, ptr %i.b, align 8, !tbaa !21
  %i.af = load ptr, ptr %0, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 0, ptr %i.ag, align 1, !tbaa !23
  %.pre = load ptr, ptr %1, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %.053
  %.pre55 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.h, %bb.g, %bb.e, %bb.c
  %i.ah = phi i8 [ %.pre55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.e ], [ %i.j, %bb.c ]
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !21  ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35: ; preds = %bb.m
  %i.am = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %bb.m
  %i.an = load i64, ptr %i.a, align 8, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35 ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %bb.n
  %.pre.i.i34 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33, %.noexc36
  %i.aq = phi ptr [ %.pre.i.i34, %.noexc36 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 %i.ah, ptr %i.ar, align 1, !tbaa !23
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !21
  %i.as = load ptr, ptr %0, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37
  %i.au = add nuw i64 %.053, 1                    ; 2 uses
  %i.av = load i64, ptr %i.c, align 8, !tbaa !28
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !197

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.preheader
  ret void

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.a
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  tail call void @_ZdlPv(ptr noundef %i.ax) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE218PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.i) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.j = sext i32 %spec.select to i64             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !17, !alias.scope !198
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !29, !noalias !198 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !198
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !34, !noalias !198
  %i.m = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.m, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !29, !alias.scope !198
  %i.o = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !198
  store i64 %i.o, ptr %i.k, align 8, !tbaa !23, !alias.scope !198
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc10.i.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.l, align 1, !tbaa !23
  store i8 %i.q, ptr %i.p, align 1, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.l, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !198 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !21, !alias.scope !198
  %i.t = load ptr, ptr %4, align 8, !tbaa !29, !alias.scope !198
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !198
  %i.v = load ptr, ptr %1, align 8, !tbaa !29     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  %i.y = load ptr, ptr %4, align 8, !tbaa !29     ; 6 uses
  %i.z = icmp eq ptr %i.y, %i.k                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.z, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !21  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %.not21.i = icmp eq ptr %4, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !161

bb.f:                                             ; preds = %bb.e
  switch i64 %i.aa, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !23
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !21
  %i.af = load ptr, ptr %1, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.y, ptr %1, align 8, !tbaa !29
  %i.ai = load <2 x i64>, ptr %i.s, align 8, !tbaa !23
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !23
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !23
  store ptr %i.y, ptr %1, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x i64>, ptr %i.s, align 8, !tbaa !23
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %4, align 8, !tbaa !29
  store i64 %i.aj, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.am = phi ptr [ %i.v, %bb.i ], [ %i.k, %bb.j ], [ %i.y, %bb.e ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.s, align 8, !tbaa !21
  store i8 0, ptr %i.am, align 1, !tbaa !23
  %i.an = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.k
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !201
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !17, !alias.scope !201
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !29, !noalias !201 ; 2 uses
  %spec.select.i.i.i34 = call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.ap) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !201
  store i64 %spec.select.i.i.i34, ptr %i.a, align 8, !tbaa !34, !noalias !201
  %i.as = icmp ugt i64 %spec.select.i.i.i34, 15
  br i1 %i.as, label %.noexc10.i.i36, label %._crit_edge.i.i.i35

.noexc10.i.i36:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !29, !alias.scope !201
  %i.au = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !201
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !23, !alias.scope !201
  br label %._crit_edge.i.i.i35

._crit_edge.i.i.i35:                              ; preds = %.noexc10.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = phi ptr [ %i.at, %.noexc10.i.i36 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %spec.select.i.i.i34, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i35
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !23
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37

bb.l:                                             ; preds = %._crit_edge.i.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ar, i64 %spec.select.i.i.i34, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37: ; preds = %._crit_edge.i.i.i35, %bb.k, %bb.l
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !201 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !21, !alias.scope !201
  %i.az = load ptr, ptr %5, align 8, !tbaa !29, !alias.scope !201
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !201
  %i.bb = load ptr, ptr %2, align 8, !tbaa !29    ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  %i.be = load ptr, ptr %5, align 8, !tbaa !29    ; 6 uses
  %i.bf = icmp eq ptr %i.be, %i.aq                ; 2 uses
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37
  br i1 %i.bf, label %bb.m, label %.thread.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37
  br i1 %i.bf, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !21 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %.not21.i41 = icmp eq ptr %5, %2
  br i1 %.not21.i41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46, label %bb.n, !prof !161

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bg, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !23
  store i8 %i.bi, ptr %i.bb, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42: ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = load i64, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !21
  %i.bl = load ptr, ptr %2, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !23
  %.pre.i43 = load ptr, ptr %5, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

.thread.i45:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.be, ptr %2, align 8, !tbaa !29
  %i.bo = load <2 x i64>, ptr %i.ay, align 8, !tbaa !23
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !tbaa !23
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !23
  store ptr %i.be, ptr %2, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load <2 x i64>, ptr %i.ay, align 8, !tbaa !23
  store <2 x i64> %i.br, ptr %i.bq, align 8, !tbaa !23
  %.not.i40 = icmp eq ptr %i.bb, null
  br i1 %.not.i40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39
  store ptr %i.bb, ptr %5, align 8, !tbaa !29
  store i64 %i.bp, ptr %i.aq, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39, %.thread.i45
  store ptr %i.aq, ptr %5, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42, %bb.q, %bb.r
  %i.bs = phi ptr [ %i.bb, %bb.q ], [ %i.aq, %bb.r ], [ %i.be, %bb.m ], [ %.pre.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42 ]
  store i64 0, ptr %i.ay, align 8, !tbaa !21
  store i8 0, ptr %i.bs, align 1, !tbaa !23
  %i.bt = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aq
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46
  call void @_ZdlPv(ptr noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp slt i32 %i.bw, 0
  %i.by = icmp sgt i32 %spec.select, 0
  %or.cond71 = and i1 %i.bx, %i.by
  br i1 %or.cond71, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.bz = icmp eq i32 %spec.select, 1
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %8 = and i32 %spec.select, 2147483646
  %unroll_iter = zext nneg i32 %8 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.u ]
  %i.ca = load ptr, ptr %1, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23  ; 2 uses
  %i.cd = add i8 %i.cc, -97
  %or.cond = icmp ult i8 %i.cd, 26
  br i1 %or.cond, label %bb.s, label %.lr.ph.1

bb.s:                                             ; preds = %.lr.ph
  %narrow = add nsw i8 %i.cc, -32
  store i8 %narrow, ptr %i.cb, align 1, !tbaa !23
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.s, %.lr.ph
  %i.ce = load ptr, ptr %1, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !23  ; 2 uses
  %i.ci = add i8 %i.ch, -97
  %or.cond.1 = icmp ult i8 %i.ci, 26
  br i1 %or.cond.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.1
  %narrow.1 = add nsw i8 %i.ch, -32
  store i8 %narrow.1, ptr %i.cg, align 1, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !204

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.u
  %lcmp.mod.not = trunc i32 %spec.select to i1
  br i1 %lcmp.mod.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod104 = trunc i32 %spec.select to i1
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.cj = load ptr, ptr %1, align 8, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv.epil.init ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23  ; 2 uses
  %i.cm = add i8 %i.cl, -97
  %or.cond.epil = icmp ult i8 %i.cm, 26
  br i1 %or.cond.epil, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.lr.ph.epil.preheader
  %narrow.epil = add nsw i8 %i.cl, -32
  store i8 %narrow.epil, ptr %i.ck, align 1, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.v, %.lr.ph.epil.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cn, ptr %6, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.co, align 8, !tbaa !21
  store i8 0, ptr %i.cn, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cp, ptr %7, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !21
  store i8 0, ptr %i.cp, align 8, !tbaa !23
  %i.cr = sub nsw i32 %3, %spec.select            ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.loopexit
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.cu = invoke noundef zeroext i1 @_ZN10duckdb_re24Prog18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(432) %i.ct, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %i.cr)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.cu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cv = load i64, ptr %i.co, align 8, !tbaa !21 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !21
  %i.cy = sub i64 4611686018427387903, %i.cx
  %i.cz = icmp ult i64 %i.cy, %i.cv
  br i1 %i.cz, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.y
  %i.da = load ptr, ptr %6, align 8, !tbaa !29
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.da, i64 noundef %i.cv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.dc = load i64, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !21
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !29
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.ab, %bb.w
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cp
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.dk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.dm = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cn
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @_ZdlPv(ptr noundef %i.dm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.dj

bb.aa:                                            ; preds = %bb.x, %.loopexit
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !21
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN10duckdb_re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54 unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !21
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ds, ptr noundef nonnull @.str.8, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ac
  %i.du = load i64, ptr %i.do, align 8, !tbaa !21
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.du, ptr noundef nonnull @.str.8, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54 unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51, %bb.ab
  %.0 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51 ], [ true, %bb.ab ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.dw = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.cp
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54
  call void @_ZdlPv(ptr noundef %i.dw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.dy = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cn
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @_ZdlPv(ptr noundef %i.dy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN10duckdb_re24Prog18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN10duckdb_re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

declare noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN10duckdb_re24Prog13SearchOnePassERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN10duckdb_re24Prog14SearchBitStateERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchNFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE218CheckRewriteStringERKNS_11StringPieceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %.not3849.not = icmp eq i64 %i.c, 0
  br i1 %.not3849.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.02751 = phi i32 [ %.229.ph, %bb.h ], [ -1, %bb.a ] ; 3 uses
  %.03150 = phi ptr [ %i.q, %bb.h ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.03150, align 1, !tbaa !23
  %.not = icmp eq i8 %i.e, 92
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.03150, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
end_hunk_0
